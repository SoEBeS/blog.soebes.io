---
title: "Apache Maven Compiler Plugin Version 3.6.1 Released"
date: 2017-01-20T19:00:15
lastmod: 2017-01-20T19:00:15
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Compiler Plugin, version 3.6.1](https://maven.apache.org/plugins/maven-compiler-plugin/).

The Compiler Plugin is used to compile the sources of your project. 

Attention: Starting with version 3.5, the maven-compiler-plugin requires
Maven 3 and won't work with Maven 2 anymore.


You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-compiler-plugin</artifactId>
  <version>3.6.1</version>
</plugin>
```

Most important change is the support for test-compile when using JDK 9 build b148+

<!-- more -->

[Release Notes - Maven Compiler Plugin - Version 3.6.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317225&version=12338627)

Bugs:

 * [MCOMPILER-282](https://issues.apache.org/jira/browse/MCOMPILER-282) - Remove link to non-existing Codehaus wiki
 * [MCOMPILER-284](https://issues.apache.org/jira/browse/MCOMPILER-284) - maven.test.skip doesn't skip test compilation
 * [MCOMPILER-287](https://issues.apache.org/jira/browse/MCOMPILER-287) - Adjust documentation module-info

Documentation:

 * [MCOMPILER-281](https://issues.apache.org/jira/browse/MCOMPILER-281) - Remove reference to Maven 1's Java plugin

Improvement:

 * [MCOMPILER-285](https://issues.apache.org/jira/browse/MCOMPILER-285) - Support test-compile for JDK 9 build b148+

Enjoy,

-The Apache Maven team
