---
title: "Apache Maven Checkstyle Plugin 2.11 Released"
date: 2013-11-16T15:54:00
lastmod: 2013-11-16T15:54
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---

The Apache Maven team is pleased to announce the release of the 
[Apache Maven Checkstyle Plugin, version 2.11](http://maven.apache.org/plugins/maven-checkstyle-plugin/)

This plugin integrates checkstyle into the build.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-checkstyle-plugin</artifactId>
  <version>2.11</version>
</plugin>
```

The [Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11127&version=19110)

<!-- more -->

The following bugs have been fixed:

* [MCHECKSTYLE-192](https://issues.apache.org/jira/browse/MCHECKSTYLE-192) - Properties files are only processed in the report, but not in the mojo
* [MCHECKSTYLE-193](https://issues.apache.org/jira/browse/MCHECKSTYLE-193) - Resource files get included regardless of explicit sourceDirectory / includes / excludes configuration
* [MCHECKSTYLE-197](https://issues.apache.org/jira/browse/MCHECKSTYLE-197) - Documentation: Check goal is incorrectly described
* [MCHECKSTYLE-202](https://issues.apache.org/jira/browse/MCHECKSTYLE-202) - The link on Usage page to 'Maven 3.x Compatibility Notes' is not correct


The following improvements:

* [MCHECKSTYLE-191](https://issues.apache.org/jira/browse/MCHECKSTYLE-191) - Make name of TreeWalker configurable
* [MCHECKSTYLE-199](https://issues.apache.org/jira/browse/MCHECKSTYLE-199) - Make resource file processing configurable
* [MCHECKSTYLE-204](https://issues.apache.org/jira/browse/MCHECKSTYLE-204) - Errors in the check goal are not very prominent in the Maven output

