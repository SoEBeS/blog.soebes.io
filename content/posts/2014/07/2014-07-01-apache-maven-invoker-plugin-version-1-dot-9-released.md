---
title: "Apache Maven Invoker Plugin Version 1.9 Released"
date: 2014-07-01T19:55:00
lastmod: 2014-07-01T19:55
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Invoker Plugin, version 1.9](http://maven.apache.org/plugins/maven-invoker-plugin/).

The Invoker Plugin is used to run a set of Maven projects. The plugin can
determine whether each project execution is successful, and optionally can
verify the output generated from a given project execution.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-invoker-plugin</artifactId>
  <version>1.9</version>
</plugin>
```
<!-- more -->

[Release Notes - Maven Invoker Plugin - Version 1.9](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11441&version=18996)

Bugs:

 * [MINVOKER-162](https://issues.apache.org/jira/browse/MINVOKER-162) - IT failure with empty local it-repo
 * [MINVOKER-166](https://issues.apache.org/jira/browse/MINVOKER-166) - Failing in relationship with Maven 3.2.2

Improvement:

 * [MINVOKER-119](https://issues.apache.org/jira/browse/MINVOKER-119) - Allow access to properties in pre- and postBuild scripts

New Features:

 * [MINVOKER-122](https://issues.apache.org/jira/browse/MINVOKER-122) - Import information into groovy scripts of the running Maven environment
 * [MINVOKER-141](https://issues.apache.org/jira/browse/MINVOKER-141) - passing own properties to all scripts
 * [MINVOKER-151](https://issues.apache.org/jira/browse/MINVOKER-151) - Add failIfNoProjects


Enjoy,

-The Apache Maven team
