---
title: "Apache Maven Shared Component: Maven Reporting Impl. Version 3.1.0 Released"
date: 2022-02-09T21:37:37
lastmod: 2022-02-09T21:37:37
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Shared Component: Apache Maven Reporting Impl. Version 3.1.0](https://maven.apache.org/shared/maven-reporting-impl/)

Abstract classes to manage report generation, which can be run both:

 * as part of a site generation, as a [maven-reporting-api](https://maven.apache.org/shared/maven-reporting-api/)'s [MavenReport](https://maven.apache.org/shared/maven-reporting-api/apidocs/org/apache/maven/reporting/MavenReport.html),
 * or as a direct standalone goal invocation, as a [maven-plugin-api](https://maven.apache.org/ref/current/maven-plugin-api/)'s [Mojo](https://maven.apache.org/ref/current/maven-plugin-api/apidocs/org/apache/maven/plugin/Mojo.html).


```xml
<plugin>
  <groupId>org.apache.maven.reporting</groupId>
  <artifactId>maven-reporting-impl</artifactId>
  <version>3.1.0</version>
</plugin>
```

<!-- more -->

[Release Notes](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12341015)


* Improvements:
 
  * [MSHARED-813](https://issues.apache.org/jira/browse/MSHARED-813) - Require Java 7
  * [MSHARED-879](https://issues.apache.org/jira/browse/MSHARED-879) - make build Reproducible

* Dependency upgrades:
 
  * [MSHARED-956](https://issues.apache.org/jira/browse/MSHARED-956) - Set minimum supported Maven version to 3.1.0
  * [MSHARED-1027](https://issues.apache.org/jira/browse/MSHARED-1027) - Update Doxia to 1.11.1 and Doxia Sitetools to 1.11.1
  * [MSHARED-1028](https://issues.apache.org/jira/browse/MSHARED-1028) - Upgrade Maven Reporting API to 3.1.0

Tasks:

 * [MSHARED-606](https://issues.apache.org/jira/browse/MSHARED-606) - - Upgrade to Commons Validator 1.5.1
 * [MSHARED-609](https://issues.apache.org/jira/browse/MSHARED-609) - - Partially revert MSHARED-429
 * [MSHARED-611](https://issues.apache.org/jira/browse/MSHARED-611) - - Drop any href validation and pass as-is
 * [MSHARED-612](https://issues.apache.org/jira/browse/MSHARED-612) - - Upgrade to Doxia 1.7
 * [MSHARED-613](https://issues.apache.org/jira/browse/MSHARED-613) - - Upgrade to Doxia Sitetools 1.7.4
 * [MSHARED-614](https://issues.apache.org/jira/browse/MSHARED-614) - - Upgrade to Maven Shared Utils 3.1.0

Wish:

 * [MSHARED-488](https://issues.apache.org/jira/browse/MSHARED-488) - - Make input source file encoding default to platform encoding

Enjoy,

-The Apache Maven Team

Karl-Heinz Marbaise
