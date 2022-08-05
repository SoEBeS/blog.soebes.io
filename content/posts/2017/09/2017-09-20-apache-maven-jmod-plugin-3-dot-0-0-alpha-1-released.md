---
title: "Apache Maven JMod Plugin Version 3.0.0-alpha-1 Released"
date: 2017-09-20T20:23:00
lastmod: 2017-09-20T20:23
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JMod Plugin, version 3.0.0-alpha-1](https://maven.apache.org/plugins/maven-jmod-plugin/).

This is the first public release of this plugin. It is explicitly an alpha version which 
means you can give feedback how to use it or how to improve the plugin.

The JMod Plugin is intended to create a [JMod files](https://openjdk.java.net/jeps/261) via jmod.

https://maven.apache.org/plugins/maven-jmod-plugin/

You should specify the version in your project's plugin configuration:

```xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-jmod-plugin</artifactId>
    <version>3.0.0-alpha-1</version>
</plugin>
``` 

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-jmod-plugin/download.cgi


<!-- more -->

[Release Notes - Maven JMod Plugin - Version 3.0.0-alpha-1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12321433&version=12341363)


Improvements:

 * [MJMOD-1](https://issues.apache.org/jira/browse/MJMOD-1) - Upgrade dependencies in component
 * [MJMOD-2](https://issues.apache.org/jira/browse/MJMOD-2) - Classpath / Modulepath using the dependencies of the current project.
 * [MJMOD-3](https://issues.apache.org/jira/browse/MJMOD-3) - Changed moduleName into outputFileName to prevent confusion
 * [MJMOD-5](https://issues.apache.org/jira/browse/MJMOD-5) - Usage of moduleName in describe/list goal / classpath usage in create goal

Enjoy,

-The Apache Maven team

