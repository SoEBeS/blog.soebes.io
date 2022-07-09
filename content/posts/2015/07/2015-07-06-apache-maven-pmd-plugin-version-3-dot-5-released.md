---
title: "Apache Maven PMD Plugin Version 3.5 Released"
date: 2015-07-06T22:47:00
lastmod: 2015-07-06T22:47
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Maven team is pleased to announce the release of the 
[Apache Maven PMD Plugin, version 3.5](http://maven.apache.org/plugins/maven-pmd-plugin/).

A Maven plugin for the PMD toolkit, that produces a report on both code rule
violations and detected copy and paste fragments, as well as being able to fail
the build based on these metrics.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-pmd-plugin</artifactId>
  <version>3.5</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven PMD Plugin - Version 3.5](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317621&version=12330969)

Bugs:

 * [MPMD-208](https://issues.apache.org/jira/browse/MPMD-208) Warning about deprecated Rule name when using rulesets/maven.xml
 * [MPMD-205](https://issues.apache.org/jira/browse/MPMD-205) Javascript violations won't fail the build

Improvements:

 * [MPMD-211](https://issues.apache.org/jira/browse/MPMD-211) Upgrade plexus-resources from 1.0-alpha-7 to 1.1
 * [MPMD-209](https://issues.apache.org/jira/browse/MPMD-209) Upgrade to PMD 5.3.2
 * [MPMD-206](https://issues.apache.org/jira/browse/MPMD-206) Make the sourceDirectories configurable

New Feature:

 * [MPMD-207](https://issues.apache.org/jira/browse/MPMD-207) Support Javascript and JSP for CPD

Enjoy,

-The Maven team
