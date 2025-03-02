---
title: "Apache Maven CheckStyle Plugin Version 2.15 Released"
date: 2015-03-20T22:11:00
lastmod: 2015-03-20T22:11:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Maven team is pleased to announce the release of the [Apache Maven
Checkstyle Plugin, version 2.15](http://maven.apache.org/plugins/maven-checkstyle-plugin/).

Generates a report on violations of code style and optionally fails the build
if violations are detected.


You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-checkstyle-plugin</artifactId>
  <version>2.15</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven Checkstyle Plugin - Version 2.15](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11127&version=20762)

Bugs:

 * [MCHECKSTYLE-288](https://issues.apache.org/jira/browse/MCHECKSTYLE-288) NullPointerException during building a multi-module project
 * [MCHECKSTYLE-250](https://issues.apache.org/jira/browse/MCHECKSTYLE-250) NPE on tying to load LICENSE.txt resource from non-jar plugin dependencies

Improvements:

 * [MCHECKSTYLE-286](https://issues.apache.org/jira/browse/MCHECKSTYLE-286) Add info on ruleset used in console output
 * [MCHECKSTYLE-261](https://issues.apache.org/jira/browse/MCHECKSTYLE-261) Upgrade to Checkstyle 6.1.1

Tasks:

 * [MCHECKSTYLE-277](https://issues.apache.org/jira/browse/MCHECKSTYLE-277) Require Java 6
 * [MCHECKSTYLE-273](https://issues.apache.org/jira/browse/MCHECKSTYLE-273) Remove Turbine configuration since it is not used any more

Enjoy,

-The Maven team
