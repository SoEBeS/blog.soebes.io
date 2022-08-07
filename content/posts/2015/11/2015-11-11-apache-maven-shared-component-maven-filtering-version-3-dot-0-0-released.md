---
title: "Apache Maven Shared Component - Maven Filtering Version 3.0.0 Released"
date: 2015-11-11T13:31:45
lastmod: 2015-11-11T13:31:45
categories:
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven Filtering Version 3.0.0](http://maven.apache.org/shared/maven-filtering/).

The goal is to provide a shared component for all plugins that needs to filter
resources.

Important Notes:

 * Maven 3.X only
 * JDK 6 minimum requirement

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-filtering</artifactId>
  <version>3.0.0</version>
</plugin>
```

[You can download the appropriate sources etc. from the download page](http://maven.apache.org/shared/maven-filtering/download.cgi).


<!-- more -->

[Release Notes - Maven Filtering - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12331472)

Bug:

 * [MSHARED-368](https://issues.apache.org/jira/browse/MSHARED-368) -  Update plexus-interpolation to 1.21 to avoid potential thread safety issues

Improvements:

 * [MSHARED-367](https://issues.apache.org/jira/browse/MSHARED-367) -  Fixed Checkstyle reported errors / warnings
 * [MSHARED-370](https://issues.apache.org/jira/browse/MSHARED-370) -  Text on the main page should be changed
 * [MSHARED-371](https://issues.apache.org/jira/browse/MSHARED-371) -  Increase chance of java8 compliance by updating to plexus-component-* 1.6
 * [MSHARED-378](https://issues.apache.org/jira/browse/MSHARED-378) -  Upgrade maven-shared-utils to 0.7
 * [MSHARED-441](https://issues.apache.org/jira/browse/MSHARED-441) -  Upgrade maven-shared-utils to 3.0.0
 * [MSHARED-451](https://issues.apache.org/jira/browse/MSHARED-451) -  Upgrade Maven 3.0 + JDK 6
 * [MSHARED-454](https://issues.apache.org/jira/browse/MSHARED-454) -  Removed hard code version for maven-changes-plugin
 * [MSHARED-455](https://issues.apache.org/jira/browse/MSHARED-455) -  Update to new maven-shared-components parent pom version 22
 * [MSHARED-463](https://issues.apache.org/jira/browse/MSHARED-463) -  Upgrade to annotation based usage instead of XDoclet
 * [MSHARED-464](https://issues.apache.org/jira/browse/MSHARED-464) -  Upgrade user documentation

Task:

 * [MSHARED-456](https://issues.apache.org/jira/browse/MSHARED-456) -  Removed @Deprecated marked code

Enjoy,

-The Apache Maven team
