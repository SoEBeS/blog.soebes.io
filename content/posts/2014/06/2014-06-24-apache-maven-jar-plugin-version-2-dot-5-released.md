---
title: "Apache Maven JAR Plugin Version 2.5 Released"
date: 2014-06-24T12:06:00
lastmod: 2014-06-24T12:06
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JAR Plugin, version 2.5](http://maven.apache.org/plugins/maven-jar-plugin/)


You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-jar-plugin</artifactId>
  <version>2.5</version>
</plugin>
```
<!-- more -->

[Release Notes - Maven JAR Plugin - Version 2.5](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11137&version=18297)

Bugs:

 * [MJAR-157](https://issues.apache.org/jira/browse/MJAR-157) - forceUpdate documentation is insufficient
 * [MJAR-162](https://issues.apache.org/jira/browse/MJAR-162) - skipIfEmpty not work for test-jar goal and empty directories
 * [MJAR-167](https://issues.apache.org/jira/browse/MJAR-167) - skipIfEmpty outputs incorrect logging nessage

Improvements:

 * [MJAR-168](https://issues.apache.org/jira/browse/MJAR-168) - Update to latest plexus-archiver
 * [MJAR-170](https://issues.apache.org/jira/browse/MJAR-170) - please add property 'maven.jar.classifier'
 * [MJAR-175](https://issues.apache.org/jira/browse/MJAR-175) - Documentation problem for test-jar
 * [MJAR-176](https://issues.apache.org/jira/browse/MJAR-176) - Usage page should (only) describe default behavior

Tasks:

 * [MJAR-158](https://issues.apache.org/jira/browse/MJAR-158) - use maven-plugin-tools' java 5 annotations
 * [MJAR-171](https://issues.apache.org/jira/browse/MJAR-171) - Remove deprecated mojo jar-sign and jar-sign-verify
 * [MJAR-173](https://issues.apache.org/jira/browse/MJAR-173) - Check correctness of declared deps

-- The Apache Maven Team.
