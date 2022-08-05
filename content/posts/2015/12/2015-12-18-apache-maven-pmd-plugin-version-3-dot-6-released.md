---
title: "Apache Maven PMD Plugin Version 3.6 Released"
date: 2015-12-18T09:12:00
lastmod: 2015-12-18T09:12
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Maven team is pleased to announce the release of the 
[Apache Maven PMD Plugin, version 3.6](http://maven.apache.org/plugins/maven-pmd-plugin/)


A Maven plugin for the PMD toolkit, that produces a report on both code rule
violations and detected copy and paste fragments, as well as being able to fail
the build based on these metrics.


You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-pmd-plugin</artifactId>
  <version>3.6</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven PMD Plugin - Version 3.6](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317621&version=12332973)

Bugs:

 * [MPMD-218](https://issues.apache.org/jira/browse/MPMD-218) - Update to PMD 5.3.5
 * [MPMD-217](https://issues.apache.org/jira/browse/MPMD-217) - False positive UselessParentheses
 * [MPMD-215](https://issues.apache.org/jira/browse/MPMD-215) - FieldDeclarationsShouldBeAtStartOfClass false positive
 * [MPMD-186](https://issues.apache.org/jira/browse/MPMD-186) - Class names with slash are omitted from exclusions on pmd:check

Enjoy,

-The Maven team
