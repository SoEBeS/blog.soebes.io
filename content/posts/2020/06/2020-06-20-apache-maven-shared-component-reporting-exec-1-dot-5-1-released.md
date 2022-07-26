---
title: "Apache Maven Shared Component: Maven Reporting Exec Version 1.5.1"
date: 2020-06-20T12:30:34
lastmod: 2020-06-20T12:30:34
categories:
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven Reporting Exec Version 1.5.1](https://maven.apache.org/shared/maven-reporting-exec/).

Classes to prepare report plugins execution with Maven 3, through
[MavenReportExecutor](https://maven.apache.org/shared/maven-reporting-exec/apidocs/org/apache/maven/reporting/exec/MavenReportExecutor.html) ([implementation](https://maven.apache.org/shared/maven-reporting-exec/apidocs/org/apache/maven/reporting/exec/DefaultMavenReportExecutor.html)). 

You should specify the version in your project's plugin configuration:

``` xml 
<dependency>
  <groupId>org.apache.maven.reporting</groupId>
  <artifactId>maven-reporting-exec</artifactId>
  <version>1.5.1</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/shared/maven-reporting-exec/download.cgi).

<!-- more -->
 
[Release Notes Apache Maven Shared Component: Maven Reporting Exec Version 1.5.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12348384 )

* Bugs:

  * [MSHARED-923](https://issues.apache.org/jira/browse/MSHARED-923) - upgrade maven-shade-plugin to 3.2.4 to get Reproducible Build
  * [MSHARED-924](https://issues.apache.org/jira/browse/MSHARED-924) - fix Xpp3DomUtils shading relocation
  * [MSHARED-921](https://issues.apache.org/jira/browse/MSHARED-921) - NoSuchMethodError: 'Xpp3Dom.getInputLocation()' with Maven versions < 3.6.1

* Improvements:

  * [MSHARED-814](https://issues.apache.org/jira/browse/MSHARED-814) - Require Java 7
  * [MSHARED-879](https://issues.apache.org/jira/browse/MSHARED-879) - make build Reproducible

* Task:

  * [MSHARED-663](https://issues.apache.org/jira/browse/MSHARED-663) - mark ReportPlugin and ReportSet package private 

Enjoy,
 
-The Apache Maven team
