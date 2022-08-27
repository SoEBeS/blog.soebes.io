---
title: "Apache Maven Shared Dependency Analyzer Version 1.13.0 Released"
date: 2022-08-24T21:34:34
lastmod: 2022-08-24T21:34:34
categories:
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven Dependency Analyzer Version 1.13.0](https://maven.apache.org/shared/maven-dependency-analyzer/)

Analyzes the dependencies of a project for undeclared or unused artifacts.

You should specify the version in your project's dependency list:

```xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-dependency-analyzer</artifactId>
  <version>1.13.0</version>
</dependency>
```

You can download the appropriate sources etc. from the download page:
 * https://maven.apache.org/shared/maven-dependency-analyzer/download.cgi

Release Notes - Maven Shared Components - Version 1.13.0

* Bugs:
  * [MSHARED-1037](https://issues.apache.org/jira/browse/MSHARED-1037) - method type signature should not add be added to classes
  * [MSHARED-1038](https://issues.apache.org/jira/browse/MSHARED-1038) - Inner classes are in same compilation unit as container class
  * [MSHARED-1039](https://issues.apache.org/jira/browse/MSHARED-1039) - Array parsing is incorrect

* Improvements:
 
  * [MSHARED-1035](https://issues.apache.org/jira/browse/MSHARED-1035) - Get rid of maven-plugin-testing-tools for IT test
  * [MSHARED-1036](https://issues.apache.org/jira/browse/MSHARED-1036) - Project classes are analyzed many times

* Task:
 
  * [MSHARED-1119](https://issues.apache.org/jira/browse/MSHARED-1119) - Cleanup IT tests

* Dependency upgrades:
 
  * [MSHARED-916](https://issues.apache.org/jira/browse/MSHARED-916) - Require Maven 3.2.5+ (drop dependency to Maven 2.0.5)
  * [MSHARED-1084](https://issues.apache.org/jira/browse/MSHARED-1084) - Bump asm from 9.2 to 9.3 -  Java 19 support
  * [MSHARED-1085](https://issues.apache.org/jira/browse/MSHARED-1085) - Upgrade Parent to 37

Enjoy,

-The Apache Maven team