---
title: "Mojo Tidy Maven Plugin Version 1.0-beta-1 Released"
date: 2015-02-11T18:38:00
lastmod: 2015-02-11T18:38:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Mojo team is pleased to announce the release of the 
[Tidy Maven Plugin, version 1.0-beta-1](http://mojo.codehaus.org/tidy-maven-plugin/).

The Tidy Plugin is used when you want to sort the sections of a
pom.xml into the canonical order.


To get this update, simply specify the version in your project's
plugin configuration:

```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>tidy-maven-plugin</artifactId>
  <version>1.0-beta-1</version>
</plugin>
```
<!-- more -->

[Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11062&version=19322)

Bugs:

 * [MOJO-1981](https://issues.apache.org/jira/browse/MOJO-1981) - Empty row inserted before closing project element
 * [MOJO-1990](https://issues.apache.org/jira/browse/MOJO-1990) - build end tag is not being indented correctly for tab indention
 * [MOJO-1991](https://issues.apache.org/jira/browse/MOJO-1991) - Whitespace gets deleted around toplevel XML comments

Improvement:

 * [MOJO-2066](https://issues.apache.org/jira/browse/MOJO-2066) - JVM used to run Tidy Maven Plugin must now be Java 1.6 or newer

Wish:

 * [MOJO-1945](https://issues.apache.org/jira/browse/MOJO-1945) - tidy check goal


Enjoy,

The Mojo team.

