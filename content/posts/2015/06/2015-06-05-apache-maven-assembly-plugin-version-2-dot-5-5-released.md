---
title: "Apache Maven Assembly Plugin Version 2.5.5 Released"
date: 2015-06-05T19:34:00
lastmod: 2015-06-05T19:34:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Assembly Plugin, version 2.5.5](http://maven.apache.org/plugins/maven-assembly-plugin/).

The Assembly Plugin for Maven is primarily intended to allow users to aggregate
the project output along with its dependencies, modules, site documentation,
and other files into a single distributable archive.

This release fixes a serious problem with 2.5.5 when creating jar
files, MASSEMBLY-768.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-assembly-plugin</artifactId>
  <version>2.5.5</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Assembly Plugin - Version 2.5.5](https://issues.apache.org/jira/secure/ReleaseNote.jspa?version=12332381&styleName=Text&projectId=12317220)

Bugs:

 * [MASSEMBLY-767](https://issues.apache.org/jira/browse/MASSEMBLY-767) - Schema missing from the web site
 * [MASSEMBLY-768](https://issues.apache.org/jira/browse/MASSEMBLY-768) - JarInputStream unable to find  manifest created by version 2.5.4
 * [MASSEMBLY-769](https://issues.apache.org/jira/browse/MASSEMBLY-769) - ZIP fileMode permissions not properly set with dependencySet and unpackOptions


Enjoy,

-The Apache Maven team
