---
title: "Apache Maven Parent POM Version 37 Released"
date: 2022-07-23T23:16:16
lastmod: 2022-07-23T23:16:16
categories:
  - parent-poms
---
The Apache Maven team is pleased to announce the release of the 
[Maven Parent POMs Version 37](https://maven.apache.org/pom/maven/)

Maven Parent POMs include [Maven Parent POM](https://maven.apache.org/pom/maven/)
 itself, but also [Maven Plugins Parent POM](https://maven.apache.org/pom/maven/maven-plugins/), 
[Maven Shared Components Parent POM](https://maven.apache.org/pom/maven/maven-shared-components/), 
[Maven Skins Parent POM](https://maven.apache.org/pom/maven/maven-skins/) and
Maven Doxia Tools Parent POM.

https://maven.apache.org/pom/maven/

You should specify the version in your project as parent like the following:

```xml
<parent>
   <groupId>org.apache.maven</groupId>
   <artifactId>maven-parent</artifactId>
   <version>37</version>
</parent>
```

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/pom/maven/download.html


[Release Notes - Apache Maven Parent POM - Version 37](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12311250&version=12351652)


* New Feature:
 
  * [MPOM-322](https://issues.apache.org/jira/browse/MPOM-322) - Add link to ASF privacy policy
 
* Tasks:
 
  * [MPOM-317](https://issues.apache.org/jira/browse/MPOM-317) - Remove custom Matomo code when Fluido Skin 1.11.0 is used
  * [MPOM-324](https://issues.apache.org/jira/browse/MPOM-324) - Drop Social Media Plug-ins from documentation

* Dependency upgrades:

  * [MPOM-328](https://issues.apache.org/jira/browse/MPOM-328) - Bump maven-pmd-plugin from 3.16.0 to 3.17.0
  * [MPOM-331](https://issues.apache.org/jira/browse/MPOM-331) - Upgrade Surefire to 3.0.0-M7
  * [MPOM-334](https://issues.apache.org/jira/browse/MPOM-334) - Upgrade fluido skin to 1.11.1
  * [MPOM-336](https://issues.apache.org/jira/browse/MPOM-336) - Bump maven-toolchains-plugin from 3.0.0 to 3.1.0
  * [MPOM-338](https://issues.apache.org/jira/browse/MPOM-338) - Bump extra-enforcer-rules from 1.5.1 to 1.6.0
  * [MPOM-339](https://issues.apache.org/jira/browse/MPOM-339) - Upgrade Parent to 27

Enjoy,
- The Apache Maven Team

