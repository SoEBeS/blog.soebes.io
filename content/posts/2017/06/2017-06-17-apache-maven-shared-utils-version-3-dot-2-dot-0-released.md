---
title: "Apache Maven Shared Utils Version 3.2.0 Released"
date: 2017-06-17T23:10:00
lastmod: 2017-06-17T23:10
categories:
  - Maven
  - Maven-Plugins
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shared Utils, version 3.2.0](https://maven.apache.org/shared/maven-shared-utils/).

The release contains a number of bug fixes.

You should specify the version in your project's dependencies configuration:

```xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-shared-utils</artifactId>
  <version>3.2.0</version>
</dependency>
```

<!-- more -->

[Release Notes - Maven Shared Utils - Version 3.2.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12338026)

Bugs:

 * [MSHARED-574](https://issues.apache.org/jira/browse/MSHARED-574) - - UT failure on Windows: utils.io.Java7SupportTest createAndReadSymlink
 * [MSHARED-610](https://issues.apache.org/jira/browse/MSHARED-610) - - PrettyPrintXMLWriter internally uses java.io.PrintWriter without checking for any errors.
 * [MSHARED-617](https://issues.apache.org/jira/browse/MSHARED-617) - - StreamFeeder should flush OutputStream
 * [MSHARED-618](https://issues.apache.org/jira/browse/MSHARED-618) - - CommandLineCallable does not always call the 'runAfterProcessTermination' runnable.
 * [MSHARED-619](https://issues.apache.org/jira/browse/MSHARED-619) - - StreamFeeder silently ignores exceptions.
 * [MSHARED-622](https://issues.apache.org/jira/browse/MSHARED-622) - - CommandLineCallable silently ignores exceptions thrown from the stdin processor (StreemFeeder).
 * [MSHARED-630](https://issues.apache.org/jira/browse/MSHARED-630) - - Javadoc of several classes still references Maven 3.4.0 for color support

Improvements:

 * [MSHARED-587](https://issues.apache.org/jira/browse/MSHARED-587) - - remove logger level API from MessageBuilder
 * [MSHARED-620](https://issues.apache.org/jira/browse/MSHARED-620) - - CommandLineCallable should defer starting threads until called.
 * [MSHARED-621](https://issues.apache.org/jira/browse/MSHARED-621) - - CommandLineCallable should calculate process timeouts using 'System.nanoTime' instead of 'System.currentTimeMillis'.
 * [MSHARED-639](https://issues.apache.org/jira/browse/MSHARED-639) - - Removed prerequisites cause it is not a plugin

Task:

 * [MSHARED-623](https://issues.apache.org/jira/browse/MSHARED-623) - - Deprecation of methods 'close' and 'flush' of class 'StreamPumper'.


Enjoy,

-The Apache Maven team
