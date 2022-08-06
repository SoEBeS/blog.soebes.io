---
title: "Apache Maven Invoker Plugin Version 1.10 Released"
date: 2015-04-03T17:04:00
lastmod: 2015-04-03T17:04
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Invoker Plugin, version 1.10](http://maven.apache.org/plugins/maven-invoker-plugin/).

The Invoker Plugin is used to run a set of Maven projects. The plugin can
determine whether each project execution is successful, and optionally can
verify the output generated from a given project execution.

This plugin is in particular handy to perform integration tests for other Maven
plugins. The Invoker Plugin can be employed to run a set of test projects that
have been designed to assert certain features of the plugin under test.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-invoker-plugin</artifactId>
  <version>1.10</version>
</plugin>
```
<!-- more -->

[Release Notes - Maven Invoker Plugin - Version 1.10](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11441&version=20479)

Bugs:

 * [MINVOKER-155](https://issues.apache.org/jira/browse/MINVOKER-155) - Invoker plugin does not allow multiple environment variables to be set
 * [MINVOKER-176](https://issues.apache.org/jira/browse/MINVOKER-176) - Update to plexus-interpolation 1.21 for thread safety issues
 * [MINVOKER-183](https://issues.apache.org/jira/browse/MINVOKER-183) - IT failing when path contains accents
 * [MINVOKER-185](https://issues.apache.org/jira/browse/MINVOKER-185) - Cannot run invoker ITs on Windows with Maven 3.3.1

Improvements:

 * [MINVOKER-170](https://issues.apache.org/jira/browse/MINVOKER-170) - Better document the usage of options for Maven
 * [MINVOKER-175](https://issues.apache.org/jira/browse/MINVOKER-175) - Fix RAT Report
 * [MINVOKER-177](https://issues.apache.org/jira/browse/MINVOKER-177) - Upgrade to maven-plugins version 25 to 26
 * [MINVOKER-178](https://issues.apache.org/jira/browse/MINVOKER-178) - Make invoker copy support symlinks
 * [MINVOKER-179](https://issues.apache.org/jira/browse/MINVOKER-179) - Upgrade to maven-plugins parent version 27
 * [MINVOKER-181](https://issues.apache.org/jira/browse/MINVOKER-181) - Create single summary file
 * [MINVOKER-184](https://issues.apache.org/jira/browse/MINVOKER-184) - Implement IT in an other way.
 * [MINVOKER-186](https://issues.apache.org/jira/browse/MINVOKER-186) - Filter other files except pom like .mvn/extensions.xml

Enjoy,

-The Apache Maven team
