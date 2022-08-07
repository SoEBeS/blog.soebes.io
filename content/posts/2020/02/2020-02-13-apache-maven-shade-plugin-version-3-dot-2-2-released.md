---
title: "Apache Maven Shade Plugin Version 3.2.2 Released"
date: 2020-02-13T22:35:12
lastmod: 2020-02-13T22:35:12
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shade Plugin, version 3.2.2](https://maven.apache.org/plugins/maven-shade-plugin/).

This plugin provides the capability to package the artifact in an uber-jar,
including its dependencies and to shade - i.e. rename - the packages of some of
the dependencies.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-shade-plugin</artifactId>
  <version>3.2.2</version>
</plugin>
```

You can download the [appropriate sources etc. from the download page][download-page]

<!-- more -->

 
[Release Notes - Maven Shade Plugin - Version 3.2.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317921&version=12344059)

* Bugs:

    * [MSHADE-223](https://issues.apache.org/jira/browse/MSHADE-223) - Endless processing when promoteTransitiveDependencies=true
    * [MSHADE-284](https://issues.apache.org/jira/browse/MSHADE-284) - Shaded test JARs are always empty
    * [MSHADE-291](https://issues.apache.org/jira/browse/MSHADE-291) - shadedPattern applied multiples times when relocating the contents of META-INF/services files
    * [MSHADE-298](https://issues.apache.org/jira/browse/MSHADE-298) - Groovy extension module transformer looking in incorrect META-INF directory
    * [MSHADE-309](https://issues.apache.org/jira/browse/MSHADE-309) - issue tracker link on the web site of shade plugin does not work.
    * [MSHADE-311](https://issues.apache.org/jira/browse/MSHADE-311) - Bad exclusions in dependency-reduced-pom.xml
    * [MSHADE-315](https://issues.apache.org/jira/browse/MSHADE-315) - Broken link on Maven Shade Plugin
    * [MSHADE-318](https://issues.apache.org/jira/browse/MSHADE-318) - Specifically included class's dependencies are missing
    * [MSHADE-331](https://issues.apache.org/jira/browse/MSHADE-331) - Issue Tracker link is not working - Page Not Found
    * [MSHADE-337](https://issues.apache.org/jira/browse/MSHADE-337) - Relocation cannot process class file version 58 JARs
    * [MSHADE-339](https://issues.apache.org/jira/browse/MSHADE-339) - Shaded test jar has wrong type "jar"
    * [MSHADE-340](https://issues.apache.org/jira/browse/MSHADE-340) - Shaded test jar artifact is not attached

* New Features:

    * [MSHADE-306](https://issues.apache.org/jira/browse/MSHADE-306) - Log all duplicates, not only classes
    * [MSHADE-347](https://issues.apache.org/jira/browse/MSHADE-347) - Reproducible Builds: make entries in output jar files reproducible

* Improvements:

    * [MSHADE-285](https://issues.apache.org/jira/browse/MSHADE-285) - It should be possible to shade test sources as a JAR
    * [MSHADE-313](https://issues.apache.org/jira/browse/MSHADE-313) - Minimize jar should respect implementations under /META-INF/services/
    * [MSHADE-316](https://issues.apache.org/jira/browse/MSHADE-316) - Minijar: <excludeDefaults>true</excludeDefaults>
    * [MSHADE-319](https://issues.apache.org/jira/browse/MSHADE-319) - Group output into included and excluded artifacts to easily identify them
    * [MSHADE-348](https://issues.apache.org/jira/browse/MSHADE-348) - Make build Reproducible

* Test:

    * [MSHADE-327](https://issues.apache.org/jira/browse/MSHADE-327) - improved integration test coverage for relocation and minification

* Tasks:

    * [MSHADE-322](https://issues.apache.org/jira/browse/MSHADE-322) - Provide a transformer for properties files
    * [MSHADE-330](https://issues.apache.org/jira/browse/MSHADE-330) - Java 12 and 13 support
    * [MSHADE-346](https://issues.apache.org/jira/browse/MSHADE-346) - Introduce mock repository manager for testing
    * [MSHADE-350](https://issues.apache.org/jira/browse/MSHADE-350) - Enable ManifestResourceTransformer to rewrite the manifest with relocations

* Dependency upgrades:

    * [MSHADE-320](https://issues.apache.org/jira/browse/MSHADE-320) - Upgrade maven-artifact-transfer to 0.11.0
    * [MSHADE-338](https://issues.apache.org/jira/browse/MSHADE-338) - Upgrade maven-artifact-transfer 0.12.0
    * [MSHADE-341](https://issues.apache.org/jira/browse/MSHADE-341) - Upgrade plexus-utils 3.3.0
    * [MSHADE-349](https://issues.apache.org/jira/browse/MSHADE-349) - Upgrade to org.ow2.asm:asm:7.3.1


Enjoy,

-The Apache Maven team

[download-page]: https://maven.apache.org/shared/maven-archiver/download.cgi
