---
title: "Mojo's SonarQube Maven Plugin Version 2.5 Released"
date: 2015-01-12T23:20:00
lastmod: 2015-01-12T23:20
categories:
  - Maven
  - Maven-Plugin-Releases
---
Hi,

The Mojo team is pleased to announce the release of the 
[SonarQube Maven Plugin version 2.5.](http://mojo.codehaus.org/sonar-maven-plugin/index.html).

This plugin aims at running SonarQube analysis for Maven projects.

To get this update, simply specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>sonar-maven-plugin</artifactId>
  <version>2.5</version>
</plugin>
```

<!-- more -->

[Release Notes SonarQube Maven Plugin Version 2.5](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=12430&version=20451)


Bug:

 * [MSONAR-87](https://issues.apache.org/jira/browse/MSONAR-87) - Maven encryption conflict with SonarQube encryption

Improvements:

 * [MSONAR-91](https://issues.apache.org/jira/browse/MSONAR-91) - sonar.skip in multi modules project
 * [MSONAR-104](https://issues.apache.org/jira/browse/MSONAR-104) - Avoid nested source folders

Tasks:

 * [MSONAR-93](https://issues.apache.org/jira/browse/MSONAR-93) - Provide project dependencies for SonarQube 5.0
 * [MSONAR-103](https://issues.apache.org/jira/browse/MSONAR-103) - Use new Java specific properties to specify classpath

Enjoy,

The Mojo team.

Julien HENRY 
