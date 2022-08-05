---
title: "Apache Maven Plugin Testing 3.1.0 Released"
date: 2014-02-15T17:30:00
lastmod: 2014-02-15T17:30
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Plugin Testing, version 3.1.0](http://maven.apache.org/plugin-testing/)

The Maven Plugin Testing contains the necessary tools to be able
to test Maven Plugins.

You should specify the version in your project's dependency configuration:

<dependency>
    <groupId>org.apache.maven.plugin-testing</groupId>
    <artifactId>maven-plugin-testing-harness</artifactId>
    <version>3.1.0</version>
</dependency>

<!-- more -->

[Release Notes - Maven Plugin Testing - Version 3.1.0](https://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11740&version=20031)

Improvement:

 * [MPLUGINTESTING-36](https://issues.apache.org/jira/browse/MPLUGINTESTING-36) - Helpers to manage test projects
 * [MPLUGINTESTING-37](https://issues.apache.org/jira/browse/MPLUGINTESTING-37) - Provide convenince methods to work with MavenProject


Enjoy,

-The Apache Maven team

