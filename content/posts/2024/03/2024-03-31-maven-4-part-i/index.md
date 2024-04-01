---
title: "Maven 4 - Part I - Easier Versions"
date: 2024-03-31T11:12:30
lastmod: 2024-03-31T11:12:30
categories:
  - Java
  - Maven
  - Maven4
---
# Overview
This is the first article in this series about Apache Maven 4. Currently Apache Maven 4 is in alpha state (alpha-13). You
can already [download][mvn-download] it and of course use it (I recommend to test things to see, if something strange happens. If 
you find problems, [please report them][jira-apache]) but I would not recommend to use it in production in the current stage.

Let us start with a basic example of a Maven POM file which looks similar like this (For the sake of clarity no 
dependencies defined):
```xml
<project
    xmlns="http://maven.apache.org/POM/4.0.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">

  <modelVersion>4.0.0</modelVersion>

  <parent>
    <groupId>com.soebes.smpp</groupId>
    <artifactId>smpp</artifactId>
    <version>6.0.5</version>
    <relativePath/>
  </parent>

  <groupId>com.soebes.examples.maven4</groupId>
  <artifactId>basic</artifactId>
  <version>1.0.0-SNAPSHOT</version>
  <name>Basic Example</name>
  ..
</project>
```

Let us take a deeper look into this. So we see a parent, which is used to inherit configuration setup for plugins etc.
to prevent repetition for each project. The next parts are the usual definition of the `groupId`, `artifactId` and the
`version` (this combination is often abbreviated with `GAV`). So we would like to build that setup with Maven 4. So 
first let us check, if we have installed the correct Maven version. The output should look similar to this:

```bash
$> mvn --version
Apache Maven 4.0.0-alpha-13 (0a6a5617fe5ef65c44f05903491e170d92cf37fc)
Maven home: /projects/tools/maven
Java version: 22, vendor: Oracle Corporation, runtime: /projects/.sdkman/candidates/java/22-open
Default locale: en_DE, platform encoding: UTF-8
OS name: "mac os x", version: "14.0", arch: "aarch64", family: "mac"
```
Ok, let us try to build that example project via:
```bash
mvn clean verify
```
and that will produce the following (a bit lengthy) output:
```text
[INFO] Unable to find the root directory. Create a .mvn directory in the root directory or add the root="true" attribute on the root project's model to identify it.
[INFO] Scanning for projects...
[INFO] 
[INFO] -------------------------------------------< com.soebes.examples.maven4:basic >-------------------------------------------
[INFO] Building Basic Example 1.0.0-SNAPSHOT
[INFO]   from pom.xml
[INFO] ---------------------------------------------------------[ jar ]----------------------------------------------------------
[INFO] 
[INFO] --- clean:3.3.2:clean (default-clean) @ basic ---
[INFO] Deleting /projects/basic/target
[INFO] 
[INFO] --- enforcer:3.4.1:enforce (enforce-maven) @ basic ---
[INFO] Rule 0: org.apache.maven.enforcer.rules.RequireSameVersions passed
[INFO] Rule 1: org.apache.maven.enforcer.rules.version.RequireMavenVersion passed
[INFO] Rule 2: org.apache.maven.enforcer.rules.dependency.BannedDependencies passed
[INFO] Rule 3: org.apache.maven.enforcer.rules.RequireNoRepositories passed
[INFO] Rule 4: org.apache.maven.enforcer.rules.RequirePluginVersions passed
[INFO] Rule 5: org.apache.maven.enforcer.rules.property.RequireProperty passed
[INFO] Rule 6: org.apache.maven.enforcer.rules.property.RequireProperty passed
[INFO] Rule 7: org.apache.maven.enforcer.rules.property.RequireProperty passed
[INFO] 
[INFO] --- jacoco:0.8.11:prepare-agent (default) @ basic ---
[INFO] argLine set to -javaagent:/.m2/repository/org/jacoco/org.jacoco.agent/0.8.11/org.jacoco.agent-0.8.11-runtime.jar=destfile=/projects/basic/target/jacoco.exec
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ basic ---
[INFO] skip non existing resourceDirectory /projects/basic/src/main/resources
[INFO] skip non existing resourceDirectory /projects/basic/src/main/resources-filtered
[INFO] 
[INFO] --- compiler:3.12.1:compile (default-compile) @ basic ---
[INFO] Recompiling the module because of changed source code.
[INFO] Compiling 1 source file with javac [debug release 11] to target/classes
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ basic ---
[INFO] skip non existing resourceDirectory /projects/basic/src/test/resources
[INFO] skip non existing resourceDirectory /projects/basic/src/test/resources-filtered
[INFO] 
[INFO] --- compiler:3.12.1:testCompile (default-testCompile) @ basic ---
[INFO] No sources to compile
[INFO] 
[INFO] --- surefire:3.2.3:test (default-test) @ basic ---
[INFO] No tests to run.
[INFO] 
[INFO] --- jar:3.3.0:jar (default-jar) @ basic ---
[INFO] Building jar: /projects/basic/target/basic-1.0-SNAPSHOT.jar
[INFO] 
[INFO] --- site:3.12.1:attach-descriptor (attach-descriptor) @ basic ---
[INFO] Skipping because packaging 'jar' is not pom.
[INFO] 
[INFO] --- jacoco:0.8.11:report (default) @ basic ---
[INFO] Skipping JaCoCo execution due to missing execution data file.
[INFO] Copying com.soebes.examples.maven4:basic:pom:1.0-SNAPSHOT to project local repository
[INFO] Copying com.soebes.examples.maven4:basic:jar:1.0-SNAPSHOT to project local repository
[INFO] Copying com.soebes.examples.maven4:basic:pom:consumer:1.0-SNAPSHOT to project local repository
[INFO] --------------------------------------------------------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] --------------------------------------------------------------------------------------------------------------------------
[INFO] Total time:  1.199 s
[INFO] Finished at: 2024-03-26T23:20:12+01:00
[INFO] --------------------------------------------------------------------------------------------------------------------------
```
If you have already have used Maven 3.X before, you might have spotted some differences. The first line shows:
```text
[INFO] Unable to find the root directory. Create a .mvn directory in the root directory or add the root="true" attribute on the root project's model to identify it.
.
```
We will ignore that for now, because we will discuss that later in detail. Let's talk about versions.

