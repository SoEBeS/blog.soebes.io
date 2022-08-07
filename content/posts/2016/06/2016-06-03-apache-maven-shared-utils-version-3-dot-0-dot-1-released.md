---
title: "Apache Maven Shared Utils Version 3.0.1 Released"
date: 2016-06-03T11:05:00
lastmod: 2016-06-03T11:05
categories:
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shared Utils, version 3.0.1](https://maven.apache.org/shared/maven-shared-utils/).

The release contains a number of bug fixes.

You should specify the version in your project's dependencies configuration:

```xml
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-shared-utils</artifactId>
  <version>3.0.1</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Shared Utils - Version 3.0.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12335471)


Bug:

 * [MSHARED-475](https://issues.apache.org/jira/browse/MSHARED-475) - Not able to compile a module named as "RCS" and "SCCS"

Improvements:

 * [MSHARED-503](https://issues.apache.org/jira/browse/MSHARED-503) - Upgrade maven-shared-components parent to version 22
 * [MSHARED-504](https://issues.apache.org/jira/browse/MSHARED-504) - Remove System.gc() call
 * [MSHARED-534](https://issues.apache.org/jira/browse/MSHARED-534) - Upgrade com.google.code.findbugs:jsr305 to 3.0.0
 * [MSHARED-535](https://issues.apache.org/jira/browse/MSHARED-535) - Upgrade maven-shared-components parent to version 30
 * [MSHARED-536](https://issues.apache.org/jira/browse/MSHARED-536) - Removed unused plugin declaration for maven-assembly-plugin
 * [MSHARED-537](https://issues.apache.org/jira/browse/MSHARED-537) - Removing plugin declaration which is handled by the parent
 * [MSHARED-538](https://issues.apache.org/jira/browse/MSHARED-538) - Upgrade maven-fluido-skin to 1.5


Enjoy,

-The Apache Maven team
