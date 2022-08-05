---
title: "Apache Maven Shared Dependency Analyzer Version 1.12.0 Released"
date: 2022-01-29T12:55:55
lastmod: 2022-01-29T12:55:55
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven Dependency Analyzer Version 1.12.0](https://maven.apache.org/shared/maven-dependency-analyzer/)

Analyzes the dependencies of a project for undeclared or unused artifacts.

You should specify the version in your project's dependency list:

```xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-dependency-analyzer</artifactId>
  <version>1.12.0</version>
</dependency>
```

<!-- more -->

[Release Notes - Maven Dependency Analzyer Version 1.12.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12348814)

* Bugs:
 
  * [MSHARED-785](https://issues.apache.org/jira/browse/MSHARED-785) - ConstantPoolParser false-positives
  * [MSHARED-997](https://issues.apache.org/jira/browse/MSHARED-997) - Failed / error test DefaultProjectDependencyAnalyzerTest in maven-dependency-analyzer
  * [MSHARED-1021](https://issues.apache.org/jira/browse/MSHARED-1021) - Handle different classes from same artifact used by model and test code
  * [MSHARED-1023](https://issues.apache.org/jira/browse/MSHARED-1023) - dependency:analyze detected wrong transitive dependency

* New Features:

  * [MSHARED-632](https://issues.apache.org/jira/browse/MSHARED-632) - Expose which dependency classes are used and where
  * [MSHARED-1020](https://issues.apache.org/jira/browse/MSHARED-1020) - Include class names in used undeclared dependencies

* Improvement:
 
  * [MSHARED-982](https://issues.apache.org/jira/browse/MSHARED-982) - Use OpCodes.ASM9 (ASM 9.2)


Enjoy,

-The Apache Maven team

