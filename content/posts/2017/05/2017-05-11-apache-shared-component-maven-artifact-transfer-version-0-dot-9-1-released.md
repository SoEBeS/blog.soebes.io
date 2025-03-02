---
title: "Apache Shared Component: Maven Artifact Transfer Version 0.9.1 Released"
date: 2017-05-11T21:15:00
lastmod: 2017-05-11T21:15:00
categories:
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Shared Component: Apache Maven Artifact Transfer Version 0.9.1](https://maven.apache.org/shared/maven-artifact-transfer/)

An API to install, deploy and resolving artifacts with Maven3

```xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-artifact-transfer</artifactId>
  <version>0.9.1</version>
</dependency>
```

<!-- more -->

[Release Notes Apache Shared Componet Maven Artifact Transfer 0.9.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12340502)

Bug:

 * [MSHARED-602](https://issues.apache.org/jira/browse/MSHARED-602) - - NoSuchMethodException using DependencyCollector with Maven 3.0

Improvements:

 * [MSHARED-635](https://issues.apache.org/jira/browse/MSHARED-635) - - Upgrade to plexus-component-metadata/plexus-component-annotation to 1.7.1
 * [MSHARED-636](https://issues.apache.org/jira/browse/MSHARED-636) - - Upgrade maven-common-artifact-filters to 3.0.1
 * [MSHARED-637](https://issues.apache.org/jira/browse/MSHARED-637) - - Remove IOException from ProjectDeployer cause it's not thrown by the code

Enjoy,

-The Maven team

Karl-Heinz Marbaise
