---
title: "Apache Maven Jar Plugin Version 3.0.0 Released"
date: 2016-05-15T21:25:00
lastmod: 2016-05-15T21:25
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Jar Plugin, version 3.0.0](https://maven.apache.org/plugins/maven-jar-plugin/).

This plugin provides the capability to build jars.

Important Note: 

 * Maven 3.X only
 * JDK 6 minimum requirement


```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-jar-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven JAR Plugin - Version 3.0.0](https://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11137&version=20457)

Bugs:

 * [MJAR-177](https://issues.apache.org/jira/browse/MJAR-177) - Empty string should be treated as default classifier
 * [MJAR-198](https://issues.apache.org/jira/browse/MJAR-198) - jar:jar without classifier replaces default jar
 * [MJAR-204](https://issues.apache.org/jira/browse/MJAR-204) - Adding plexus-utils version 3.0.22
 * [MJAR-205](https://issues.apache.org/jira/browse/MJAR-205) - Compatibility with JDK9 requires an update of plexus-archiver
 * [MJAR-216](https://issues.apache.org/jira/browse/MJAR-216) - Documentation for skip param in test-jar goal is wrong

Documentation:

 * [MJAR-197](https://issues.apache.org/jira/browse/MJAR-197) - Typo in site navigation

Improvements:

 * [MJAR-183](https://issues.apache.org/jira/browse/MJAR-183) - Add LifecycleMapping and ArtifactHandler from maven-core to target packaging plugin
 * [MJAR-194](https://issues.apache.org/jira/browse/MJAR-194) - Upgrade plexus-archiver to 2.10
 * [MJAR-199](https://issues.apache.org/jira/browse/MJAR-199) - Option "classifier" to goal test-jar
 * [MJAR-201](https://issues.apache.org/jira/browse/MJAR-201) - Upgrade Maven 3.X Only JDK 1.6
 * [MJAR-202](https://issues.apache.org/jira/browse/MJAR-202) - Bump version to 3.0.0-SNAPSHOT
 * [MJAR-203](https://issues.apache.org/jira/browse/MJAR-203) - Change package to org.apache.maven.plugins to prevent conflict with Maven Core
 * [MJAR-207](https://issues.apache.org/jira/browse/MJAR-207) - Upgrade plexus-archiver from 3.0.3 to 3.1
 * [MJAR-208](https://issues.apache.org/jira/browse/MJAR-208) - Make naming of properties consistent
 * [MJAR-209](https://issues.apache.org/jira/browse/MJAR-209) - Remove param properties that doesn't make sense for CLI usage
 * [MJAR-210](https://issues.apache.org/jira/browse/MJAR-210) - Remove useDefaultManifestFile parameter
 * [MJAR-214](https://issues.apache.org/jira/browse/MJAR-214) - Replace @pom.version@ with @project.version@ in Integration Tests
 * [MJAR-215](https://issues.apache.org/jira/browse/MJAR-215) - Upgrade plexus-archiver from 3.1 to 3.1.1 in synch with maven-archiver 3.0.1
 * [MJAR-217](https://issues.apache.org/jira/browse/MJAR-217) - Make finalName readonly parameter

Tasks:

 * [MJAR-213](https://issues.apache.org/jira/browse/MJAR-213) - Upgrade to maven-archiver 3.0.1
 * [MJAR-218](https://issues.apache.org/jira/browse/MJAR-218) - Upgrade to maven-archiver 3.0.2 to fix regression

Reporters of this Release:

 * Sanne Grinovero [MJAR-205](https://issues.apache.org/jira/browse/MJAR-205)
 * Leo Breuss [MJAR-199](https://issues.apache.org/jira/browse/MJAR-199)
 * Elias Elmqvist Wulcan [MJAR-198](https://issues.apache.org/jira/browse/MJAR-198)
 * Andreas Kohn [MJAR-197](https://issues.apache.org/jira/browse/MJAR-197)
 * Stefan Fussenegger [MJAR-177](https://issues.apache.org/jira/browse/MJAR-177)

Tester of this Release:

 * Stian Soiland-Reyes 

Many thanks to all reporters/contributors/testers of this release.

Enjoy,

- The Apache Maven team
