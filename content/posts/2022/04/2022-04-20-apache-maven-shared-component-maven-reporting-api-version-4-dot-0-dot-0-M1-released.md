---
title: "Apache Maven Shared Component: Maven Reporting API Version 4.0.0-M1 Released"
date: 2022-04-20T21:05:05
lastmod: 2022-04-20T21:05:05
categories:
  - Maven
  - Maven-Plugins
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Shared Component: Apache Maven Reporting API Version 4.0.0-M1](https://maven.apache.org/shared/maven-reporting-api/)

Abstract classes to manage report generation, which can be run both:

 * as part of a site generation, as a [maven-reporting-api](https://maven.apache.org/shared/maven-reporting-api/)'s [MavenReport](https://maven.apache.org/shared/maven-reporting-api/apidocs/org/apache/maven/reporting/MavenReport.html),
 * or as a direct standalone goal invocation, as a [maven-plugin-api](https://maven.apache.org/ref/current/maven-plugin-api/)'s [Mojo](https://maven.apache.org/ref/current/maven-plugin-api/apidocs/org/apache/maven/plugin/Mojo.html).


```xml
<plugin>
  <groupId>org.apache.maven.reporting</groupId>
  <artifactId>maven-reporting-api</artifactId>
  <version>4.0.0-M1</version>
</plugin>
```

<!-- more -->

[Release Notes Maven Reporting API Version 4.0.0-M1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?version=12351595&styleName=Text&projectId=12317922)

* Dependency upgrade:
 
  * [MSHARED-1052](https://issues.apache.org/jira/browse/MSHARED-1052) - Upgrade to Java 8
  * [MSHARED-1053](https://issues.apache.org/jira/browse/MSHARED-1053) - Upgrade Doxia to 2.0.0-M2
  * [MSHARED-1054](https://issues.apache.org/jira/browse/MSHARED-1054) - Upgrade plugins


Enjoy,

-The Apache Maven Team
