---
title: "Mojo FindBugs Maven Plugin Version 2.5.4 Released"
date: 2014-05-22T19:00:00
lastmod: 2014-05-22T19:00:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
Hi,
The Mojo team is pleased to announce the release of the 
[FindBugs Maven Plugin version 2.5.4](http://mojo.codehaus.org/findbugs-maven-plugin-2.5.4/)
FindBugs uses static analysis to inspect Java bytecode for occurrences
of bug patterns.

To get this update, simply specify the version in your project's
plugin configuration:

```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>findbugs-maven-plugin</artifactId>
  <version>2.5.4</version>
</plugin>
```

<!-- more -->

We solved the following issues:

Release Notes - Mojo's FindBugs Maven Plugin - Version 2.5.4

Bug:

 * [MFINDBUGS-189](https://issues.apache.org/jira/browse/MFINDBUGS-189) - The plugin generates reports incompatible with the 'maven-jxr-plugin' version 2.4.

Improvement:

 * [MFINDBUGS-195](https://issues.apache.org/jira/browse/MFINDBUGS-195) - Update to Findbugs 2.0.3


Enjoy,
Garvin LeClaire
