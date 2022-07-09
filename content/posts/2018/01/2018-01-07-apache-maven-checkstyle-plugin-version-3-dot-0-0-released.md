---
title: "Apache Maven Checkstyle Plugin Version 3.0.0 Released"
date: 2018-01-07T23:38:00
lastmod: 2018-01-07T23:38
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Maven team is pleased to announce the release of the 
[Apache Maven Checkstyle Plugin, version 3.0.0](https://maven.apache.org/plugins/maven-checkstyle-plugin/).

The Checkstyle Plugin generates a report regarding the code style used by the
developers. For more information about Checkstyle, see
https://checkstyle.sourceforge.net/.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-checkstyle-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
``` 

<!-- more -->

[Release Notes - Apache Maven Checkstyle Plugin - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317223&version=12333072)

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-checkstyle-plugin/download.cgi

Bugs:

 * [MCHECKSTYLE-220](https://issues.apache.org/jira/browse/MCHECKSTYLE-220) - Debug shows unnecessary stacktrace with java.net.MalformedURLException: no protocol: LICENSE.txt
 * [MCHECKSTYLE-260](https://issues.apache.org/jira/browse/MCHECKSTYLE-260) - sourceDirectories property is ignored in multi-modules
 * [MCHECKSTYLE-301](https://issues.apache.org/jira/browse/MCHECKSTYLE-301) - Plugin in check goal should print the name of the rule that was violated
 * [MCHECKSTYLE-322](https://issues.apache.org/jira/browse/MCHECKSTYLE-322) - Update plugin to use 6.18 checkstyle (last version that is based on jdk7)
 * [MCHECKSTYLE-332](https://issues.apache.org/jira/browse/MCHECKSTYLE-332) - maven plugin not using cache property
 * [MCHECKSTYLE-337](https://issues.apache.org/jira/browse/MCHECKSTYLE-337) - checkstyle:check only supports xml output format, but the docs say it supports plain as well

Improvements:

 * [MCHECKSTYLE-320](https://issues.apache.org/jira/browse/MCHECKSTYLE-320) - Upgrade maven-plugins to version 30
 * [MCHECKSTYLE-335](https://issues.apache.org/jira/browse/MCHECKSTYLE-335) - Migrate plugin to Maven 3.0
 * [MCHECKSTYLE-336](https://issues.apache.org/jira/browse/MCHECKSTYLE-336) - Fail the build when deprecated parameters sourceDirectory or testSourceDirectory are used
 * [MCHECKSTYLE-338](https://issues.apache.org/jira/browse/MCHECKSTYLE-338) - Add support for 'omitIgnoredModules'
 * [MCHECKSTYLE-340](https://issues.apache.org/jira/browse/MCHECKSTYLE-340) - Migrate plugin to Maven 3.0

Tasks:

 * [MCHECKSTYLE-275](https://issues.apache.org/jira/browse/MCHECKSTYLE-275) - remove old deprecated parameters from report
 * [MCHECKSTYLE-331](https://issues.apache.org/jira/browse/MCHECKSTYLE-331) - Upgrade of plexus-interpolation to 1.24.

Enjoy,

-The Maven team

