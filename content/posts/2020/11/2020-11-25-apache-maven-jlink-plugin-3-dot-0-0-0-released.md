---
title: "Apache Maven JLink Plugin Version 3.0.0 Released"
date: 2020-11-25T20:30:12
lastmod: 2020-11-25T20:30:12
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JLink Plugin, version 3.0.0](https://maven.apache.org/plugins/maven-jlink-plugin/).

This is the first public release of this plugin. It is explicitly an alpha version which 
means you can give feedback how to use it or how to improve the plugin.

The JLink Plugin is intended to create a [Modular Java Run-Time Images](https://openjdk.java.net/jeps/220) via jlink.

https://maven.apache.org/plugins/maven-jlink-plugin/

You should specify the version in your project's plugin configuration:

```xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-jlink-plugin</artifactId>
    <version>3.0.0</version>
</plugin>
``` 

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-jlink-plugin/download.cgi

<!-- more -->

[Release Notes - Maven JLink Plugin - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12321432&version=12343851)

* Bugs:

  * [MJLINK-4](https://issues.apache.org/jira/browse/MJLINK-4) - NPE on execution
  * [MJLINK-5](https://issues.apache.org/jira/browse/MJLINK-5) - Parameter 'compression' is wrong. It is 'compress'
  * [MJLINK-23](https://issues.apache.org/jira/browse/MJLINK-23) - Allow setting additional modulepaths

* New Features:

  * [MJLINK-9](https://issues.apache.org/jira/browse/MJLINK-9) - Add support for multi module projects
  * [MJLINK-18](https://issues.apache.org/jira/browse/MJLINK-18) - Add support for JLink launcher

* Improvements:

  * [MJLINK-1](https://issues.apache.org/jira/browse/MJLINK-1) - Dependency Report produces exception based on JDK 9 based JAR file...
  * [MJLINK-3](https://issues.apache.org/jira/browse/MJLINK-3) - Improve verbose output during build
  * [MJLINK-6](https://issues.apache.org/jira/browse/MJLINK-6) - Allow set the jmods path
  * [MJLINK-14](https://issues.apache.org/jira/browse/MJLINK-14) - Let POM parent do it's work
  * [MJLINK-15](https://issues.apache.org/jira/browse/MJLINK-15) - Upgrade plexus-java 0.9.7
  * [MJLINK-26](https://issues.apache.org/jira/browse/MJLINK-26) - Can not create an image from a single module project without a dependency
  * [MJLINK-28](https://issues.apache.org/jira/browse/MJLINK-28) - Add WARNING in case of duplicate module names
  * [MJLINK-45](https://issues.apache.org/jira/browse/MJLINK-45) - make build Reproducible
  * [MJLINK-50](https://issues.apache.org/jira/browse/MJLINK-50) - Upgrade to Java 8 / Maven 3.1.0

* Dependency upgrades

  * [MJLINK-8](https://issues.apache.org/jira/browse/MJLINK-8) - Upgrade plexus-java 0.9.5
  * [MJLINK-10](https://issues.apache.org/jira/browse/MJLINK-10) - Upgrade maven-plugin-plugin to 3.5.1
  * [MJLINK-11](https://issues.apache.org/jira/browse/MJLINK-11) - Upgrade parent to 31
  * [MJLINK-13](https://issues.apache.org/jira/browse/MJLINK-13) - Remove hard code version for maven-site-plugin
  * [MJLINK-16](https://issues.apache.org/jira/browse/MJLINK-16) - Upgrade mave-surefire/failsafe-plugin 2.21.0
  * [MJLINK-17](https://issues.apache.org/jira/browse/MJLINK-17) - Add documentation information for GitHub
  * [MJLINK-20](https://issues.apache.org/jira/browse/MJLINK-20) - Upgrade plexus-archiver to 3.6.0
  * [MJLINK-21](https://issues.apache.org/jira/browse/MJLINK-21) - Upgrade test dependencies
  * [MJLINK-22](https://issues.apache.org/jira/browse/MJLINK-22) - Upgrade maven-plugins parent to version 32.
  * [MJLINK-24](https://issues.apache.org/jira/browse/MJLINK-24) - Upgrade bound plugins
  * [MJLINK-25](https://issues.apache.org/jira/browse/MJLINK-25) - Upgrade bounded plugins (maven-resources-plugin to 3.1.0)
  * [MJLINK-29](https://issues.apache.org/jira/browse/MJLINK-29) - Upgrade maven-compiler-plugin to version 3.8.0 in IT's
  * [MJLINK-30](https://issues.apache.org/jira/browse/MJLINK-30) - Upgrade parent to version 33
  * [MJLINK-31](https://issues.apache.org/jira/browse/MJLINK-31) - Upgrade plexus-java 0.9.11
  * [MJLINK-32](https://issues.apache.org/jira/browse/MJLINK-32) - Upgrade plexus-archiver 3.7.0
  * [MJLINK-33](https://issues.apache.org/jira/browse/MJLINK-33) - Upgrade maven-archiver 3.3.0
  * [MJLINK-34](https://issues.apache.org/jira/browse/MJLINK-34) - Upgrade java-language to 1.0.1
  * [MJLINK-35](https://issues.apache.org/jira/browse/MJLINK-35) - Upgrade plexus-archiver - 4.1.0
  * [MJLINK-37](https://issues.apache.org/jira/browse/MJLINK-37) - Upgrade maven-archiver to 3.4.0
  * [MJLINK-38](https://issues.apache.org/jira/browse/MJLINK-38) - Upgrade plexus-java 1.0.3
  * [MJLINK-43](https://issues.apache.org/jira/browse/MJLINK-43) - upgrade plexus-java 1.0.5
  * [MJLINK-44](https://issues.apache.org/jira/browse/MJLINK-44) - Upgrade maven-plugins to 34
  * [MJLINK-46](https://issues.apache.org/jira/browse/MJLINK-46) - Upgrade maven-archiver to 3.5.0


Enjoy,

-The Apache Maven team
