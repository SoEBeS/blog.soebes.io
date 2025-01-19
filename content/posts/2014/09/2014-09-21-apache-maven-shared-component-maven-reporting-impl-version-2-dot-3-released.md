---
title: "Apache Maven Shared Component: Maven Reporting Impl. Version 2.3 Released"
date: 2014-09-21T00:44:00
lastmod: 2014-09-21T00:44:00
categories:
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Shared Component: Apache Maven Reporting Impl. Version 2.3](http://maven.apache.org/shared/maven-reporting-impl/)

Abstract classes to manage report generation, which can be run both:

 * as part of a site generation, as a [maven-reporting-api](http://maven.apache.org/shared/maven-reporting-api/)'s [MavenReport](http://maven.apache.org/shared/maven-reporting-api/apidocs/org/apache/maven/reporting/MavenReport.html),
 * or as a direct standalone goal invocation, as a [maven-plugin-api](http://maven.apache.org/ref/current/maven-plugin-api/)'s [Mojo](http://maven.apache.org/ref/current/maven-plugin-api/apidocs/org/apache/maven/plugin/Mojo.html).


```xml
<plugin>
  <groupId>org.apache.maven.reporting</groupId>
  <artifactId>maven-reporting-impl</artifactId>
  <version>2.3</version>
</plugin>
```

<!-- more -->

[Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11761&version=18319)


Sub-task:

 * [MSHARED-240](https://issues.apache.org/jira/browse/MSHARED-240) - Port maven-reporting-impl to maven-shared-utils

Bugs:

 * [MSHARED-328](https://issues.apache.org/jira/browse/MSHARED-328) - use @parameter default-value instead of @parameter expression in sample
 * [MSHARED-346](https://issues.apache.org/jira/browse/MSHARED-346) - missing properties usually set by m-site-p (outputEncoding, ...)

Improvement:

 * [MSHARED-348](https://issues.apache.org/jira/browse/MSHARED-348) - support reporting encoding configuration when used as goal

New Feature:

 * [MSHARED-347](https://issues.apache.org/jira/browse/MSHARED-347) - use plugin-tools java 5 annotations to avoid fields copy/paste when implementing


Enjoy,

-The Maven team

Karl-Heinz Marbaise