## SNAPSHOT vs. Release Version

In the initial example, you have seen, that we have used a literal version `1.0.0-SNAPSHOT`, which is very common in Maven
projects. The usual process is to start with a SNAPSHOT-version which is implied by the postfix `-SNAPSHOT`. This is the
indicator, that it is not final yet or in other words, it will change. But, of course, there is a time to make that
version final (immutable). Being more accurate, finalize the state of the software (artifact), which is indicated by the 
version. So we change the version to `1.0.0` (without the postfix `-SNAPSHOT`), which is now called a release version. 
This release version will be published in whatever manner (often in central repository, or in an internal repository). 
The next development cycle starts by changing the version from `1.0.0` to something like `1.1.0-SNAPSHOT`. Now the 
circle starts from the beginning. So changing the version in the `pom.xml` everytime is something, which some people 
don't like and yes it's a bit cumbersome. That version change can also be handled by using
the [Maven Release Plugin][maven-release-plugin], which is also not really liked by some people.

## Easier Revisions
Starting with Maven 4, you can define a version property simply in the `pom.xml` like the following:
```xml
...
  <groupId>com.soebes.examples.maven4</groupId>
  <artifactId>basic</artifactId>
  <version>${revision}</version>
  <name>Basic Example</name>
...
```
For brevity reasons, only the relevant parts are being shown. If you build that via: `mvn clean` you will see the 
following:
```text
..
[INFO] 
[INFO] -------------------------------------------< com.soebes.examples.maven4:basic >-------------------------------------------
[INFO] Building Basic Example ${revision}
[INFO]   from pom.xml
[INFO] ---------------------------------------------------------[ jar ]----------------------------------------------------------
[INFO] 
[INFO] --- clean:3.3.2:clean (default-clean) @ basic ---
[INFO] Deleting /projects/basic-revision/target
[INFO] --------------------------------------------------------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] --------------------------------------------------------------------------------------------------------------------------
[INFO] Total time:  0.242 s
[INFO] Finished at: 2024-03-26T23:22:12+01:00
[INFO] --------------------------------------------------------------------------------------------------------------------------
```

