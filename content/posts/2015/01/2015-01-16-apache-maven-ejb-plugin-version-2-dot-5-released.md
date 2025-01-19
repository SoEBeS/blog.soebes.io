---
title: "Apache Maven EJB Plugin Version 2.5 Released"
date: 2015-01-16T09:08:00
lastmod: 2015-01-16T09:08:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven EJB Plugin, version 2.5](http://maven.apache.org/plugins/maven-ejb-plugin/).

The WAR Plugin is responsible for collecting all artifact dependencies, classes
and resources of the web application and packaging them into a web application
archive.


You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-ejb-plugin</artifactId>
  <version>2.5</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven EJB Plugin - Version 2.5](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317421&version=12330675)


Bugs:

 * [MEJB-63](https://issues.apache.org/jira/browse/MEJB-63) - outputDirectory is treated differently to ear, war plugins
 * [MEJB-74](https://issues.apache.org/jira/browse/MEJB-74) - Updated plexus-interpolation for thread safety

Improvements:

 * [MEJB-67](https://issues.apache.org/jira/browse/MEJB-67) - Upgrade plexus-utils to 3.0.18
 * [MEJB-70](https://issues.apache.org/jira/browse/MEJB-70) - Update version of plexus-archiver to 2.6.1
 * [MEJB-71](https://issues.apache.org/jira/browse/MEJB-71) - Update version of plexus-archiver to 2.6.2
 * [MEJB-73](https://issues.apache.org/jira/browse/MEJB-73) - Update version of plexus-archiver from 2.4.4 to 2.9
 * [MEJB-75](https://issues.apache.org/jira/browse/MEJB-75) - Upgrade maven-filtering to 1.3
 * [MEJB-76](https://issues.apache.org/jira/browse/MEJB-76) - Upgrade to maven-plugins parent version 27
 * [MEJB-77](https://issues.apache.org/jira/browse/MEJB-77) - Upgrade maven-archiver to 2.6
 * [MEJB-78](https://issues.apache.org/jira/browse/MEJB-78) - Upgrade maven-plugin-testing-harness to 1.3
 * [MEJB-80](https://issues.apache.org/jira/browse/MEJB-80) - Remove unnecessary exclusions of org.codehaus.plexus:plexus-component-api


Enjoy,

-The Apache Maven team

