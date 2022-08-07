---
title: "Apache Maven PMD Plugin Version 3.9.0 Released"
date: 2018-01-29T22:30:00
lastmod: 2018-01-29T22:30
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Maven team is pleased to announce the release of the 
[Apache Maven PMD Plugin, version 3.9.0](https://maven.apache.org/plugins/maven-pmd-plugin/)


A Maven plugin for the PMD toolkit, that produces a report on both code rule
violations and detected copy and paste fragments, as well as being able to fail
the build based on these metrics.

You can download the appropriate sources etc. from the download page:
 
https://maven.apache.org/plugins/maven-pmd-plugin/download.cgi

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-pmd-plugin</artifactId>
  <version>3.9.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven PMD Plugin - Version 3.9](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317621&version=12340516)

Bugs:

 * [MPMD-235](https://issues.apache.org/jira/browse/MPMD-235) - Javadoc errors when building with java8
 * [MPMD-240](https://issues.apache.org/jira/browse/MPMD-240) - Migrate plugin to Maven 3.0
 * [MPMD-244](https://issues.apache.org/jira/browse/MPMD-244) - Maven PMD plugin fails but no reason is given for the failure
 * [MPMD-245](https://issues.apache.org/jira/browse/MPMD-245) - targetJdk property should use maven.compiler.source by default
 * [MPMD-248](https://issues.apache.org/jira/browse/MPMD-248) - cpd-check goal leaks file handle
 * [MPMD-249](https://issues.apache.org/jira/browse/MPMD-249) - The plugin documentation point to old (deprecated) rulesets
 * [MPMD-251](https://issues.apache.org/jira/browse/MPMD-251) - Invalid report XML is generated with includeXmlInSite=true

Improvements:

 * [MPMD-239](https://issues.apache.org/jira/browse/MPMD-239) - Add documentation about upgrading PMD version at runtime
 * [MPMD-246](https://issues.apache.org/jira/browse/MPMD-246) - Output details of processing errors
 * [MPMD-247](https://issues.apache.org/jira/browse/MPMD-247) - Upgrade to PMD 6.0.1

Enjoy,

-The Maven team
