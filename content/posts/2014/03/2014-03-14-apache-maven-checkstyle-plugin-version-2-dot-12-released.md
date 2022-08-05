---
title: "Apache Maven Checkstyle Plugin Version 2.12 Released"
date: 2014-03-14T18:34:00
lastmod: 2014-03-14T18:34
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Maven team is pleased to announce the release of the 
[Apache Maven Checkstyle Plugin, version 2.12](http://maven.apache.org/plugins/maven-checkstyle-plugin/).

Generates a report on violations of code style and optionally fails the build if violations are detected.

You should specify the version in your project´s plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-checkstyle-plugin</artifactId>
  <version>2.12</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven Checkstyle Plugin - Version 2.12](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11127&styleName=Html&version=19723)

Tasks:

 * [MCHECKSTYLE-222](https://issues.apache.org/jira/browse/MCHECKSTYLE-222) Resource-only project is not checked
 * [MCHECKSTYLE-221](https://issues.apache.org/jira/browse/MCHECKSTYLE-221) ResourceIncludes default value is wrong
 * [MCHECKSTYLE-219](https://issues.apache.org/jira/browse/MCHECKSTYLE-219) When no license is specified, ALv2 from maven-checkstyle-plugin is used
 * [MCHECKSTYLE-218](https://issues.apache.org/jira/browse/MCHECKSTYLE-218) Put file anchor directly on the h2 tag
 * [MCHECKSTYLE-213](https://issues.apache.org/jira/browse/MCHECKSTYLE-213) Upgrade Doxia dependencies
 * [MCHECKSTYLE-212](https://issues.apache.org/jira/browse/MCHECKSTYLE-212) Upgrade to Checkstyle 5.7
 * [MCHECKSTYLE-211](https://issues.apache.org/jira/browse/MCHECKSTYLE-211) allow inline configuration for checkstyle plugin
 * [MCHECKSTYLE-210](https://issues.apache.org/jira/browse/MCHECKSTYLE-210) Resource bundles have wrong file encoding
 * [MCHECKSTYLE-209](https://issues.apache.org/jira/browse/MCHECKSTYLE-209) Correct grammar, make icons and text consistent in the report
 * [MCHECKSTYLE-208](https://issues.apache.org/jira/browse/MCHECKSTYLE-208) Plugin generates reports incompatible with the 'maven-jxr-plugin' version 2.4
 * [MCHECKSTYLE-207](https://issues.apache.org/jira/browse/MCHECKSTYLE-207) file handle leak - leading to failed builds
 * [MCHECKSTYLE-205](https://issues.apache.org/jira/browse/MCHECKSTYLE-205) NPE in CheckstyleReportGenerator.doFilesSummary:654 version 2.11 regression
 * [MCHECKSTYLE-190](https://issues.apache.org/jira/browse/MCHECKSTYLE-190) Add user property for checkstyle:consoleOutput
 * [MCHECKSTYLE-182](https://issues.apache.org/jira/browse/MCHECKSTYLE-182) Use Maven log levels when logging to console
 * [MCHECKSTYLE-169](https://issues.apache.org/jira/browse/MCHECKSTYLE-169) Suppressions property is incorrectly set if suppressions file is on classpath


Enjoy,

-The Maven team
