---
title: "Apache Maven PMD Plugin Version 3.12.0 Released"
date: 2019-04-22T13:30:46
lastmod: 2019-04-22T13:30:46
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Maven team is pleased to announce the release of the 
[Apache Maven PMD Plugin, version 3.12.0](https://maven.apache.org/plugins/maven-pmd-plugin/)

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
  <version>3.12.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven PMD Plugin - Version 3.12.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317621&version=12344380)

Bugs:

- [MPMD-277](https://issues.apache.org/jira/browse/MPMD-277) - Plugin tries to download local submodules from repo

New Features:

- [MPMD-280](https://issues.apache.org/jira/browse/MPMD-280) - Support targetJdk 12
- [MPMD-281](https://issues.apache.org/jira/browse/MPMD-281) - Display found violations grouped by priority

Improvements:

- [MPMD-279](https://issues.apache.org/jira/browse/MPMD-279) - Improve documentation of maxAllowedViolations
- [MPMD-282](https://issues.apache.org/jira/browse/MPMD-282) - Add rule name to HTML report

Dependency upgrades:

- [MPMD-275](https://issues.apache.org/jira/browse/MPMD-275) - Upgrade to PMD 6.13.0
- [MPMD-284](https://issues.apache.org/jira/browse/MPMD-284) - Upgrade parent to 33

Enjoy,

-The Maven team
