---
title: "Apache Maven Shared Dependency Analyzer Version 1.9 Released"
date: 2018-03-28T21:45:00
lastmod: 2018-03-28T21:45:00
categories:
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven Dependency Analyzer Version 1.9](https://maven.apache.org/shared/maven-dependency-analyzer/)

Analyzes the dependencies of a project for undeclared or unused artifacts.

You should specify the version in your project's dependency list:

```xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-dependency-analyzer</artifactId>
  <version>1.9</version>
</dependency>
```

<!-- more -->

[Release Notes - Maven Dependency Analzyer Version 1.9](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12342557)

Bug:

 * [MSHARED-710](https://issues.apache.org/jira/browse/MSHARED-710) - JDK 9 / 10 Issue - Unknown constant pool type

Dependency upgrades:

 * [MSHARED-707](https://issues.apache.org/jira/browse/MSHARED-707) - Upgrade parent to 31
 * [MSHARED-708](https://issues.apache.org/jira/browse/MSHARED-708) - Upgrade org.ow2.asm:asm:6.0 to 6.1 JDK 10 issues


Enjoy,

-The Apache Maven team

