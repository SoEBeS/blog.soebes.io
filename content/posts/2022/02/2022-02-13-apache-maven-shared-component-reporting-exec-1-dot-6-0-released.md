---
title: "Apache Maven Shared Component: Maven Reporting Exec Version 1.6.0"
date: 2022-02-13T13:36:36
lastmod: 2022-02-13T13:36:36
categories:
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven Reporting Exec Version 1.6.0](https://maven.apache.org/shared/maven-reporting-exec/).

Classes to prepare report plugins execution with Maven 3, through
[MavenReportExecutor](https://maven.apache.org/shared/maven-reporting-exec/apidocs/org/apache/maven/reporting/exec/MavenReportExecutor.html) ([implementation](https://maven.apache.org/shared/maven-reporting-exec/apidocs/org/apache/maven/reporting/exec/DefaultMavenReportExecutor.html)). 

You should specify the version in your project's plugin configuration:

``` xml 
<dependency>
  <groupId>org.apache.maven.reporting</groupId>
  <artifactId>maven-reporting-exec</artifactId>
  <version>1.6.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/shared/maven-reporting-exec/download.cgi).

<!-- more -->
 
[Release Notes Apache Maven Shared Component: Maven Reporting Exec Version 1.6.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12348384 )



* Bug:
 
  * [MSHARED-927](https://issues.apache.org/jira/browse/MSHARED-927) - javadoc failing with JDK 8


* Task:
 
  * [MSHARED-1029](https://issues.apache.org/jira/browse/MSHARED-1029) - Update component (requires Maven 3.2.5+)


* Dependency upgrades:
 
  * [MSHARED-1025](https://issues.apache.org/jira/browse/MSHARED-1025) - Upgrade Doxia Sitetools to 1.11.1
  * [MSHARED-1026](https://issues.apache.org/jira/browse/MSHARED-1026) - Upgrade Maven Reporting API to 3.1.0
  * [MSHARED-1034](https://issues.apache.org/jira/browse/MSHARED-1034) - Upgrade plugins and components in ITs

Enjoy,
 
-The Apache Maven team
