---
title: "Apache Maven WAR Plugin Version 3.0.0 Released"
date: 2016-08-28T13:00:10
lastmod: 2016-08-28T13:00:10
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven WAR Plugin, version 3.0.0](https://maven.apache.org/plugins/maven-war-plugin/).

The WAR Plugin is responsible for collecting all artifact dependencies, classes
and resources of the web application and packaging them into a web application
archive.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-war-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page][download].

Important Note: 

 * Maven 3.X only
 * JDK 6 minimum requirement


<!-- more -->

[Release Notes - Maven WAR Plugin - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318121&version=12331760)


Bugs:

 * [MWAR-367](https://issues.apache.org/jira/browse/MWAR-367) - Overlay removes /META-INF/context.xml
 * [MWAR-369](https://issues.apache.org/jira/browse/MWAR-369) - Upgrade to XStream 1.4.9
 * [MWAR-379](https://issues.apache.org/jira/browse/MWAR-379) - manifest goal violates general Maven principle and creates file into src/main/..

Documentation:

 * [MWAR-346](https://issues.apache.org/jira/browse/MWAR-346) - Fix broken links

Improvements:

 * [MWAR-225](https://issues.apache.org/jira/browse/MWAR-225) - Add support for customizing filtering delimiters like the resources plugin
 * [MWAR-262](https://issues.apache.org/jira/browse/MWAR-262) - <failOnMissingWebXml> default value should be false for Servlet level > 2.5 projects
 * [MWAR-326](https://issues.apache.org/jira/browse/MWAR-326) - Add LifecycleMapping and ArtifactHandler from maven-core to target packaging plugin
 * [MWAR-328](https://issues.apache.org/jira/browse/MWAR-328) - Upgrade to Maven 3.0 compatiblity / JDK 6
 * [MWAR-347](https://issues.apache.org/jira/browse/MWAR-347) - Upgrade plexus-io to 2.6
 * [MWAR-348](https://issues.apache.org/jira/browse/MWAR-348) - Upgrade maven-invoker-plugin to 1.10
 * [MWAR-349](https://issues.apache.org/jira/browse/MWAR-349) - Upgrade to fluido skin 1.4.0
 * [MWAR-361](https://issues.apache.org/jira/browse/MWAR-361) - Removed unused dependencies in project
 * [MWAR-362](https://issues.apache.org/jira/browse/MWAR-362) - Bump version to 3.0.0-SNAPSHOT
 * [MWAR-363](https://issues.apache.org/jira/browse/MWAR-363) - Removed hard coded version for maven-invoker-plugin
 * [MWAR-364](https://issues.apache.org/jira/browse/MWAR-364) - Upgrade plexus-utils to 3.0.22
 * [MWAR-365](https://issues.apache.org/jira/browse/MWAR-365) - Upgrade plexus-archiver from 3.0.1 to 3.0.3
 * [MWAR-366](https://issues.apache.org/jira/browse/MWAR-366) - Change package to org.apache.maven.plugins to prevent conflict with Maven Core
 * [MWAR-370](https://issues.apache.org/jira/browse/MWAR-370) - Upgrade plexus-archiver 3.0.3 to 3.1.1
 * [MWAR-372](https://issues.apache.org/jira/browse/MWAR-372) - Upgrade maven-archiver to 3.0.1
 * [MWAR-373](https://issues.apache.org/jira/browse/MWAR-373) - Make finalName readonly parameter
 * [MWAR-376](https://issues.apache.org/jira/browse/MWAR-376) - Remove param properties that doesn't make sense for CLI usage
 * [MWAR-380](https://issues.apache.org/jira/browse/MWAR-380) - Filtered resources folder should be changed
 * [MWAR-381](https://issues.apache.org/jira/browse/MWAR-381) - Upgrade maven-archiver to 3.0.2
 * [MWAR-382](https://issues.apache.org/jira/browse/MWAR-382) - Upgrade plexus-utils to 3.0.24
 * [MWAR-383](https://issues.apache.org/jira/browse/MWAR-383) - Upgrade plexus-archiver to 3.2 / commons-io to 2.5
 * [MWAR-385](https://issues.apache.org/jira/browse/MWAR-385) - Upgrade maven-plugins to version 30
 * [MWAR-387](https://issues.apache.org/jira/browse/MWAR-387) - Upgrade of 'plexus-archiver' to version 3.3.
 * [MWAR-388](https://issues.apache.org/jira/browse/MWAR-388) - Upgrade maven-archiver to 3.1.0
 * [MWAR-389](https://issues.apache.org/jira/browse/MWAR-389) - Upgrade maven-filtering to 3.1.1

New Feature:

 * [MWAR-350](https://issues.apache.org/jira/browse/MWAR-350) - Add Skip Parameter to Skip the process
Task
 * [MWAR-391](https://issues.apache.org/jira/browse/MWAR-391) - Upgrade of plexus-archiver to 3.4.
 * [MWAR-392](https://issues.apache.org/jira/browse/MWAR-392) - Upgrade of plexus-interpolation to 1.22.
 * [MWAR-393](https://issues.apache.org/jira/browse/MWAR-393) - Upgrade of maven-archiver to 3.1.1.

Enjoy,

-The Apache Maven team

[download]: https://maven.apache.org/plugins/maven-war-plugin/download.cgi

