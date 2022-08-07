---
title: "Apache Maven PMD Plugin Version 3.7 Released"
date: 2016-10-16T19:33:00
lastmod: 2016-10-16T19:33
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Maven team is pleased to announce the release of the 
[Apache Maven PMD Plugin, version 3.7](https://maven.apache.org/plugins/maven-pmd-plugin/)


A Maven plugin for the PMD toolkit, that produces a report on both code rule
violations and detected copy and paste fragments, as well as being able to fail
the build based on these metrics.


You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-pmd-plugin</artifactId>
  <version>3.7</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven PMD Plugin - Version 3.7](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317621&version=12334373)

Bugs:

 * [MPMD-162](https://issues.apache.org/jira/browse/MPMD-162) - PMD/CPD report does not take into account pmd.excludeFromFailureFile
 * [MPMD-178](https://issues.apache.org/jira/browse/MPMD-178) - ExcludeRoots doesn't handle subdirectories (PMD isn't working nicely with Android projects)
 * [MPMD-213](https://issues.apache.org/jira/browse/MPMD-213) - Remove unnecessary (read-only) parameter "language" from check goal
 * [MPMD-219](https://issues.apache.org/jira/browse/MPMD-219) - Maven PMD Plugin ignores PMD processing errors

Improvements:

 * [MPMD-212](https://issues.apache.org/jira/browse/MPMD-212) - Add documentation and IT for MPMD-206
 * [MPMD-220](https://issues.apache.org/jira/browse/MPMD-220) - Upgrade to PMD 5.5.1 (requires Java 7)
 * [MPMD-227](https://issues.apache.org/jira/browse/MPMD-227) - Document multimodule configuration example
 * [MPMD-228](https://issues.apache.org/jira/browse/MPMD-228) - Upgrade maven-plugins to version 30
 * [MPMD-229](https://issues.apache.org/jira/browse/MPMD-229) - Cleanup POM, remove temporary workarounds

Tasks:

 * [MPMD-196](https://issues.apache.org/jira/browse/MPMD-196) - Do not rely in tests on toLowerCase but on toLowerCase(Locale.ROOT)
 * [MPMD-226](https://issues.apache.org/jira/browse/MPMD-226) - Require Java 7

Enjoy,

-The Maven team
