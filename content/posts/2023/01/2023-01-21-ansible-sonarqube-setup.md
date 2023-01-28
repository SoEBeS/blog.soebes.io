---
title: "Full SonarQube installation via Ansible"
date: 2023-01-21T14:37:25
lastmod: 2023-01-21T14:37:25
categories:
  - programming
  - dependencies
  - DevOps
  - automation
  - ansible
---
I had the basic idea to install SonarQube on a server fully automatically. This is of course nothing new. I've set that
challenge for me to level up my Ansible skills a bit and also get more details into the setup for a later step while
going into a Kubernetes cluster setup.

In relation to that I've setting up a server with other components like [Gitea](https://gitea.io), Reposiory
Manager([artipie](https://github.com/artipie/artipie)), CI solution [Woodpecker](https://woodpecker-ci.org/). All these
components are behind a [Nginx-proxy](https://nginx.org/en/) to handle TLS etc.

So the first decision which has to be made was, using a plain machine setup or using containers (in particular Docker in
this case). I've decided to go the way with docker in the first place (later I will try the same
with [podman](https://podman.io) instead).

So to run [SonarQube](https://www.sonarsource.com/products/sonarqube/) within a container is more or less "easy" because
there [already exists a container image](https://hub.docker.com/_/sonarqube/). This means I have to configure that
container "only" correctly to get that working. Ok sounds promising.

The next thing which is given by the documentation of SonarQube is that it
is [recommended to run SonarQube](https://docs.sonarqube.org/latest/setup-and-upgrade/configure-and-operate-a-server/environment-variables/)
with an external database (for example [PostgreSQL](https://www.postgresql.org/), Microsoft SQL Server or Oracle)
instead of the builtin H2 (yes "only" a thing of correct configuring that). So we have the next participant within the
game: PostgreSQL.

The target machine was installed with Debian 11 (Bullseye) as the base OS. So based on
the [setup of Docker Community Edition](https://docs.docker.com/engine/install/debian/) (Docker CE) the following
components have to be removed (if existing) which I will express here as an Ansible script part:

```yaml
- name: Removed Old Installation (docker)
  become: yes
  ansible.builtin.package:
    name: "{{item}}"
    state: absent
  loop:
    - docker
    - docker-enginge
    - docker.io
    - containerd
    - runc
```
So now it's necessary to install the Docker CE edition onto that system, but before that, we have to install some
software which is required first:
```yaml
- name: "Docker CE Requirements (Tools)"
  become: yes
  ansible.builtin.package:
      name: "{{item}}"
      state: present
      update_cache: yes
  loop:
    - apt-transport-https
    - ca-certificates
    - curl
    - gnupg-agent
    - software-properties-common
    - lsb-release
```
So now it's the right time to start with the installation of Docker CE. I have to admit that this part contains
distro-dependent parts (I assume that it can be replaced with more general solutions; That's the reason for
those `FIXME`'s; Tipps are welcome.):
```yaml
# FIXME: Unfortunately the following is distro dependent!
- name: Docker CE - GPG key
  become: yes
  apt_key:
    url: https://download.docker.com/linux/debian/gpg
    state: present

# FIXME: Unfortunately the following is distro dependent!
- name: Docker CE - Added Docker Repository
  become: yes
  apt_repository:
    repo: deb https://download.docker.com/linux/debian bullseye stable
    state: present
- name: Docker CE - Installation
  become: yes
  ansible.builtin.package:
    name: "{{item}}"
    state: latest
    update_cache: yes
  loop:
    - docker-ce
    - docker-ce-cli
    - containerd.io
    - docker-compose-plugin
- name: make sure docker is active
  become: yes
  ansible.builtin.service:
    name: docker
    state: started
    enabled: yes
```
The basic software and machine setup contain the installation of [nginx](https://nginx.org/en/) as well as the setup
of [Letsencrypt](https://letsencrypt.org/) to support TLS for accessing this machine. Furthermore, a setup of a firewall
configuration (only open port 80/443) etc. which are not part of this post.

So now we can focus on installing SonarQube. The first thing we have to do is to get the correct container image and
afterwards we will configure them in the "hopefully" correct way.

If you assume that you have a running system which contains nginx as well as Letsencrypt and also assume that this
machine is installed on the dangerous internet we have to take some precautions.

The first important step during the installation of SonarQube / PostgreSQL is to stop the nginx proxy on that machine to
prevent access via http/https port during the installation because SonarQube has some defaults for username/passwords
which can easily be figured out. So that results in the first step for the Ansible playbook:

```yaml
  tasks:
    # Before we start to install SonarQube we deactivate
    # nginx to prevent any access to SonarQube from outside
    # during the installation.
    - name: Stop nginx for security reasons.
      ansible.builtin.service:
        name: nginx
        state: stopped
```
The next thing is to configure
the [sysctl configuration to run SonarQube](https://docs.sonarqube.org/latest/requirements/prerequisites-and-overview/#platform-notes).
Nicely Ansible has direct support for that:
```yaml
# This is needed to run SonarQube (more accurate ElasticSearch):
- name: "sysctl -w vm.max_map_count=262144"
  ansible.posix.sysctl:
    name: vm.max_map_count
    value: '262144'
    sysctl_set: yes
```
So another decision has to be made. Should SonarQube keep results during a machine/docker engine restart or upgrade
SonarQube? I would say it makes sense to keep the data. That means we have to configure persistent volumes for the
containers (Yes currently the user is `root` incl. the group; one of the things I don't like at the moment.).
```yaml
- name: Create volume directories.
  become: yes
  ansible.builtin.file:
    owner: root
    group: root
    name: "{{item}}"
    state: directory
  loop:
    - "{{ sonarqube_volumes_base }}"
    - "{{ sonarqube_volumes_base }}/conf"
    - "{{ sonarqube_volumes_base }}/data"
    - "{{ sonarqube_volumes_base }}/extensions"
    - "{{ sonarqube_volumes_base }}/logs"
    - "{{ sonarqube_volumes_base }}/postgresql"
```
The given `sonarqube_volumes_base` is simply a variable which contains the base location of those volumes on the system.
So we continue pulling the container images (`postgres_image` is set as `postgres:15-alpine`):
```yaml
- name: Pull PostgreSQL Image
  community.docker.docker_image:
    name: "{{ postgres_image }}"
    source: pull

- name: Pull SonarQube Image
  community.docker.docker_image:
    name: sonarqube:latest
    source: pull
```
So first we should start the PostgreSQL container because it's later being used by SonarQube:
```yaml
- name: Create a network (SonarQube)
  community.docker.docker_network:
    name: net_sonarqube

- name: Start PostgreSQL container
  community.docker.docker_container:
    name: postgresql-sonarqube
    image: "{{ postgres_image }}"
    recreate: true
    state: "started"
    restart_policy: "unless-stopped"
    env:
      POSTGRES_PASSWORD: "{{ postgres_password }}"
      POSTGRES_USER: "{{ postgres_user }}"
      POSTGRES_DB: "{{ postgres_db }}"
    networks:
      - name: "net_sonarqube"
    mounts:
      - source: volume_sonar_postgres
        target: /var/lib/postgresql/data
```
So I've created a separate network and started the postgresql container using some variables to set username, password
and db name. I've extracted them into variables, to make them easier to access and definable via external sources or
read them via encrypted file (Ansible vault).

So now the vital part of that setup. Starting the SonarQube container. It's necessary to mention that I've been using
the variable for the JDBC connection (username, password and DB as well.). The name `postgresql-sonarqube` is the
hostname based on the previous name definition for the PostgreSQL database which can simply be used because both
containers are on the same network.
```yaml
- name: Start SonarQube container
  community.docker.docker_container:
    name: SonarQube
    image: sonarqube:latest
    recreate: true
    state: "started"
    restart_policy: "unless-stopped"
    restart: true
    ports:
      - "{{ sonarqube_port }}:9000"
    env:
      SONAR_JDBC_USERNAME: "{{ postgres_user }}"
      SONAR_JDBC_PASSWORD: "{{ postgres_password }}"
      SONAR_JDBC_URL: "jdbc:postgresql://postgresql-sonarqube:5432/{{ postgres_db }}"
    networks:
      - name: "net_sonarqube"
    mounts:
      - source: volume_sonar_conf
        target: /opt/sonarqube/conf
      - source: volume_sonar_data
        target: /opt/sonarqube/data
      - source: volume_sonar_extensions
        target: /opt/sonarqube/extensions
      - source: volume_sonar_logs
        target: /opt/sonarqube/logs
```
So we are done. No, unfortunately, we are not! If we would open the access to SonarQube (via starting the nginx proxy)
this would mean having only configured the default username/password which is from a security point of view a bad idea.
Also, does the setup really work? Is SonarQube really up and running? And how to access SonarQube to start an analysis?

So first we need to find a way to check if SonarQube is really ready to be used. Why? Simply we need to find a way to
change the default password of the `admin` user. So let's start with checking if SonarQube is ready to be used. This can
be achieved by using the following:
```yaml
- name: "Wait until SonarQube Container is reachable via TCP/IP."
  ansible.builtin.wait_for:
    host: "localhost"
    port: "{{ sonarqube_port }}"
    state: drained
    delay: 5
    connect_timeout: 15
    timeout: 30
```

By using that we simply wait until the container is accessible via TCP/IP. Don't be astonished during an automatic setup
is a thing to check because it takes a period. So next check if the SonarQube container is ready (healthy). Naively you
might go the way to check the URL of SonarQube within the container and if answers with a 200 HTTP status code
everything is fine.

Yes, I'm admitting, that was my first thought as well. I have learned that this is not the correct approach here. The
issue is that the URL of SonarQube is available very early and will answer with a 200 code but the SonarQube itself is
not ready at that time. How did I find out? Failed the following steps to change the admin password.

So to check the health of SonarQube it's necessary to check the health status of SonarQube itself which
is [reported via JSON information](https://next.sonarqube.com/sonarqube/web_api/api/system?query=health). The so-called
status `GREEN` with HTTP status 200. This looks in Ansible like this:

```yaml
- name: Check SonarQube to be healthy.
  ansible.builtin.uri:
    url: "http://localhost:{{ sonarqube_port }}/api/system/health"
    user: "{{ sonarqube_admin_login }}"
    password: "{{ sonarqube_admin_password }}"
    method: GET
    force_basic_auth: yes
  register: response
  until:
    - "response.status == 200"
    - "'GREEN' == response.json.health"
  retries: 20 # 20 * 5 seconds = 100 seconds.
  delay: 5 # every 5 seconds
```

During an installation, you can observe that this can take two or three rounds of checking depending on the system's
performance. Keep in mind we are using the default username/password. That makes it possible to access the rest API
during the setup. After that step, we are not sure about two things. First SonarQube has started up correctly and a nice
side effect is we have an option to change access information (change password etc.) for further setup steps.

For a real CI setup, we have to make it possible for a given CI system to have access to SonarQube to push analyse
information to SonarQube. That should be done by creating a separate user (not using admin account) and only accessible
via user token. To achieve that we have to create a new user first. Luckily that can be done via REST API as well. So
create a ci user via REST. One thing is important to encode the username correctly (`urlencode` in Ansible) otherwise,
you might get issues while using other characters than ASCII in your `sonarqube_ci_name`.

```yaml
- name: Create CI User
  ansible.builtin.uri:
    url: "http://localhost:{{ sonarqube_port }}/api/users/create?local=true&login={{ sonarqube_ci_login }}&name={{ sonarqube_ci_name | urlencode }}&password={{ sonarqube_ci_password }}"
    user: "{{ sonarqube_admin_login }}"
    password: "{{ sonarqube_admin_password }}"
    method: POST
    force_basic_auth: yes
  register: ciresponse
  failed_when: ciresponse.status != 200
```
That will create the given user (`sonarqube_ci_name`) with the appropriate password (`sonarqube_ci_password`). The next
thing is to create a user token which is used fom sending analysing results to SonarQube.

```yaml
- name: Create CI User Token.
  ansible.builtin.uri:
    url: "http://localhost:{{ sonarqube_port }}/api/user_tokens/generate?login={{ sonarqube_ci_login }}&name={{ sonarqube_ci_token_purpose | urlencode }}"
    user: "{{ sonarqube_ci_login }}"
    password: "{{ sonarqube_ci_password }}"
    method: POST
    force_basic_auth: yes
  register: ciresponsetoken
  failed_when: ciresponsetoken.status != 200
- debug:
    msg: "TOKEN: {{ ciresponsetoken.json }}"
```
This created token is necessary to transfer to a CI system like [Woodpecker](https://woodpecker-ci.org/) (or other tools
like Jenkins etc.). That means the steps here must be combined with the setup for Woodpecker (that's one of the lacking
things at the moment which I have not implemented yet). And yes I know that I'm writing the token to the console
via `debug`!.

So finally we have to change the default password (admin user) of SonarQube via REST as well. Unfortunately, I have no
way to make that during the initial setup of the container (env. variable or alike). I've found several ways to change
the entry in the database (PostgreSQL) or reset it default but that is too complicated. So the simplest solution I've
found is via REST:

```yaml
- name: Change Password of admin user.
  ansible.builtin.uri:
    url: "http://localhost:{{ sonarqube_port }}/api/users/change_password?login={{ sonarqube_admin_login }}&password={{ sonarqube_admin_newpassword }}&previousPassword={{ sonarqube_admin_password }}"
    user: "{{ sonarqube_admin_login }}"
    password: "{{ sonarqube_admin_password }}"
    method: POST
    force_basic_auth: yes
  register: responsecpw
  failed_when: responsecpw.status != 204
```

That will set the password of the `admin` account to the given `sonarqube_admin_newpassword`. So now the setup of
SonarQube including the database is done. We can make it accessible to the real world. So start the nginx proxy as the
final step.