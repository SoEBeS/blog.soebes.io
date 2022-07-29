---
title: "Apache Maven Remote Resources Plugin Version 3.0.0 Released"
date: 2022-07-20T10:39:39
lastmod: 2022-07-20T10:39:39
categories:
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Remote Resources Plugin, version 3.0.0](https://maven.apache.org/plugins/maven-remote-resources-plugin/)


This plugin is used to retrieve JARs of resources from remote repositories,
process those resources, and incorporate them into JARs you build with Maven.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-remote-resources-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```
You can download the appropriate sources etc. from the [download page](https://maven.apache.org/plugins/maven-remote-resources-plugin/download.cgi)

[Release Notes - Apache Maven Remote Resources Plugin - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317825&version=12346864)

* Improvements:
 
  * [MRRESOURCES-115](https://issues.apache.org/jira/browse/MRRESOURCES-115) - make build Reproducible
  * [MRRESOURCES-118](https://issues.apache.org/jira/browse/MRRESOURCES-118) - Require Maven 3.2.5

* Task:
 
  * [MRRESOURCES-119](https://issues.apache.org/jira/browse/MRRESOURCES-119) - Update plugin dependencies

Enjoy,

-The Apache Maven team
