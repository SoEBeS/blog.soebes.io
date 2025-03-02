---
title: "Apache Maven Checkstyle Plugin Version 2.16 Released"
date: 2015-07-20T19:39:00
lastmod: 2015-07-20T19:39:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Maven team is pleased to announce the release of the 
[Apache Maven Checkstyle Plugin, version 2.16](http://maven.apache.org/plugins/maven-checkstyle-plugin/).

Generates a report on violations of code style and optionally fails the build if violations are detected.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-checkstyle-plugin</artifactId>
  <version>2.16</version>
</plugin>
``` 

<!-- more -->

[Release Notes - Apache Maven Checkstyle Plugin - Version 2.16](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317223&version=12330406)

Bugs:

 * [MCHECKSTYLE-295](https://issues.apache.org/jira/browse/MCHECKSTYLE-295) Test resources are not included
 * [MCHECKSTYLE-271](https://issues.apache.org/jira/browse/MCHECKSTYLE-271) checkstyle plugin fails with default ruleset and checkstyle 6.2

Improvements:

 * [MCHECKSTYLE-290](https://issues.apache.org/jira/browse/MCHECKSTYLE-290) add a history table to show which version of Chesktyle is used by default in which version of m-checkstyle-p
 * [MCHECKSTYLE-284](https://issues.apache.org/jira/browse/MCHECKSTYLE-284) Remove config/sun_checks.xml and use the one built into Checkstyle 6.2+
 * [MCHECKSTYLE-272](https://issues.apache.org/jira/browse/MCHECKSTYLE-272) Upgrade to Checkstyle 6.2

Tasks:

 * [MCHECKSTYLE-285](https://issues.apache.org/jira/browse/MCHECKSTYLE-285) Remove config/maven_checks.xml by removing the dependency on maven-shared-resources:2
 * [MCHECKSTYLE-278](https://issues.apache.org/jira/browse/MCHECKSTYLE-278) Require Java 7
 * [MCHECKSTYLE-268](https://issues.apache.org/jira/browse/MCHECKSTYLE-268) Add flag/option to use built-in Google style


Enjoy,

-The Maven team

