---
title: "Apache Maven Linkcheck Plugin Version 1.2 Released"
date: 2014-10-11T15:02:00
lastmod: 2014-10-11T15:02
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Linkcheck Plugin, Version 1.2](http://maven.apache.org/plugins/maven-linkcheck-plugin).

This plug-in allows you to generate a Linkcheck report of your project's
documentation using the Doxia Linkcheck Tool.

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-linkcheck-plugin</artifactId>
  <version>1.2</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven Linkcheck Version 1.2](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=12100&version=16906)


Improvements:

 * [MLINKCHECK-12](https://issues.apache.org/jira/browse/MLINKCHECK-12) - MavenProject/MavenSession Injection as a paremeter instead as a component.
 * [MLINKCHECK-13](https://issues.apache.org/jira/browse/MLINKCHECK-13) - Upgrade to Maven 2.2.1 compatiblity
 * [MLINKCHECK-14](https://issues.apache.org/jira/browse/MLINKCHECK-14) - Upgrade maven-invoker 2.0.9 to 2.1.1
 * [MLINKCHECK-15](https://issues.apache.org/jira/browse/MLINKCHECK-15) - Update maven-reporting-impl to 2.3
 * [MLINKCHECK-16](https://issues.apache.org/jira/browse/MLINKCHECK-16) - Update version of plexus-utils to 3.0.18
 * [MLINKCHECK-17](https://issues.apache.org/jira/browse/MLINKCHECK-17) - Upgrade plexus-i18n to 1.0-beta-10

Task:

 * [MLINKCHECK-11](https://issues.apache.org/jira/browse/MLINKCHECK-11) - use maven-plugin-tools' java 5 annotations


Enjoy,

-The Apache Maven team

Karl Heinz Marbaise
