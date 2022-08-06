---
title: "Apache Maven EJB Plugin Version 3.0.0 Released"
date: 2017-08-19T12:15:00
lastmod: 2017-08-19T12:15
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven EJB Plugin Version 3.0.0](https://maven.apache.org/plugins/maven-ejb-plugin/).

This plugin generates J2EE Enterprise Javabean (EJB) file as well as the
associated client jar.

Important Note since 3.0.0:

 * Maven 3.X only
 * JDK 7 minimum requirement

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-ejb-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven EJB Plugin - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317421&version=12330676)

Bugs:

 * [MEJB-109](https://issues.apache.org/jira/browse/MEJB-109) - JDK 9 - EA compatibility Issue

Improvements:

 * [MEJB-72](https://issues.apache.org/jira/browse/MEJB-72) - Add LifecycleMapping and ArtifactHandler from maven-core to target packaging plugin
 * [MEJB-81](https://issues.apache.org/jira/browse/MEJB-81) - Upgrade to Maven 3.X only compatiblity
 * [MEJB-86](https://issues.apache.org/jira/browse/MEJB-86) - Make naming of properties consistent
 * [MEJB-87](https://issues.apache.org/jira/browse/MEJB-87) - Upgrade EJB Version default to 3.1 in accordance with Java EE 6
 * [MEJB-88](https://issues.apache.org/jira/browse/MEJB-88) - Change package to org.apache.maven.plugins to prevent conflict with Maven Core
 * [MEJB-92](https://issues.apache.org/jira/browse/MEJB-92) - Make separate classifier for client and main aritfact
 * [MEJB-93](https://issues.apache.org/jira/browse/MEJB-93) - Prevent re-adding of main artifact twice
 * [MEJB-94](https://issues.apache.org/jira/browse/MEJB-94) - Make integration tests more reliable
 * [MEJB-97](https://issues.apache.org/jira/browse/MEJB-97) - Remove param properties that doesn't make sense for CLI usage
 * [MEJB-101](https://issues.apache.org/jira/browse/MEJB-101) - Upgrade maven-shared-components parent to version 30
 * [MEJB-108](https://issues.apache.org/jira/browse/MEJB-108) - Upgrade bound plugins to life cycle
 * [MEJB-113](https://issues.apache.org/jira/browse/MEJB-113) - Move component.xml to correct location.

Dependency Upgrades:

 * [MEJB-114](https://issues.apache.org/jira/browse/MEJB-114) - Upgrade plexus-utils to version 3.1.0
 * [MEJB-111](https://issues.apache.org/jira/browse/MEJB-111) - Upgrade plexus-archiver to 3.5.
 * [MEJB-110](https://issues.apache.org/jira/browse/MEJB-110) - Updated maven-archiver to 3.2.0
 * [MEJB-107](https://issues.apache.org/jira/browse/MEJB-107) - Upgrade of plexus-interpolation to 1.24.
 * [MEJB-106](https://issues.apache.org/jira/browse/MEJB-106) - Upgrade of maven-archiver to 3.1.1.
 * [MEJB-105](https://issues.apache.org/jira/browse/MEJB-105) - Upgrade of maven-archiver to 3.1.0.
 * [MEJB-104](https://issues.apache.org/jira/browse/MEJB-104) - Upgrade of maven-filtering to 3.1.1.
 * [MEJB-103](https://issues.apache.org/jira/browse/MEJB-103) - Upgrade of plexus-interpolation to 1.22.
 * [MEJB-102](https://issues.apache.org/jira/browse/MEJB-102) - Upgrade of plexus-archiver to 3.4.
 * [MEJB-100](https://issues.apache.org/jira/browse/MEJB-100) - Upgrade plexus-archiver from 3.2 to 3.3
 * [MEJB-99](https://issues.apache.org/jira/browse/MEJB-99) - Upgrade maven-filtering to 3.1.0
 * [MEJB-98](https://issues.apache.org/jira/browse/MEJB-98) - Upgrade maven-archiver to 3.0.2
 * [MEJB-96](https://issues.apache.org/jira/browse/MEJB-96) - Upgrade plexus-archiver to 3.1.1
 * [MEJB-95](https://issues.apache.org/jira/browse/MEJB-95) - Upgrade plexus-archiver from 3.0.1 to 3.0.3
 * [MEJB-91](https://issues.apache.org/jira/browse/MEJB-91) - Upgrade plexus-archiver from 2.10.2 to 3.0.1
 * [MEJB-90](https://issues.apache.org/jira/browse/MEJB-90) - Upgrade commons-io to 2.4


Enjoy,

-The Apache Maven team