## Command Line Parameter
So it's a bit weird that you see `Building Basic Example ${revision}`. That means, this project does not have a version at 
all. The version is `${revision}` which I assume is not, what you wanted nor expected. How can we define a particular 
version for our build (or for the resulting artifact)? This can be achieved by using a property via the command line like this:
```bash
$ mvn clean -Drevision=1.2.0-SNAPSHOT
```
The output during building now changes into this:
```text
...
[INFO] 
[INFO] -------------------------------------------< com.soebes.examples.maven4:basic >-------------------------------------------
[INFO] Building Basic Example 1.2.0-SNAPSHOT
[INFO]   from pom.xml
[INFO] ---------------------------------------------------------[ jar ]----------------------------------------------------------
[INFO] 
[INFO] --- clean:3.3.2:clean (default-clean) @ basic ---
[INFO] Deleting /projects/basic-revision/target
[INFO] --------------------------------------------------------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] --------------------------------------------------------------------------------------------------------------------------
[INFO] Total time:  0.243 s
[INFO] Finished at: 2024-03-26T23:21:12+01:00
[INFO] --------------------------------------------------------------------------------------------------------------------------
```
The output `Building Basic Example 1.2.0-SNAPSHOT` now indicates, that the given version via property is being used as 
the version for the Maven project or more accurate for the resulting artifacts.

## POM Property
This means, we can define any version we like, by just adding that option on command line every time we execute 
Maven. Hold on a second. Everytime? Yes everytime hm. Isn't there a way to avoid that? Yes, there is one. We can 
define the revision property in the `pom.xml`. That looks like this:
```xml
  ..
  <groupId>com.soebes.examples.maven4</groupId>
  <artifactId>basic</artifactId>
  <version>${revision}</version>
  <name>Basic Example</name>

  <properties>
    <revision>1.0.0-SNAPSHOT</revision>
  </properties>
..
```
Ok, now you can simply build like before without giving the revision everytime on command as an option:
```bash
$> mvn clean
..
[INFO] Scanning for projects...
[INFO] 
[INFO] -------------------------------------------< com.soebes.examples.maven4:basic >-------------------------------------------
[INFO] Building Basic Example 1.0.0-SNAPSHOT
[INFO]   from pom.xml
[INFO] ---------------------------------------------------------[ jar ]----------------------------------------------------------
[INFO] 
[INFO] --- clean:3.3.2:clean (default-clean) @ basic ---
[INFO] Deleting /projects/basic-revision-pom/target
[INFO] --------------------------------------------------------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] --------------------------------------------------------------------------------------------------------------------------
[INFO] Total time:  0.238 s
[INFO] Finished at: 2024-03-26T12:15:42+01:00
[INFO] --------------------------------------------------------------------------------------------------------------------------
```
One could argue: Haven't we reached the same level as in the beginning, while defining the version literally in the pom?
On the first glance it might look like this, but we have reached a different level of flexibility. Ok, let's try to 
build with a different version? Do we have to change the `pom.xml` file? No, there is no need for that anymore. You 
simply give a different version via command line `mvn clean -Drevision=1.2.0-SNAPSHOT`:

```bash
..
[INFO] 
[INFO] -------------------------------------------< com.soebes.examples.maven4:basic >-------------------------------------------
[INFO] Building Basic Example 1.2.0-SNAPSHOT
[INFO]   from pom.xml
[INFO] ---------------------------------------------------------[ jar ]----------------------------------------------------------
[INFO] 
[INFO] --- clean:3.3.2:clean (default-clean) @ basic ---
[INFO] Deleting /projects/basic-revision-pom/target
[INFO] --------------------------------------------------------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] --------------------------------------------------------------------------------------------------------------------------
[INFO] Total time:  0.239 s
[INFO] Finished at: 2024-03-26T12:21:16+01:00
[INFO] --------------------------------------------------------------------------------------------------------------------------
```
That means, we can now overwrite the version within the `pom.xml` easily by giving any version we like, via the property 
on the command line. This is very helpful within an CI/CD tools (for example Jenkins, Circle CI, Github Actions or 
alike). That also prevents the manual change of the `pom.xml` everytime, you would like to change version. 

## Creating a Release
Also creating a release is very easy. Just use `mvn deploy -Drevision=1.2.0`. Ok, you have to have done the required
setup to publish a release, but that's a different story. 

