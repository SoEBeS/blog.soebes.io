---
title: "Apache Maven Plugin Tools Version 3.6.4 Released"
date: 2022-01-18T10:25:25
lastmod: 2022-01-18T10:25:25
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Plugin Tools, version 3.6.4](https://maven.apache.org/plugin-tools/).

The Maven Plugin Tools contains the necessary tools to generate  
rebarbative content like descriptor, help and documentation. In addition,  
it provides tools to write Maven Plugins in scripting languages like Ant  
or Beanshell.

The Maven Plugin Plugin is used to create a Maven plugin descriptor for  
any Mojo's found in the source tree, to include in the JAR. It is also  
used to generate report files for the Mojos as well as for updating the  
plugin registry, the artifact metadata and generating a generic help goal.

 * https://maven.apache.org/plugin-tools/
 * https://maven.apache.org/plugin-tools/maven-plugin-plugin/

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-plugin-plugin</artifactId>
  <version>3.6.4</version>
</plugin>
```
You can download the appropriate sources etc. from the [download page](https://maven.apache.org/plugins-tools/download.cgi).

<!-- more -->

[Release Notes - Maven Plugin Tools - Version 3.6.4](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317820&version=12351222)


* Bugs:

  * [MPLUGIN-382](https://issues.apache.org/jira/browse/MPLUGIN-382) - Too many dependencies in plugin descriptor
  * [MPLUGIN-383](https://issues.apache.org/jira/browse/MPLUGIN-383) - Missing prerequisites in plugin pom
  * [MPLUGIN-384](https://issues.apache.org/jira/browse/MPLUGIN-384) - Nexus Staging Plugin - incompatibility

* Task:
 
  * [MPLUGIN-386](https://issues.apache.org/jira/browse/MPLUGIN-386) - Filter out maven-archiver and maven-jxr from scope warning

* Dependency upgrade:
 
  * [MPLUGIN-387](https://issues.apache.org/jira/browse/MPLUGIN-387) - Upgrade dependencies

Enjoy,

-The Apache Maven team

