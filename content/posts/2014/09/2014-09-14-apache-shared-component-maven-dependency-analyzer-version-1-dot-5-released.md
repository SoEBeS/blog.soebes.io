---
title: "Apache Shared Component: Maven Dependency Analyzer version 1.5 Released"
date: 2014-09-14T19:02:00
lastmod: 2014-09-14T19:02:00
categories:
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Shared Component: Apache Maven Dependency Analyzer Version 1.5](http://maven.apache.org/shared/maven-dependency-analyzer/)

Analyzes the dependencies of a project for undeclared or unused artifacts.

```xml
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-dependency-analyzer</artifactId>
  <version>1.5</version>
</plugin>
```

<!-- more -->

[Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11781&version=19839)

Bugs:

 * [MSHARED-285](https://issues.apache.org/jira/browse/MSHARED-285) - Port tests to JUnit 4.11
 * [MSHARED-307](https://issues.apache.org/jira/browse/MSHARED-307) - Performance: The implementation of DefaultClassAnalyzer unnecessarily scans jar files bodies
 * [MSHARED-323](https://issues.apache.org/jira/browse/MSHARED-323) - DefaultProjectDependencyAnalyzer does not correctly transform Files with Spaces to URLs
 * [MSHARED-327](https://issues.apache.org/jira/browse/MSHARED-327) - maven-dependency-analyzer not compatible with Java 8

Enjoy,

-The Maven team

Karl-Heinz Marbaise
