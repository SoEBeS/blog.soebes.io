---
title: "Apache Maven Shared Component: Maven Reporting Exec Version 2.0.0-M1"
date: 2022-04-27T23:36:36
lastmod: 2022-04-27T23:36:36
categories:
  - BM
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven Reporting Exec Version 2.0.0-M1](https://maven.apache.org/shared/maven-reporting-exec/).

Classes to prepare report plugins execution with Maven 3, through
[MavenReportExecutor](https://maven.apache.org/shared/maven-reporting-exec/apidocs/org/apache/maven/reporting/exec/MavenReportExecutor.html) ([implementation](https://maven.apache.org/shared/maven-reporting-exec/apidocs/org/apache/maven/reporting/exec/DefaultMavenReportExecutor.html)). 

You should specify the version in your project's plugin configuration:

``` xml 
<dependency>
  <groupId>org.apache.maven.reporting</groupId>
  <artifactId>maven-reporting-exec</artifactId>
  <version>2.0.0-M1</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/shared/maven-reporting-exec/download.cgi).

<!-- more -->
 
[Release Notes Apache Maven Shared Component: Maven Reporting Exec Version 2.0.0-M1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12348384 )

* Tasks:
 
  * [MSHARED-1060](https://issues.apache.org/jira/browse/MSHARED-1060) - Upgrade to Java 8
  * [MSHARED-1061](https://issues.apache.org/jira/browse/MSHARED-1061) - Replace Plexus Logger with SLF4J
  * [MSHARED-1064](https://issues.apache.org/jira/browse/MSHARED-1064) - Reintroduce org.codehaus.doxia.sink.Sink

* Dependency upgrades:
 
  * [MSHARED-1062](https://issues.apache.org/jira/browse/MSHARED-1062) - Upgrade Maven Reporting API to 4.0.0-M1
  * [MSHARED-1063](https://issues.apache.org/jira/browse/MSHARED-1063) - Upgrade to Doxia Sitetools to 2.0.0-M2
  * [MSHARED-1065](https://issues.apache.org/jira/browse/MSHARED-1065) - Upgrade plugins and components in UTs and ITs

Enjoy,
 
-The Apache Maven team
