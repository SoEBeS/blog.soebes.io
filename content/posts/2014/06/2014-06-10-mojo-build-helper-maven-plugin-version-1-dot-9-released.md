---
title: "Mojo Build Helper Maven Plugin Version 1.9 Released"
date: 2014-06-10T18:20:00
lastmod: 2014-06-10T18:20
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Mojo team is pleased to announce the release of the
[build-helper-maven-plugin version 1.9](http://mojo.codehaus.org/build-helper-maven-plugin/).

This plugin contains various small independent goals to assist with Maven
build lifecycle.

To get this update, simply specify the version in your project's plugin
configuration:

```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>build-helper-maven-plugin</artifactId>
  <version>1.9</version>
</plugin>
```

<!-- more -->

[Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11702&version=19171)

Improvement:

 * [MBUILDHELPER-64](https://issues.apache.org/jira/browse/MBUILDHELPER-64) - Add ability to execute mutiple RegexProperty per execution to simply the xml configuration in pom

New Feature:

 * [MBUILDHELPER-66](https://issues.apache.org/jira/browse/MBUILDHELPER-66) - Add ability to retrieve number of available CPUs

Task:

 * [MBUILDHELPER-65](https://issues.apache.org/jira/browse/MBUILDHELPER-65) - reserve-ports-with-min IT fails on windows

Enjoy,

The Mojo team.
