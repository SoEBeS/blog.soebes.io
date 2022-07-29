---
title: "Apache Maven Shared Component: Maven Reporting Exec Version 2.0.0-M2"
date: 2022-07-22T17:06:06
lastmod: 2022-07-22T17:06:06
categories:
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven Reporting Exec Version 2.0.0-M2](https://maven.apache.org/shared/maven-reporting-exec/).

Classes to prepare report plugins execution with Maven 3, through
[MavenReportExecutor](https://maven.apache.org/shared/maven-reporting-exec/apidocs/org/apache/maven/reporting/exec/MavenReportExecutor.html) ([implementation](https://maven.apache.org/shared/maven-reporting-exec/apidocs/org/apache/maven/reporting/exec/DefaultMavenReportExecutor.html)). 

You should specify the version in your project's plugin configuration:

``` xml 
<dependency>
  <groupId>org.apache.maven.reporting</groupId>
  <artifactId>maven-reporting-exec</artifactId>
  <version>2.0.0-M2</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/shared/maven-reporting-exec/download.cgi).

<!-- more -->
 
[Release Notes Apache Maven Shared Component: Maven Reporting Exec Version 2.0.0-M2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12352050)

* Task:
 
  * [MSHARED-1105](https://issues.apache.org/jira/browse/MSHARED-1105) - Replace Plexus Annotations with JSR 330 and upgrade relevant dependencies

* Dependency upgrades:
 
  * [MSHARED-1100](https://issues.apache.org/jira/browse/MSHARED-1100) - Upgrade Maven Parent to 36
  * [MSHARED-1101](https://issues.apache.org/jira/browse/MSHARED-1101) - Upgrade to Doxia/Doxia Sitetools to 2.0.0-M3
  * [MSHARED-1102](https://issues.apache.org/jira/browse/MSHARED-1102) - Upgrade plugins and components in ITs
  * [MSHARED-1103](https://issues.apache.org/jira/browse/MSHARED-1103) - Upgrade Maven Reporting API to 4.0.0-M2

Enjoy,
 
-The Apache Maven team
