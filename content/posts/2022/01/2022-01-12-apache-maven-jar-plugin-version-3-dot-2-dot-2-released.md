---
title: "Apache Maven Jar Plugin Version 3.2.2 Released"
date: 2022-01-12T11:05:05
lastmod: 2022-01-12T11:05:05
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Jar Plugin, version 3.2.2](https://maven.apache.org/plugins/maven-jar-plugin/).

This plugin provides the capability to build jars.

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-jar-plugin</artifactId>
  <version>3.2.2</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven JAR Plugin - Version 3.2.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?version=12351215&styleName=Text&projectId=12317526)

* Dependency upgrades:
 
  * [MJAR-283](https://issues.apache.org/jira/browse/MJAR-283) - Upgrade Plexus Utils to 3.3.1
  * [MJAR-284](https://issues.apache.org/jira/browse/MJAR-284) - Remove override for Plexus Archiver to fix order of META-INF/ and META-INF/MANIFEST.MF entries

Enjoy,

- The Apache Maven team
