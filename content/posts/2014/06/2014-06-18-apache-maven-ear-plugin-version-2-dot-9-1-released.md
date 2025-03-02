---
title: "Apache Maven EAR Plugin Version 2.9.1 Released"
date: 2014-06-18T23:39:00
lastmod: 2014-06-18T23:39:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven EAR Plugin, version 2.9.1](http://maven.apache.org/plugins/maven-ear-plugin/)

This plugin generates Java EE Enterprise Archive (EAR) file. It can also
generate the deployment descriptor file (e.g. application.xml).

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-ear-plugin</artifactId>
  <version>2.9.1</version>
</plugin>
```
<!-- more -->

[Release Notes - Maven EAR Plugin - Version 2.9.1](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11132&version=18776)

Bug:

 * [MEAR-189](https://issues.apache.org/jira/browse/MEAR-189) - fileNameMapping set to no-version breaks skinnyWars feature

Task:

 * [MEAR-185](https://issues.apache.org/jira/browse/MEAR-185) - Deprecated reference to 'defaultJavaBundleDir' in plugin documentation

-- The Apache Maven Team.
