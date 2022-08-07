---
title: "Apache Maven PMD Plugin Version 3.13.0 Released"
date: 2020-02-03T21:57:12
lastmod: 2020-02-03T21:57:12
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Maven team is pleased to announce the release of the 
[Apache Maven PMD Plugin, version 3.13.0](https://maven.apache.org/plugins/maven-pmd-plugin/)

A Maven plugin for the PMD toolkit, that produces a report on both code rule
violations and detected copy and paste fragments, as well as being able to fail
the build based on these metrics.

You can download the appropriate sources etc. from the 
[download page](https://maven.apache.org/plugins/maven-pmd-plugin/download.cgi).

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-pmd-plugin</artifactId>
  <version>3.13.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven PMD Plugin - Version 3.13.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317621&version=12345409)

* Bugs:

  * [MPMD-288](https://issues.apache.org/jira/browse/MPMD-288) - NullPointerException when File.list() returns null
  * [MPMD-289](https://issues.apache.org/jira/browse/MPMD-289) - check: unable to find pmd.xml
  * [MPMD-292](https://issues.apache.org/jira/browse/MPMD-292) - PMD Log is not always integrated into maven log
  * [MPMD-295](https://issues.apache.org/jira/browse/MPMD-295) - Maven PMD Plugin fails on Java 13: Unsupported targetJdk value '13'

* New Feature:

  * [MPMD-269](https://issues.apache.org/jira/browse/MPMD-269) - Display PMD version that is being used

* Improvements:

  * [MPMD-241](https://issues.apache.org/jira/browse/MPMD-241) - Document the version relationship between plugin and pmd
  * [MPMD-287](https://issues.apache.org/jira/browse/MPMD-287) - Add additional contribution information for GitHub
  * [MPMD-296](https://issues.apache.org/jira/browse/MPMD-296) - Copy ruleset files into a subdirectory of target

* Wish:

  * [MPMD-225](https://issues.apache.org/jira/browse/MPMD-225) - Create report even if no warnings have been found by default

* Tasks:

  * [MPMD-285](https://issues.apache.org/jira/browse/MPMD-285) - remove pluginTools version override for build (which block reproducible build...)
  * [MPMD-293](https://issues.apache.org/jira/browse/MPMD-293) - Fix integration test builds on jenkins

Dependency upgrade:

[MPMD-291](https://issues.apache.org/jira/browse/MPMD-291) - Upgrade to PMD 6.21.0

Enjoy,

-The Maven team
