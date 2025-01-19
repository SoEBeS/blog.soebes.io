---
title: "Apache Maven Ant Plugin Version 2.4 Released"
date: 2014-12-21T14:57:00
lastmod: 2014-12-21T14:57:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the
[Apache Maven Ant Plugin, version 2.4](http://maven.apache.org/plugins/maven-ant-plugin/).

The Ant Plugin generates build files for Ant 1.6.2 or above from the POM.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-ant-plugin</artifactId>
  <version>2.4</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Ant Plugin - Version 2.4](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11124&version=15977)

Bug:

 * [MANT-65](https://issues.apache.org/jira/browse/MANT-65) - Invalid check for junit

Improvements:

 * [MANT-75](https://issues.apache.org/jira/browse/MANT-75) - Removed compatibility with Maven 2.0.X
 * [MANT-80](https://issues.apache.org/jira/browse/MANT-80) - Update version of plexus-utils to 3.0.18
 * [MANT-81](https://issues.apache.org/jira/browse/MANT-81) - Upgrade ant dep to 1.9.1
 * [MANT-82](https://issues.apache.org/jira/browse/MANT-82) - Upgrade maven-plugin-testing-harness to 1.3
 * [MANT-83](https://issues.apache.org/jira/browse/MANT-83) - Upgrade JUnit from 3.8.1 to 4.11
 * [MANT-84](https://issues.apache.org/jira/browse/MANT-84) - Upgrade ant dep to 1.9.4 to be consistent with maven-antrun-plugin

Tasks:

 * [MANT-69](https://issues.apache.org/jira/browse/MANT-69) - use maven-plugin-tools' java 5 annotations
 * [MANT-76](https://issues.apache.org/jira/browse/MANT-76) - MavenProject/MavenSession Injection as a paremeter instead as a component.
 * [MANT-77](https://issues.apache.org/jira/browse/MANT-77) - Upgrade ant dep to 1.8.1

Enjoy,

-The Apache Maven team

