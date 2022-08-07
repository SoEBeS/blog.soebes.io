---
title: "Apache Maven Release Plugin Version 3.0.0-M5 Released"
date: 2022-01-05T13:21:12
lastmod: 2022-01-05T13:21:12
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Release, version 3.0.0-M5](https://maven.apache.org/maven-release/).

This plugin is used to release a project with Maven, saving a lot of
repetitive, manual work. Releasing a project is made in two steps: prepare and
perform.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-release-plugin</artifactId>
  <version>3.0.0-M5</version>
</plugin>
```

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/maven-release/download.cgi

<!-- more -->

[Release Notes - Apache Maven Release Plugin - Version 3.0.0-M5](https://issues.apache.org/jira/secure/ReleaseNote.jspa?version=12346565&styleName=Text&projectId=12317824)

* Bugs:
 
  * [MRELEASE-1053](https://issues.apache.org/jira/browse/MRELEASE-1053) - scm element removed during release:prepare when parent != reactor root
  * [MRELEASE-1066](https://issues.apache.org/jira/browse/MRELEASE-1066) - FileUtils.copyDirectory(File srcDir, File destDir) fails on Windows
  * [MRELEASE-1069](https://issues.apache.org/jira/browse/MRELEASE-1069) - typo: it's
  * [MRELEASE-1071](https://issues.apache.org/jira/browse/MRELEASE-1071) - update project.build.outputTimestamp property when its initial value is 0 to 9

* New Feature:
 
  * [MRELEASE-1015](https://issues.apache.org/jira/browse/MRELEASE-1015) - Add tag signing support to prepare goal

* Task:
 
  * [MRELEASE-1075](https://issues.apache.org/jira/browse/MRELEASE-1075) - Move CVS-based tests to Subversion or Git

* Dependency upgrades:
 
  * [MRELEASE-1074](https://issues.apache.org/jira/browse/MRELEASE-1074) - Upgrade Maven SCM to 1.12.2
  * [MRELEASE-1076](https://issues.apache.org/jira/browse/MRELEASE-1076) - Upgrade Plexus Utils to 3.4.1
 
Enjoy,
 
-The Apache Maven team
