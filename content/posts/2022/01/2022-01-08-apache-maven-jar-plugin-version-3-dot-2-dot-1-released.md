---
title: "Apache Maven Jar Plugin Version 3.2.1 Released"
date: 2022-01-08T22:03:03
lastmod: 2022-01-08T22:03:03
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Jar Plugin, version 3.2.1](https://maven.apache.org/plugins/maven-jar-plugin/).

This plugin provides the capability to build jars.

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-jar-plugin</artifactId>
  <version>3.2.1</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven JAR Plugin - Version 3.2.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317526&version=12348050)

* Bugs:
 
  * [MJAR-276] - Don't log a warning when jar will be empty and creation is forced
  * [MJAR-281] - Wrong order of META-INF/ and META-INF/MANIFEST.MF entries

* Improvement:
 
  * [MJAR-270] - make build Reproducible

* Dependency upgrade:
 
  * [MJAR-282] - Upgrade Maven Archiver to 3.5.2

Enjoy,

- The Apache Maven team