The output looks similar to the following (removed the beginning of the output, because it's already
shown in previous examples):
```shell
...
[INFO] 
[INFO] --- install:3.1.1:install (default-install) @ basic ---
[INFO] Deferring install for com.soebes.examples.maven4:basic:1.2.0 at end
[INFO] Installing /projects/basic-distro/target/basic-1.2.0.jar to /.m2/repository/com/soebes/examples/maven4/basic/1.2.0/basic-1.2.0.jar
[INFO] Installing /projects/basic-distro/pom.xml to /.m2/repository/com/soebes/examples/maven4/basic/1.2.0/basic-1.2.0-build.pom
[INFO] Installing /projects/basic-distro/target/consumer-4964754963249724515.pom to /.m2/repository/com/soebes/examples/maven4/basic/1.2.0/basic-1.2.0.pom
[INFO] 
[INFO] --- deploy:3.1.1:deploy (default-deploy) @ basic ---
Uploading to releases: http://localhost:8081/nexus/content/repositories/releases/com/soebes/examples/maven4/basic/1.2.0/basic-1.2.0.jar
Uploaded to releases: http://localhost:8081/nexus/content/repositories/releases/com/soebes/examples/maven4/basic/1.2.0/basic-1.2.0.jar (3.1 kB at 33 kB/s)
Uploading to releases: http://localhost:8081/nexus/content/repositories/releases/com/soebes/examples/maven4/basic/1.2.0/basic-1.2.0-build.pom
Uploading to releases: http://localhost:8081/nexus/content/repositories/releases/com/soebes/examples/maven4/basic/1.2.0/basic-1.2.0.pom
Uploaded to releases: http://localhost:8081/nexus/content/repositories/releases/com/soebes/examples/maven4/basic/1.2.0/basic-1.2.0-build.pom (969 B at 88 kB/s)
Uploaded to releases: http://localhost:8081/nexus/content/repositories/releases/com/soebes/examples/maven4/basic/1.2.0/basic-1.2.0.pom (2.2 kB at 199 kB/s)
Downloading from releases: http://localhost:8081/nexus/content/repositories/releases/com/soebes/examples/maven4/basic/maven-metadata.xml
Uploading to releases: http://localhost:8081/nexus/content/repositories/releases/com/soebes/examples/maven4/basic/maven-metadata.xml
Uploaded to releases: http://localhost:8081/nexus/content/repositories/releases/com/soebes/examples/maven4/basic/maven-metadata.xml (530 B at 48 kB/s)
[INFO] Copying com.soebes.examples.maven4:basic:pom:1.2.0 to project local repository
[INFO] Copying com.soebes.examples.maven4:basic:jar:1.2.0 to project local repository
[INFO] Copying com.soebes.examples.maven4:basic:pom:consumer:1.2.0 to project local repository
[INFO] --------------------------------------------------------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] --------------------------------------------------------------------------------------------------------------------------
[INFO] Total time:  1.367 s
[INFO] Finished at: 2024-03-26T23:50:23+01:00
[INFO] --------------------------------------------------------------------------------------------------------------------------
```

## Multi Module Builds
Ok, now lets make a step further to a more complex setup, a multi-module-build. This kind of build comprises
of a structure like this:
```
.
|-- pom.xml (1)
|-- domain
|   |-- pom.xml
|   `-- src
|-- service
|   |-- pom.xml
|   `-- src
|-- service-client
|   |-- pom.xml
|   `-- src
`-- webgui
|-- pom.xml
`-- src
```
A multi-module build is characterized by the fact, that the child modules (for example `domain` or `service`) always
have a relation to the parent module (parent marked with `(1)`). The parent pom looks like this:
```xml
<project...>

  <modelVersion>4.0.0</modelVersion>

  <parent>
    <groupId>com.soebes.smpp</groupId>
    <artifactId>smpp</artifactId>
    <version>6.0.5</version>
    <relativePath/>
  </parent>

  <groupId>com.soebes.examples.j2ee</groupId>
  <artifactId>jee-parent</artifactId>
  <version>3.1.4-SNAPSHOT</version>
  <packaging>pom</packaging>
  ...
  <modules>
    ..
    <module>webgui</module>
    <module>domain</module>
    <module>service</module>
    <module>service-client</module>
    ..
  </modules>

</project>
```
It is important to mention, that the list of modules referenced via `<modules>...</modules>` will create the relationship
to the child modules. A child pom looks like this:

```xml
<project....>

  <modelVersion>4.0.0</modelVersion>

  <parent>
    <groupId>com.soebes.examples.j2ee</groupId>
    <artifactId>jee-parent</artifactId>
    <version>3.1.4-SNAPSHOT</version>
  </parent>

  <artifactId>domain</artifactId>
  ...
