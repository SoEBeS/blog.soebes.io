---
title: "Apache Maven Source Plugin Version 2.3 Released"
date: 2014-07-11T10:21:00
lastmod: 2014-07-11T10:21:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Source Plugin, version 2.3](http://maven.apache.org/plugins/maven-source-plugin/).

The Source Plugin creates a jar archive of the source files of the current
project. The jar file is, by default, created in the project's target
directory.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-source-plugin</artifactId>
  <version>2.3</version>
</plugin>
```
<!-- more -->


[Release Notes - Maven Source Plugin - Version 2.3](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11147&version=18848)

Bugs:

 * [MSOURCES-63](https://issues.apache.org/jira/browse/MSOURCES-63) - Non-working links on doc site
 * [MSOURCES-64](https://issues.apache.org/jira/browse/MSOURCES-64) - forceCreation=true doesn't create test source package when src/test missing

Improvements:

 * [MSOURCES-68](https://issues.apache.org/jira/browse/MSOURCES-68) - Add Maven version used to Created-By entry in manifest
 * [MSOURCES-69](https://issues.apache.org/jira/browse/MSOURCES-69) - Update version of plexus-archiver to 2.4.4
 * [MSOURCES-70](https://issues.apache.org/jira/browse/MSOURCES-70) - Update of maven-invoker-plugin to 1.9

Enjoy,

-The Apache Maven team
