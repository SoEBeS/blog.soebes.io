---
title: "Apache Maven Shared Component: Maven Reporting Impl. Version 4.0.0-M1 Released"
date: 2022-04-23T22:11:11
lastmod: 2022-04-23T22:11:11
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Shared Component: Apache Maven Reporting Impl. Version 4.0.0-M1](https://maven.apache.org/shared/maven-reporting-impl/)

Abstract classes to manage report generation, which can be run both:

 * as part of a site generation, as a [maven-reporting-api](https://maven.apache.org/shared/maven-reporting-api/)'s [MavenReport](https://maven.apache.org/shared/maven-reporting-api/apidocs/org/apache/maven/reporting/MavenReport.html),
 * or as a direct standalone goal invocation, as a [maven-plugin-api](https://maven.apache.org/ref/current/maven-plugin-api/)'s [Mojo](https://maven.apache.org/ref/current/maven-plugin-api/apidocs/org/apache/maven/plugin/Mojo.html).


```xml
<plugin>
  <groupId>org.apache.maven.reporting</groupId>
  <artifactId>maven-reporting-impl</artifactId>
  <version>4.0.0-M1</version>
</plugin>
```

<!-- more -->

[Release Notes](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12351596)


* Task:
 
  * [MSHARED-1055](https://issues.apache.org/jira/browse/MSHARED-1055) - Upgrade to Java 8

* Dependency upgrades:
 
  * [MSHARED-1056](https://issues.apache.org/jira/browse/MSHARED-1056) - Upgrade to Maven 3.2.5
  * [MSHARED-1057](https://issues.apache.org/jira/browse/MSHARED-1057) - Upgrade to Doxia/Doxia Sitetools to 2.0.0-M2
  * [MSHARED-1058](https://issues.apache.org/jira/browse/MSHARED-1058) - Upgrade components
  * [MSHARED-1059](https://issues.apache.org/jira/browse/MSHARED-1059) - Upgrade Maven Reporting API to 4.0.0-M1


Enjoy,

-The Apache Maven Team

Karl-Heinz Marbaise
