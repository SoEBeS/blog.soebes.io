---
title: "Apache Maven Jar Plugin Version 3.0.2 Released"
date: 2016-06-23T19:09:00
lastmod: 2016-06-23T19:09
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Jar Plugin, version 3.0.2](https://maven.apache.org/plugins/maven-jar-plugin/).

This plugin provides the capability to build jars.

Important Note: 

 * Maven 3.X only
 * JDK 6 minimum requirement


```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-jar-plugin</artifactId>
  <version>3.0.2</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven JAR Plugin - Version 3.0.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317526&version=12336062)

Bugs:

 * [MJAR-223](https://issues.apache.org/jira/browse/MJAR-223) - classpathLayoutType is not taken into account when building the classpath attribute in the manifest
 * [MJAR-228](https://issues.apache.org/jira/browse/MJAR-228) - Plugin generates wrong Class-Path in MANIFEST
 * [MJAR-229](https://issues.apache.org/jira/browse/MJAR-229) - Upgrade maven-archiver to 3.1.1

Task:

 * [MJAR-230](https://issues.apache.org/jira/browse/MJAR-230) - Upgrade of plexus-archiver to 3.4.

Enjoy,

- The Apache Maven team
