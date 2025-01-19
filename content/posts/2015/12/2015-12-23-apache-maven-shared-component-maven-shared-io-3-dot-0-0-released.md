---
title: "Apache Maven Shared Component: Maven Shared IO 3.0.0 Released"
date: 2015-12-23T20:58:00
lastmod: 2015-12-23T20:58:00
categories:
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven Shared IO Version 3.0.0](http://maven.apache.org/shared/maven-shared-io/).

API for I/O support like logging, download or file scanning.

Important Notes:

 * Maven 3.X only
 * JDK 6 minimum requirement

You should specify the version in your project's plugin configuration:

``` xml 
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-shared-io</artifactId>
  <version>3.0.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page](http://maven.apache.org/shared/maven-shared-io/download.cgi).

<!-- more -->
 
[Release Notes Maven Shared IO 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12334278
)

Improvements:

 * [MSHARED-471](https://issues.apache.org/jira/browse/MSHARED-471) - Upgrade maven-shared-components parent to version 22
 * [MSHARED-472](https://issues.apache.org/jira/browse/MSHARED-472) - Upgrade maven-shared-utils to 3.0.0
 * [MSHARED-473](https://issues.apache.org/jira/browse/MSHARED-473) - Upgrade Maven 3.X Only JDK 1.6
 * [MSHARED-476](https://issues.apache.org/jira/browse/MSHARED-476) - Removed the empty interface MultiChannelMessageHolder
 * [MSHARED-479](https://issues.apache.org/jira/browse/MSHARED-479) - Bump version to 3.0.0-SNAPSHOT
 
Enjoy,
 
-The Apache Maven team
