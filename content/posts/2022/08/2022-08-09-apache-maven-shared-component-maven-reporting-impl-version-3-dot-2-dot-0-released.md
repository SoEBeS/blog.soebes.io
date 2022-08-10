---
title: "Apache Maven Shared Component: Maven Reporting Impl. Version 3.2.0 Released"
date: 2022-08-09T21:01:01
lastmod: 2022-08-09T21:01:01
categories:
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Shared Component: Apache Maven Reporting Impl. Version 3.2.0](https://maven.apache.org/shared/maven-reporting-impl/)

Abstract classes to manage report generation, which can be run both:

 * as part of a site generation, as a [maven-reporting-api](https://maven.apache.org/shared/maven-reporting-api/)'s [MavenReport](https://maven.apache.org/shared/maven-reporting-api/apidocs/org/apache/maven/reporting/MavenReport.html),
 * or as a direct standalone goal invocation, as a [maven-plugin-api](https://maven.apache.org/ref/current/maven-plugin-api/)'s [Mojo](https://maven.apache.org/ref/current/maven-plugin-api/apidocs/org/apache/maven/plugin/Mojo.html).


```xml
<plugin>
  <groupId>org.apache.maven.reporting</groupId>
  <artifactId>maven-reporting-impl</artifactId>
  <version>3.2.0</version>
</plugin>
```

[Release Notes](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12352179)

* Improvement:
 
  * [MSHARED-1099](https://issues.apache.org/jira/browse/MSHARED-1099) - Render with a skin when report is run in standalone mode

* Dependency upgrades:
 
  * [MSHARED-1120](https://issues.apache.org/jira/browse/MSHARED-1120) - Upgrade Maven Reporting API to 3.1.1
  * [MSHARED-1121](https://issues.apache.org/jira/browse/MSHARED-1121) - Upgrade plugins and components in project and ITs

Enjoy,

-The Apache Maven Team

Karl-Heinz Marbaise
