---
title: "Mojo Exec Maven Plugin Version 1.3.2 Released"
date: 2014-07-28T15:28:00
lastmod: 2014-07-28T15:28
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Mojo team is pleased to announce the release of the 
[exec-maven-plugin version 1.3.2](http://mojo.codehaus.org/exec-maven-plugin/).

This plugin provides 2 goals to help execute system and Java programs.

To get this update, simply specify the version in your project's plugin
configuration:

```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>exec-maven-plugin</artifactId>
  <version>1.3.2</version>
</plugin>
```
<!-- more -->

[Release Notes](https://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11240&version=20533)

Bugs:

 * [MEXEC-138](https://issues.apache.org/jira/browse/MEXEC-138) - Console output doesn't flush
 * [MEXEC-140](https://issues.apache.org/jira/browse/MEXEC-140) - help mojo no longer working

Task:

 * [MEXEC-139](https://issues.apache.org/jira/browse/MEXEC-139) - maven 2.2.1 as minimum maven runtime

Enjoy,

The Mojo team.
