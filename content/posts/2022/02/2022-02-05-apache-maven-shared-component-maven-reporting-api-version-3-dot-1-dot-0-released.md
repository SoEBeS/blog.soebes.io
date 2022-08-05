---
title: "Apache Maven Shared Component: Maven Reporting API Version 3.1.0 Released"
date: 2022-02-05T11:50:50
lastmod: 2022-02-05T11:50:50
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Shared Component: Apache Maven Reporting API Version 3.1.0](https://maven.apache.org/shared/maven-reporting-api/)

Abstract classes to manage report generation, which can be run both:

 * as part of a site generation, as a [maven-reporting-api](https://maven.apache.org/shared/maven-reporting-api/)'s [MavenReport](https://maven.apache.org/shared/maven-reporting-api/apidocs/org/apache/maven/reporting/MavenReport.html),
 * or as a direct standalone goal invocation, as a [maven-plugin-api](https://maven.apache.org/ref/current/maven-plugin-api/)'s [Mojo](https://maven.apache.org/ref/current/maven-plugin-api/apidocs/org/apache/maven/plugin/Mojo.html).


```xml
<plugin>
  <groupId>org.apache.maven.reporting</groupId>
  <artifactId>maven-reporting-api</artifactId>
  <version>3.1.0</version>
</plugin>
```

<!-- more -->

[Release Notes](https://issues.apache.org/jira/projects/MSHARED/versions/12331438)

* Improvements:
 
  * [MSHARED-812] - Require Java 7
  * [MSHARED-879] - make build Reproducible

* Task:
  * [MSHARED-1024] - Replace deprecated code

* Dependency upgrade:
 
  * [MSHARED-844] - Upgrade to Doxia 1.11.1

Enjoy,

-The Apache Maven Team

Karl-Heinz Marbaise
