---
title: "Apache Maven Compiler Plugin Version 3.5 Released"
date: 2016-01-20T20:48:00
lastmod: 2016-01-20T20:48
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Compiler Plugin, version 3.5](http://maven.apache.org/plugins/maven-compiler-plugin/).

The Compiler Plugin is used to compile the sources of your project. 

Attention: Starting with this version, the maven-compiler-plugin requires
Maven 3 and won't work with Maven 2 anymore.


You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-compiler-plugin</artifactId>
  <version>3.5</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Compiler Plugin - Version 3.5](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317225&amp;version=12330435)

New Feature:

 * [MCOMPILER-203](https://issues.apache.org/jira/browse/MCOMPILER-203) -  Allow compiler-plugin to specify annotation processor dependencies

Bug:

 * [MCOMPILER-211](https://issues.apache.org/jira/browse/MCOMPILER-211) -  Compiler plugin (3.x) fails in eclipse

Improvement:

 * [MCOMPILER-257](https://issues.apache.org/jira/browse/MCOMPILER-257) -  Require Maven 3.0
 * [MCOMPILER-258](https://issues.apache.org/jira/browse/MCOMPILER-258) -  Removing exclusions from maven-core
 * [MCOMPILER-259](https://issues.apache.org/jira/browse/MCOMPILER-259) -  Upgrade maven-shared-utils to 3.0.0

Enjoy,

-The Apache Maven team


