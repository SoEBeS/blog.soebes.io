---
title: "Apache Maven Shade Plugin Version 3.4.0 Released"
date: 2022-09-14T21:15:15
lastmod: 2022-09-14T21:15:15
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shade Plugin, version 3.4.0](https://maven.apache.org/plugins/maven-shade-plugin/).

This plugin provides the capability to package the artifact in an uber-jar,
including its dependencies and to shade - i.e. rename - the packages of some dependencies.


Notes:
  * Starting from this release you need JDK8 as minimum.
  * Minimum Maven Version 3.1.1.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-shade-plugin</artifactId>
  <version>3.4.0</version>
</plugin>
```

You can download the [appropriate sources etc. from the download page][download-page]

<!-- more -->

 
[Release Notes - Maven Shade Plugin - Version 3.4.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317921&version=12351491)

* Bug:

  * [MSHADE-425](https://issues.apache.org/jira/browse/MSHADE-425) - Maven shade plugin build fails without 'clean' goal

* Tasks:
  * [MSHADE-393](https://issues.apache.org/jira/browse/MSHADE-393) - Upgrade project from Java 7 to 8
  * [MSHADE-416](https://issues.apache.org/jira/browse/MSHADE-416) - Jenkins URL is wrong.
  * [MSHADE-423](https://issues.apache.org/jira/browse/MSHADE-423) - Get rid of commons-lang3

* Dependency upgrades:

  * [MSHADE-415](https://issues.apache.org/jira/browse/MSHADE-415) - Upgrade maven-plugin parent to 37
  * [MSHADE-424](https://issues.apache.org/jira/browse/MSHADE-424) - Upgrade jdependency 2.8.0

Enjoy,

-The Apache Maven team

[download-page]: https://maven.apache.org/plugins/maven-shade-plugin/download.cgi
