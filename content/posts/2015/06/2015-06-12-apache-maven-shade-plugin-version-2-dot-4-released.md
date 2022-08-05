---
title: "Apache Maven Shade Plugin Version 2.4 Released"
date: 2015-06-12T07:28:00
lastmod: 2015-06-12T07:28
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shade Plugin, version 2.4](http://maven.apache.org/plugins/maven-shade-plugin/).

This plugin provides the capability to package the artifact in an uber-jar,
including its dependencies and to shade - i.e. rename - the packages of some of
the dependencies.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-shade-plugin</artifactId>
  <version>2.4</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Shade Plugin - Version 2.4](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317921&version=12331393)

Bugs:

 * [MSHADE-155](https://issues.apache.org/jira/browse/MSHADE-155) - dependency-reduced-pom should use shadedArtifactId
 * [MSHADE-169](https://issues.apache.org/jira/browse/MSHADE-169) - Typos in warning message
 * [MSHADE-172](https://issues.apache.org/jira/browse/MSHADE-172) - "java.lang.ArithmeticException: / by zero" in MinijarFilter
 * [MSHADE-174](https://issues.apache.org/jira/browse/MSHADE-174) - Unable to shade Java 8 jarfiles with static interface methods using minimizeJar
 * [MSHADE-183](https://issues.apache.org/jira/browse/MSHADE-183) - Getting "Error creating shaded jar: java.util.jar.Attributes cannot be cast to java.lang.String" error when using ManifestResourceTransformer with Maven 3.2.5
 * [MSHADE-185](https://issues.apache.org/jira/browse/MSHADE-185) - systemPath content is interpolated for system dependencies

Improvements:

 * [MSHADE-177](https://issues.apache.org/jira/browse/MSHADE-177) - MavenProject/MavenSession Injection as a paremeter instead as a component.
 * [MSHADE-178](https://issues.apache.org/jira/browse/MSHADE-178) - Removing plexus-container-default dependency
 * [MSHADE-179](https://issues.apache.org/jira/browse/MSHADE-179) - Fix RAT Report
 * [MSHADE-180](https://issues.apache.org/jira/browse/MSHADE-180) - Upgrade plexus-utils to 3.0.18
 * [MSHADE-188](https://issues.apache.org/jira/browse/MSHADE-188) - Upgrade maven-dependency-tree to 2.2
 * [MSHADE-191](https://issues.apache.org/jira/browse/MSHADE-191) - Upgrade plexus-utils to 3.0.22
 * [MSHADE-192](https://issues.apache.org/jira/browse/MSHADE-192) - Upgrade maven-invoker to 1.10
 * [MSHADE-193](https://issues.apache.org/jira/browse/MSHADE-193) - Upgrade to fluido skin 1.4.0


Enjoy,

-The Apache Maven team
