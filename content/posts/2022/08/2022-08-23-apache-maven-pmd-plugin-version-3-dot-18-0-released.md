---
title: "Apache Maven PMD Plugin Version 3.18.0 Released"
date: 2022-08-23T19:32:32
lastmod: 2022-08-23T19:32:32
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Maven team is pleased to announce the release of the 
[Apache Maven PMD Plugin, version 3.18.0](https://maven.apache.org/plugins/maven-pmd-plugin/)

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
  <version>3.18.0</version>
</plugin>
```

[Release Notes - Apache Maven PMD Plugin - Version 3.18.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317621&version=12351813)

* New Feature:
 
  * [MPMD-348](https://issues.apache.org/jira/browse/MPMD-348) - Support Java 19

* Dependency upgrades:
 
  * [MPMD-345](https://issues.apache.org/jira/browse/MPMD-345) - Upgrade to PMD 6.47.0
  * [MPMD-347](https://issues.apache.org/jira/browse/MPMD-347) - Upgrade to PMD 6.48.0
  * [MPMD-349](https://issues.apache.org/jira/browse/MPMD-349) - Upgrade Maven Reporting API to 3.1.1/Maven Reporting Impl to 3.2.0
  * [MPMD-350](https://issues.apache.org/jira/browse/MPMD-350) - Upgrade Maven Shared Utils to 3.3.4
  * [MPMD-351](https://issues.apache.org/jira/browse/MPMD-351) - Upgrade Maven Artifact Transfer to 0.13.1
  * [MPMD-352](https://issues.apache.org/jira/browse/MPMD-352) - Upgrade Maven Common Artifact Filters to 3.3.1

Compatibility Notice: 
 * For technical reasons the parameter `sourceEncoding` has been replaced with `inputEncoding`. 
   * For details please see [MPMD-349](https://issues.apache.org/jira/browse/MPMD-349)
   * [Git commit](https://github.com/apache/maven-pmd-plugin/commit/2b7d2d7065bae1f984c82d210062064376fbd430)

Enjoy,

-The Maven team
