---
title: "Apache Maven Shared Component - Maven Repository Builder 1.0 Released"
date: 2014-11-15T18:50:00
lastmod: 2014-11-15T18:50:00
categories:
  - Maven
  - Maven-Shared
---
The Maven team is pleased to announce the release of the 
[Maven Repository Builder shared library, version 1.0](http://maven.apache.org/shared/maven-repository-builder/).

This library is used primarily to assemble Maven repository directory
structures based on the dependencies of a project or set of projects,
and provides the implementation for the <repositories/> section of
the Maven Assembly Plugin assembly descriptor.


You can use the repository builder library in your own project by
adding the following dependency:

```xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-repository-builder</artifactId>
  <version>1.0</version>
</dependency>
```

<!-- more -->

[Release Notes maven-repository-builder version 1.0](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11761&version=17140)

Bug:

 * [MSHARED-274](https://issues.apache.org/jira/browse/MSHARED-274) - Missing license file

Improvements:

 * [MSHARED-371](https://issues.apache.org/jira/browse/MSHARED-371) - Increase chance of java8 compliance by updating to plexus-component-* 1.6
 * [MSHARED-383](https://issues.apache.org/jira/browse/MSHARED-383) - Remove annyoing stacktrace that is logged in a non-exceptional case

Task:

 * [MSHARED-184](https://issues.apache.org/jira/browse/MSHARED-184) - remove DigestUtils

Enjoy,

-The Maven team
