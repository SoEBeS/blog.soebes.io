---
title: "Apache Maven Shade Plugin Version 3.2.3 Released"
date: 2020-04-15T23:35:52
lastmod: 2020-04-15T23:35:52
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shade Plugin, version 3.2.3](https://maven.apache.org/plugins/maven-shade-plugin/).

This plugin provides the capability to package the artifact in an uber-jar,
including its dependencies and to shade - i.e. rename - the packages of some of
the dependencies.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-shade-plugin</artifactId>
  <version>3.2.3</version>
</plugin>
```

You can download the [appropriate sources etc. from the download page][download-page]

<!-- more -->

 
[Release Notes - Maven Shade Plugin - Version 3.2.3](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317921&version=12346981)


* Bug:
  * [MSHADE-352](https://issues.apache.org/jira/browse/MSHADE-352) - shaded jars are not reproducible when using transformer

* Dependency upgrades:
  * [MSHADE-355](https://issues.apache.org/jira/browse/MSHADE-355) - Java 15 Compatibility - JDependecny/ASM Upgrade
  * [MSHADE-357](https://issues.apache.org/jira/browse/MSHADE-357) - Upgrade asm to 8.0

Enjoy,

-The Apache Maven team

[download-page]: https://maven.apache.org/shared/maven-archiver/download.cgi
