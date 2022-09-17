---
title: "Apache Maven PMD Plugin Version 3.19.0 Released"
date: 2022-09-05T17:09:09
lastmod: 2022-09-05T17:09:09
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Maven team is pleased to announce the release of the 
[Apache Maven PMD Plugin, version 3.19.0](https://maven.apache.org/plugins/maven-pmd-plugin/)

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
  <version>3.19.0</version>
</plugin>
```

[Release Notes - Apache Maven PMD Plugin - Version 3.19.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317621&version=12352255)

* Bug:

  * [MPMD-353](https://issues.apache.org/jira/browse/MPMD-353) - API incompatibility with jansi after upgrading m-shared-utils

* Task:

  * [MPMD-354](https://issues.apache.org/jira/browse/MPMD-354) - Upgrade to PMD 6.49.0


Enjoy,

-The Maven team
