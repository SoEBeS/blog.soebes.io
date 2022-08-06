---
title: "Apache Maven Shared Component: File Management 3.0.0 Released"
date: 2015-12-29T17:01:34
lastmod: 2015-12-29T17:01:34
categories:
  - Maven
  - Maven-Plugins
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: File Management Version 3.0.0](https://maven.apache.org/shared/file-management/).

The Maven File Management API provides an API to collect files from a given
directory using several include/exclude rules.
 
Important Notes:

 * Maven 3.X only
 * JDK 6 minimum requirement

You should specify the version in your project's plugin configuration:

``` xml 
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>file-management</artifactId>
  <version>3.0.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/shared/file-management/download.cgi).

<!-- more -->
 
[Release Notes File Management 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&amp;version=12331511
)

Bugs:

 * [MSHARED-92](https://issues.apache.org/jira/browse/MSHARED-92) -  Cannot retreive FileNameMapper with MapperUtil
 * [MSHARED-96](https://issues.apache.org/jira/browse/MSHARED-96) -  Sample code is not working

Improvements:

 * [MSHARED-265](https://issues.apache.org/jira/browse/MSHARED-265) -  add fileset XML descriptor documentation generated from model
 * [MSHARED-399](https://issues.apache.org/jira/browse/MSHARED-399) -  Upgrade to Maven 2.2.1 compatiblity
 * [MSHARED-400](https://issues.apache.org/jira/browse/MSHARED-400) -  Upgrade maven-shared-utils to 0.7
 * [MSHARED-401](https://issues.apache.org/jira/browse/MSHARED-401) -  Remove dependency plexus-container-default:1.0-alpha-9-stable-1
 * [MSHARED-462](https://issues.apache.org/jira/browse/MSHARED-462) -  Upgrade JUnit Test Cases to new style (JUnit 4.11)
 * [MSHARED-467](https://issues.apache.org/jira/browse/MSHARED-467) -  Upgrade Maven 3.X Only JDK 1.6
 * [MSHARED-474](https://issues.apache.org/jira/browse/MSHARED-474) -  Upgrade maven-shared-io to 3.0.0
 
Enjoy,
 
-The Apache Maven team
