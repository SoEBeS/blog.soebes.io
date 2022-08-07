---
title: "Apache Maven Shared Invoker Version 3.0.0 Released"
date: 2017-01-27T17:15:12
lastmod: 2017-01-27T17:15:12
categories:
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Maven Invoker, version 3.0.0](https://maven.apache.org/shared/maven-invoker/)

This API is concerned with firing a Maven build in a new JVM. It accomplishes
its task by building up a conventional Maven command line from options given in
the current request, along with those global options specified in the invoker
itself. Once it has the command line, the invoker will execute it, and capture
the resulting exit code or any exception thrown to signal a failure to execute.
Input/output control can be specified using an InputStream and up to two
InvocationOutputHandlers.

You can download the appropriate sources etc. from the 
[download page](https://maven.apache.org/shared/maven-invoker/download.cgi).


```xml
<dependencies>
  <dependency>
    <groupId>org.apache.maven.shared</groupId>
    <artifactId>maven-invoker</artifactId>
    <version>3.0.0</version>
  </dependency>
</dependencies>
```

<!-- more -->

[Release Notes - Maven Shared Components - Version maven-invoker-3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12331463)

Improvements:

 * [MSHARED-342](https://issues.apache.org/jira/browse/MSHARED-342) - Maven Invoker still using -r option when such is no longer supported
 * [MSHARED-459](https://issues.apache.org/jira/browse/MSHARED-459) - Remove deprecated parts from invoker interface
 * [MSHARED-460](https://issues.apache.org/jira/browse/MSHARED-460) - Upgrade maven-shared-components parent to version 22
 * [MSHARED-529](https://issues.apache.org/jira/browse/MSHARED-529) - Upgrade maven-shared-components parent to version 30
 * [MSHARED-568](https://issues.apache.org/jira/browse/MSHARED-568) - Using inherited site descriptor / Style
 * [MSHARED-569](https://issues.apache.org/jira/browse/MSHARED-569) - Upgrade plexus-utils to 3.0.24
 * [MSHARED-570](https://issues.apache.org/jira/browse/MSHARED-570) - Upgrade plexus-component-metadata plugin / plexus-component-annotations
 * [MSHARED-571](https://issues.apache.org/jira/browse/MSHARED-571) - Bump version to 3.0.0-SNAPSHOT
 * [MSHARED-572](https://issues.apache.org/jira/browse/MSHARED-572) - Drop Maven 2 Support


Enjoy,

-The Apache Maven team 
