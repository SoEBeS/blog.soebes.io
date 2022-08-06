---
title: "Apache Maven Shared Dependency Analyzer Version 1.7 Released"
date: 2017-05-03T20:03:22
lastmod: 2017-05-03T20:03:22
categories:
  - Maven
  - Maven-Plugins
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven Dependency Analyzer Version 1.7](https://maven.apache.org/shared/maven-dependency-analyzer/)

Analyzes the dependencies of a project for undeclared or unused artifacts.

You should specify the version in your project's dependency list:

```xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-dependency-analyzer</artifactId>
  <version>1.7</version>
</dependency>
```

<!-- more -->

[Release Notes - Maven Dependency Analzyer Version 1.7](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12334271)

Bugs:

 * [MSHARED-428](https://issues.apache.org/jira/browse/MSHARED-428) - - maven-dependency-analyzer does not detect method references
 * [MSHARED-545](https://issues.apache.org/jira/browse/MSHARED-545) - - maven-dependency-analyzer fails on classes containing constant long or double

Improvements:

 * [MSHARED-412](https://issues.apache.org/jira/browse/MSHARED-412) - - Change the visibility of DefaultProjectDependencyAnalyzer's buildArtifactClassMap() from private to protected
 * [MSHARED-470](https://issues.apache.org/jira/browse/MSHARED-470) - - Upgrade maven-shared-components parent to version 22
 * [MSHARED-525](https://issues.apache.org/jira/browse/MSHARED-525) - - Upgrade maven-shared-components parent to version 30

Tasks:

 * [MSHARED-633](https://issues.apache.org/jira/browse/MSHARED-633) - - Upgrade plexus-component-metadata / plexus-component-annotation to 1.7.1
 * [MSHARED-634](https://issues.apache.org/jira/browse/MSHARED-634) - - Using maven-inovker 2.2 to ensure it works with all Maven versions on Windows
 

Enjoy,

-The Apache Maven team

Karl Heinz Marbaise
