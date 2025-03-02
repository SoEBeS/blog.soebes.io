---
title: "Apache Maven JavaDoc Plugin Version 2.10.1 Released"
date: 2014-10-02T13:02:00
lastmod: 2014-10-02T13:02:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JavaDoc Plugin, Version 2.10.1](http://maven.apache.org/plugins/maven-javadoc-plugin).

The Javadoc Plugin uses the Javadoc tool to generate javadocs for the specified project.

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-javadoc-plugin</artifactId>
  <version>2.10.1</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven JavaDoc Version 2.10.1](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11138&version=20644)

Bugs:

 * [MJAVADOC-406](https://issues.apache.org/jira/browse/MJAVADOC-406) - Regression: MJAVADOC-398 commit changed wrong line
 * [MJAVADOC-407](https://issues.apache.org/jira/browse/MJAVADOC-407) - Cannot parse annotations when generating javadoc
 * [MJAVADOC-416](https://issues.apache.org/jira/browse/MJAVADOC-416) - java.lang.ClassCastException: com.sun.tools.javadoc.ClassDocImpl cannot be cast to com.sun.javadoc.AnnotationTypeDoc

Improvement:

 * [MJAVADOC-412](https://issues.apache.org/jira/browse/MJAVADOC-412) - Update version of plexus-archiver to 2.5


Enjoy,

-The Apache Maven team
