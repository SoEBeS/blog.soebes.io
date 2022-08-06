---
title: "Apache Maven Shared Utils Version 3.0.0 Released"
date: 2015-10-16T11:05:00
lastmod: 2015-10-16T11:05
categories:
  - Maven
  - Maven-Plugins
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shared Utils, version 3.0.0](https://maven.apache.org/shared/maven-shared-utils/).

The release contains a number of bug fixes.

You should specify the version in your project's dependencies configuration:

```xml
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-shared-utils</artifactId>
  <version>3.0.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Shared Utils - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12333677)

Bug:

 * [MSHARED-444](https://issues.apache.org/jira/browse/MSHARED-444) - Make the optional dependency (commons-io) to a usual dependency

Improvements:

 * [MSHARED-439](https://issues.apache.org/jira/browse/MSHARED-439) - Upgrade to Maven 3.0 dependencies and JDK6
 * [MSHARED-440](https://issues.apache.org/jira/browse/MSHARED-440) - Bump version number to 3.0.0
 * [MSHARED-442](https://issues.apache.org/jira/browse/MSHARED-442) - Remove shading of artifact instead of using simple jar
 * [MSHARED-443](https://issues.apache.org/jira/browse/MSHARED-443) - Use fluido skin for site.

Enjoy,

-The Apache Maven team
