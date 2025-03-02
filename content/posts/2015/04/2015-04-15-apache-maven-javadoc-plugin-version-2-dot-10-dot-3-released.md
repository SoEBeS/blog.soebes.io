---
title: "Apache Maven JavaDoc Plugin Version 2.10.3 Released"
date: 2015-04-15T07:48:00
lastmod: 2015-04-15T07:48:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JavaDoc Plugin, version 2.10.3](http://maven.apache.org/plugins/maven-javadoc-plugin).

The Javadoc Plugin uses the Javadoc tool to generate javadocs for the
specified project. 

Please be aware of the new location of our issue tracker
which has been moved from Codehaus to [Apache Software Foundation](https://issues.apache.org/jira/browse/MJAVADOC).

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-javadoc-plugin</artifactId>
  <version>2.10.3</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven JavaDoc Plugin - Version 2.10.3](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317529&version=12330876)



Bugs:

 * [MJAVADOC-347](https://issues.apache.org/jira/browse/MJAVADOC-347) - javadoc:aggregate-jar doesn't create Javadoc JAR if failOnError=false and there is an error
 * [MJAVADOC-414](https://issues.apache.org/jira/browse/MJAVADOC-414) - Artifacts missing from test classpath.
 * [MJAVADOC-424](https://issues.apache.org/jira/browse/MJAVADOC-424) - Compile errors and warning when generating the test-javadoc
 * [MJAVADOC-425](https://issues.apache.org/jira/browse/MJAVADOC-425) - Outdated doxia's version is used in plugin

Enjoy,

-The Apache Maven team
