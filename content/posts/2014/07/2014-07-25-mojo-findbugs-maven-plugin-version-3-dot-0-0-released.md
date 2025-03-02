---
title: "Mojo FindBugs Maven Plugin Version 3.0.0 Released"
date: 2014-07-25T19:41:00
lastmod: 2014-07-25T19:41:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
Hi,

The Mojo team is pleased to announce the release of the 
[FindBugs Maven Plugin version 3.0.0](http://mojo.codehaus.org/findbugs-maven-plugin/).

FindBugs uses static analysis to inspect Java bytecode for occurrences of bug patterns. 

To get this update, simply specify the version in your project's plugin configuration: 


```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>findbugs-maven-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```xml

<!-- more -->

We solved the following issues:

Release Notes - Mojo's FindBugs Maven Plugin - Version 3.0.0

New Feature:

 * [MFINDBUGS-199](https://issues.apache.org/jira/browse/MFINDBUGS-199) - Upgrade to Findbugs 3.0.0


