---
title: "Apache Maven Assembly Plugin Version 2.6 Released"
date: 2015-10-10T21:18:00
lastmod: 2015-10-10T21:18:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Assembly Plugin, version 2.6](http://maven.apache.org/plugins/maven-assembly-plugin/).

The Assembly Plugin for Maven is primarily intended to allow users to aggregate
the project output along with its dependencies, modules, site documentation,
and other files into a single distributable archive.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-assembly-plugin</artifactId>
  <version>2.6</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Assembly Plugin - Version 2.6](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317220&version=12333764)

Improvements:

 * [MASSEMBLY-780](https://issues.apache.org/jira/browse/MASSEMBLY-780) - Snappy supported

Important Note:: This version requires Java 1.6.

Enjoy,

-The Apache Maven team
