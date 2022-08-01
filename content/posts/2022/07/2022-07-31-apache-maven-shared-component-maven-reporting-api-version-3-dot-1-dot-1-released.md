---
title: "Apache Maven Shared Component: Maven Reporting API Version 3.1.1 Released"
date: 2022-07-31T19:17:17
lastmod: 2022-07-31T19:17:17
categories:
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Shared Component: Apache Maven Reporting API Version 3.1.1](https://maven.apache.org/shared/maven-reporting-api/)

Abstract classes to manage report generation, which can be run both:

 * as part of a site generation, as a [maven-reporting-api](https://maven.apache.org/shared/maven-reporting-api/)'s [MavenReport](https://maven.apache.org/shared/maven-reporting-api/apidocs/org/apache/maven/reporting/MavenReport.html),
 * or as a direct standalone goal invocation, as a [maven-plugin-api](https://maven.apache.org/ref/current/maven-plugin-api/)'s [Mojo](https://maven.apache.org/ref/current/maven-plugin-api/apidocs/org/apache/maven/plugin/Mojo.html).


```xml
<plugin>
  <groupId>org.apache.maven.reporting</groupId>
  <artifactId>maven-reporting-api</artifactId>
  <version>3.1.1</version>
</plugin>
```

[Release Notes Maven Reporting API Version 3.1.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12352152)

* Task:
 
  * [MSHARED-1118](https://issues.apache.org/jira/browse/MSHARED-1118) - Restore binary compat for MavenReport (partially revert MSHARED-1024)


Enjoy,

-The Apache Maven Team
