---
title: "Apache Maven PMD Plugin Version 3.20.0 Released"
date: 2023-01-11T20:35:35
lastmod: 2023-01-11T20:35:35
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven PMD Plugin, version 3.20.0](https://maven.apache.org/plugins/maven-pmd-plugin/)

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
  <version>3.20.0</version>
</plugin>
```

[Release Notes - Apache Maven PMD Plugin - Version 3.20.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317621&version=12352270)

* Bug
  * [MPMD-335](https://issues.apache.org/jira/browse/MPMD-335) - Aggregate mode doesn't use additional repositories

* Task
  * [MPMD-361](https://issues.apache.org/jira/browse/MPMD-361) - Explicitly start and end tables with Doxia Sinks in report renderers

* Dependency upgrades
  * [MPMD-356](https://issues.apache.org/jira/browse/MPMD-356) - Upgrade to PMD 6.50.0
  * [MPMD-357](https://issues.apache.org/jira/browse/MPMD-357) - Upgrade to PMD 6.51.0
  * [MPMD-358](https://issues.apache.org/jira/browse/MPMD-358) - Upgrade to PMD 6.52.0
  * [MPMD-360](https://issues.apache.org/jira/browse/MPMD-360) - Upgrade to PMD 6.53.0



Enjoy,

- The Maven team
