---
title: "Apache Maven PMD Plugin Version 3.1 Released"
date: 2014-03-16T10:25:00
lastmod: 2014-03-16T10:25
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Maven team is pleased to announce the release of the 
[Apache Maven PMD Plugin, version 3.1](http://maven.apache.org/plugins/maven-pmd-plugin/)

A Maven plugin for the PMD toolkit, that produces a report on both code rule violations 
and detected copy and paste fragments, as well as being able to fail the build based on these metrics.


You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-pmd-plugin</artifactId>
  <version>3.1</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven PMD Plugin - Version 3.1]()

Bugs:

 * [MPMD-179](https://issues.apache.org/jira/browse/MPMD-179) Plugin generates reports incompatible with the 'maven-jxr-plugin' version 2.4
 * [MPMD-176](https://issues.apache.org/jira/browse/MPMD-176) upgrade to last 5.0.5
 * [MPMD-172](https://issues.apache.org/jira/browse/MPMD-172) Warning about missing XRef for module with no source
 * [MPMD-168](https://issues.apache.org/jira/browse/MPMD-168) Skip report generation if results are empty
 * [MPMD-167](https://issues.apache.org/jira/browse/MPMD-167) CPD performance issues
 * [MPMD-166](https://issues.apache.org/jira/browse/MPMD-166) Plugin fails when switching from 2.7.1 to 3.0.1

Improvement:

 * [MPMD-180](https://issues.apache.org/jira/browse/MPMD-180) Remove redundant "Report" word on report name labels
 * [MPMD-175](https://issues.apache.org/jira/browse/MPMD-175) Work around PMD bug #1155 which crashes the plugin with an empty ruleset element.
 * [MPMD-169](https://issues.apache.org/jira/browse/MPMD-169) Support multi-threaded mode of PMD 5

New Feature:

 * [MPMD-181](https://issues.apache.org/jira/browse/MPMD-181) Add flag to capture Benchmark information


Enjoy,

-The Maven team

