---
title: "Apache Maven Jar Plugin Version 2.6 Released"
date: 2015-03-10T11:35:00
lastmod: 2015-03-10T11:35
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Jar Plugin, version 2.6](http://maven.apache.org/plugins/maven-jar-plugin/).

This plugin provides the capability to build jars.


```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-jar-plugin</artifactId>
  <version>2.6</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven JAR Plugin - Version 2.6](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11137&version=20457)

Bugs:

 * [MJAR-135](https://issues.apache.org/jira/browse/MJAR-135) - encoding problem with folder-names
 * [MJAR-151](https://issues.apache.org/jira/browse/MJAR-151) - Error assembling JAR on OS X
 * [MJAR-179](https://issues.apache.org/jira/browse/MJAR-179) - Adding empty files to jar failed with a ZipException : bad CRC checksum
 * [MJAR-185](https://issues.apache.org/jira/browse/MJAR-185) - Update version of plexus-archiver to 2.7.1
 * [MJAR-188](https://issues.apache.org/jira/browse/MJAR-188) - maven-jar-plugin is very slow on machines with slow Unix group lookups
 * [MJAR-189](https://issues.apache.org/jira/browse/MJAR-189) - Upgrade plexus-archiver dependency to v2.9

Improvements:

 * [MJAR-178](https://issues.apache.org/jira/browse/MJAR-178) - Change information on site
 * [MJAR-180](https://issues.apache.org/jira/browse/MJAR-180) - Upgrade to Maven 2.2.1 compatiblity
 * [MJAR-181](https://issues.apache.org/jira/browse/MJAR-181) - MavenProject/MavenSession Injection as a paremeter instead as a component.
 * [MJAR-182](https://issues.apache.org/jira/browse/MJAR-182) - Update version of plexus-archiver to 2.6.3
 * [MJAR-184](https://issues.apache.org/jira/browse/MJAR-184) - Update version of plexus-archiver to 2.7
 * [MJAR-186](https://issues.apache.org/jira/browse/MJAR-186) - Upgrade maven-plugins-testing-harness from 1.2 to 1.3
 * [MJAR-187](https://issues.apache.org/jira/browse/MJAR-187) - Upgrade maven-archiver to 2.6
 * [MJAR-190](https://issues.apache.org/jira/browse/MJAR-190) - Upgrade to maven-plugins version 25 to 26
 * [MJAR-191](https://issues.apache.org/jira/browse/MJAR-191) - Upgrade to maven-plugins parent version 27

Enjoy,

- The Apache Maven team
