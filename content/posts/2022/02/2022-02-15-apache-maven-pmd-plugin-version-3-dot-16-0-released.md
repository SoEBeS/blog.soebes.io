---
title: "Apache Maven PMD Plugin Version 3.16.0 Released"
date: 2022-02-15T21:34:12
lastmod: 2022-02-15T21:34:12
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Maven team is pleased to announce the release of the 
[Apache Maven PMD Plugin, version 3.16.0](https://maven.apache.org/plugins/maven-pmd-plugin/)

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
  <version>3.16.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven PMD Plugin - Version 3.16.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?version=12350599&styleName=Text&projectId=12317621)

* Bugs:

  * [MPMD-325](https://issues.apache.org/jira/browse/MPMD-325) - Could not find class due to IncompatibleClassChangeError warning
  * [MPMD-324](https://issues.apache.org/jira/browse/MPMD-324) - Ruleset URLs have hyphen replaced with forwardslash
  * [MPMD-323](https://issues.apache.org/jira/browse/MPMD-323) - ResourceManager should use project base dir instead of pom location

* Improvement:
 
  * [MPMD-328](https://issues.apache.org/jira/browse/MPMD-328) - Shared GitHub Actions

* Tasks:

  * [MPMD-327](https://issues.apache.org/jira/browse/MPMD-327) - Upgrade to PMD 6.42.0
  * [MPMD-326](https://issues.apache.org/jira/browse/MPMD-326) - Set Maven 3.1.1 as minimum version

Enjoy,

-The Maven team
