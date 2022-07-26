---
title: "Apache Maven Compiler Plugin Version 3.7.0 Released"
date: 2017-09-05T19:00:15
lastmod: 2017-09-05T19:00:15
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Compiler Plugin, version 3.7.0](https://maven.apache.org/plugins/maven-compiler-plugin/).

The Compiler Plugin is used to compile the sources of your project. 

Attention: Starting with version 3.5, the maven-compiler-plugin requires
Maven 3 and won't work with Maven 2 anymore.


You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-compiler-plugin</artifactId>
  <version>3.7.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Compiler Plugin - Version 3.7.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317225&version=12341266)

Bugs:

 * [MCOMPILER-289](https://issues.apache.org/jira/browse/MCOMPILER-289) - Comments in module-info.java break test compile due to parser issue
 * [MCOMPILER-303](https://issues.apache.org/jira/browse/MCOMPILER-303) - Failure of a build with JDK 9

Improvements:

 * [MCOMPILER-296](https://issues.apache.org/jira/browse/MCOMPILER-296) - Add jpms.args to the META-INF folder
 * [MCOMPILER-304](https://issues.apache.org/jira/browse/MCOMPILER-304) - Introduce plexus-language component
 * [MCOMPILER-305](https://issues.apache.org/jira/browse/MCOMPILER-305) - Require Java 1.7

New Feature:

 * [MCOMPILER-295](https://issues.apache.org/jira/browse/MCOMPILER-295) - Upgrade ASM to 6.0_BETA

Enjoy,

-The Apache Maven team
