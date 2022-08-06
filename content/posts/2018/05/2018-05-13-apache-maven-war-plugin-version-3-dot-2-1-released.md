---
title: "Apache Maven WAR Plugin Version 3.2.1 Released"
date: 2018-05-13T12:05:22
lastmod: 2018-05-13T12:05:22
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven WAR Plugin, version 3.2.1](https://maven.apache.org/plugins/maven-war-plugin/).

The WAR Plugin is responsible for collecting all artifact dependencies, classes
and resources of the web application and packaging them into a web application
archive.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-war-plugin</artifactId>
  <version>3.2.1</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page][download].

Important Note: 

 * Maven 3.X only
 * JDK 7 minimum requirement


<!-- more -->

[Release Notes - Maven WAR Plugin - Version 3.1.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318121&version=12341729)

Improvement:

 * [MWAR-412](https://issues.apache.org/jira/browse/MWAR-412) - Upgrade parent to 31

Task:

 * [MWAR-401](https://issues.apache.org/jira/browse/MWAR-401) - Upgrade the WAR lifecycle to use the maven-compiler-plugin 3.7.0

Dependency upgrades:

 * [MWAR-413](https://issues.apache.org/jira/browse/MWAR-413) - Upgrade xstream to 1.4.10
 * [MWAR-414](https://issues.apache.org/jira/browse/MWAR-414) - Upgrade mave-surefire/failsafe-plugin 2.21.0
 * [MWAR-416](https://issues.apache.org/jira/browse/MWAR-416) - Upgrade plexus-archiver to 3.6.0


Enjoy,

-The Apache Maven team

[download]: https://maven.apache.org/plugins/maven-war-plugin/download.cgi