</project>
```
It is crucial, that the specification `parent` refers exactly to the parent (referenced with `(1)`) in the multi-module 
build. Such a multi-module build may consist of several hundred or even thousands of child modules. This is then often
divided into several sub-levels (similar to a directory tree). Theoretically, there is no limit here (only memory etc.). 
If you now imagine, that you have to change the version number, this leads as described at the beginning, that all 
`pom.xml` files have to be changed. However, this can be avoided by using a `${revision}` property approach and
simplified dramatically.

This results, that the parent POM receives a corresponding property and the child modules as well. Here the parent pom:

```xml
<project ...>

  <modelVersion>4.0.0</modelVersion>

  <parent>
    <groupId>com.soebes.smpp</groupId>
    <artifactId>smpp</artifactId>
    <version>6.0.5</version>
    <relativePath/>
  </parent>

  <groupId>com.soebes.examples.j2ee</groupId>
  <artifactId>jee-parent</artifactId>
  <version>${revision}</version>
  <packaging>pom</packaging>

  <properties>
    <revision>1.0.0-SNAPSHOT</revision>
  </properties>

  ...
  <modules>
    ..
    <module>webgui</module>
    <module>domain</module>
    <module>service</module>
    <module>service-client</module>
    ..
  </modules>
</project>
```
And exemplified by a child module (`domain`):

```xml
<project ...>

  <modelVersion>4.0.0</modelVersion>

  <parent>
    <groupId>com.soebes.examples.j2ee</groupId>
    <artifactId>jee-parent</artifactId>
    <version>${revision}</version>
  </parent>
  ..
  <artifactId>domain</artifactId>
  ...
</project>
```

## Different Properties
Some will ask themself, could we use other properties than the used `revision` in the previous examples?
Technically there are three properties available `revision` (already mentioned), `sha1` and `changelist`. The usage
and rules are the same as for `revision`. So you can create a combination like this `<version>${revision}${sha1}${changelist}</version>`. 
My recommendation is, use only a single one and that is the `revision` property. In the end it's your decision, which way
you go with that. But to make things clear, you can **NOT** use other properties except the mentioned `revision`, `sha1` 
and `changelist`.

## Maven Configuration File
In contradiction to the previous approach, you can define the `${revision}` in a different manner. You have to create
a directory `.mvn` (in the root of your project) and put a file named `maven.config` into that directory, which contains
the following: `-Drevision=1.0.0-SNAPSHOT`. 
```
.
|-- .mvn
|-- pom.xml
|-- domain
|   |-- pom.xml
|   `-- src
|-- service
|   |-- pom.xml
|   `-- src
|-- service-client
|   |-- pom.xml
|   `-- src
`-- webgui
|-- pom.xml
`-- src
```
This is the equivalent of the previously mentioned command line approach. All things in `maven.config` will be added to
the command line of Maven, as it would be given directly. The option for external configuration files exists since 
[Maven 3.3.1][mvn-config] (ca. 9 years). The `maven.config` can contain more options for example `-T 3`. 


## Conclusion
The usage of the `revision` property (also the other two), is simplifying the versioning of artifacts. In consequence the
release creation is simplified even without changing the `pom.xml` file(s). The most important part in relationship with 
Maven 4 is, that this works out-of-the-box. It not necessary to configure or use the
[flatten-maven-plugin][flatten-maven-plugin] anymore, as it was necessary with [CI Friendly in Maven 3][ci-friendly].
This also means, that the use of e.g. [version-maven-plugin][versions-maven-plugin] to update the version in the `pom.xml`
file, is not needed anymore. One of the things missing here, is the support of the maven-release-plugin creating tags in 
Git during the release creation, but that can be accomplished by adding some steps in your CI/CD pipeline.


[mvn-download]: https://maven.apache.org/download.cgi
[mvn-config]: https://maven.apache.org/docs/3.3.1/release-notes.html
[maven-plugins]: https://maven.apache.org/plugins/
[maven-install-plugin]: https://maven.apache.org/plugins/maven-install-plugin/
[maven-deploy-plugin]: https://maven.apache.org/plugins/maven-deploy-plugin/
[maven-release-plugin]: https://maven.apache.org/maven-release/maven-release-plugin/
[maven-config]: https://maven.apache.org/docs/3.3.1/release-notes.html#jvm-and-command-line-options 
[flatten-maven-plugin]: https://www.mojohaus.org/flatten-maven-plugin/
[ci-friendly]: https://maven.apache.org/maven-ci-friendly.html
[versions-maven-plugin]: https://www.mojohaus.org/versions/versions-maven-plugin
[jira-apache]: https://selfserve.apache.org/jira-account.html
