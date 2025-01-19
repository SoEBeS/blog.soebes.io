---
title: "Apache Maven PMD Plugin Version 3.3 Released"
date: 2014-11-22T22:35:00
lastmod: 2014-11-22T22:35:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Maven team is pleased to announce the release of the 
[Apache Maven PMD Plugin, version 3.3](http://maven.apache.org/plugins/maven-pmd-plugin/).

A Maven plugin for the PMD toolkit, that produces a report on both code rule
violations and detected copy and paste fragments, as well as being able to fail
the build based on these metrics.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-pmd-plugin</artifactId>
  <version>3.3</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven PMD Plugin - Version 3.3](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11140&version=20557)

Bug:

 * [MPMD-192](https://issues.apache.org/jira/browse/MPMD-192) - Regression MPMD-89 is showing up with Maven 2.2.1 again for maven-pmd-plugin-3.3

Improvements:

 * [MPMD-189](https://issues.apache.org/jira/browse/MPMD-189) - MavenProject/MavenSession Injection as a paremeter instead as a component.
 * [MPMD-191](https://issues.apache.org/jira/browse/MPMD-191) - Update to PMD 5.2.1

Enjoy,

-The Maven team
