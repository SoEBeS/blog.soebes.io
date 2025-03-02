---
title: "Mojo FindBugs Maven Plugin Version 2.5.5 Released"
date: 2014-07-25T19:39:00
lastmod: 2014-07-25T19:39:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
Hi,

The Mojo team is pleased to announce the release of the 
[FindBugs Maven Plugin version 2.5.5](http://mojo.codehaus.org/findbugs-maven-plugin-2.5.5/).

FindBugs uses static analysis to inspect Java bytecode for occurrences of bug patterns. 

To get this update, simply specify the version in your project's plugin configuration: 


```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>findbugs-maven-plugin</artifactId>
  <version>2.5.5</version>
</plugin>
```xml

<!-- more -->

We solved the following issues:

Release Notes - Mojo's FindBugs Maven Plugin - Version 2.5.5

Bug:

 * [MFINDBUGS-198](https://issues.apache.org/jira/browse/MFINDBUGS-198) - Add maxRank to the check goal to allow eclipse m2e findbugs plugin to pick up this configuration

Improvement:

 * [MFINDBUGS-197](https://issues.apache.org/jira/browse/MFINDBUGS-197) - Remove redundant "Report" word on report name labels

