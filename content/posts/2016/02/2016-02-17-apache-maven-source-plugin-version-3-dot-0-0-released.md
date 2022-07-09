---
title: "Apache Maven Source Plugin Version 3.0.0 Released"
date: 2016-02-17T19:49:00
lastmod: 2016-02-17T19:49
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Source Plugin, Version 3.0.0][home].

The Source Plugin creates a jar archive of the source files of the current
project. The jar file is, by default, created in the project's target
directory.

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-source-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page][download].

<!-- more -->

[Release Notes - Apache Maven Source Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317924&version=12331545)


Bug:

 * [MSOURCES-81](https://issues.apache.org/jira/browse/MSOURCES-81) -  allow sources jar to contain Maven descriptor

Improvements:

 * [MSOURCES-75](https://issues.apache.org/jira/browse/MSOURCES-75) -  Update version of plexus-archiver to 2.7
 * [MSOURCES-76](https://issues.apache.org/jira/browse/MSOURCES-76) -  Upgrade from maven-plugins version 25 to 26
 * [MSOURCES-77](https://issues.apache.org/jira/browse/MSOURCES-77) -  Upgrade maven-archiver from 2.5 to 2.6
 * [MSOURCES-78](https://issues.apache.org/jira/browse/MSOURCES-78) -  Upgrade plexus-archiver 2.7 to 2.8.4
 * [MSOURCES-79](https://issues.apache.org/jira/browse/MSOURCES-79) -  Upgrade to maven-plugins parent version 27
 * [MSOURCES-80](https://issues.apache.org/jira/browse/MSOURCES-80) -  Upgrade plexus-archiver to 2.10.2
 * [MSOURCES-82](https://issues.apache.org/jira/browse/MSOURCES-82) -  Make naming of properties consistent to the plugin name.
 * [MSOURCES-83](https://issues.apache.org/jira/browse/MSOURCES-83) -  Make Plugin only Maven 3.0 minimum
 * [MSOURCES-84](https://issues.apache.org/jira/browse/MSOURCES-84) -  Change package name from org.apache.maven.plugin to org.apache.maven.plugins
 * [MSOURCES-85](https://issues.apache.org/jira/browse/MSOURCES-85) -  Upgrade plexus-archiver to 3.0.1
 * [MSOURCES-86](https://issues.apache.org/jira/browse/MSOURCES-86) -  Upgrade maven-archiver to 3.0.0
 * [MSOURCES-88](https://issues.apache.org/jira/browse/MSOURCES-88) -  Upgrade plexus-utils to 3.0.22
 * [MSOURCES-89](https://issues.apache.org/jira/browse/MSOURCES-89) -  Using plugin parent version 28
 * [MSOURCES-90](https://issues.apache.org/jira/browse/MSOURCES-90) -  Upgrade junit to 4.11
 * [MSOURCES-91](https://issues.apache.org/jira/browse/MSOURCES-91) -  Added several properties for parameters
 * [MSOURCES-92](https://issues.apache.org/jira/browse/MSOURCES-92) -  Generate Maven Descriptor by default
 * [MSOURCES-93](https://issues.apache.org/jira/browse/MSOURCES-93) -  Upgrade plexus-archiver from 3.0.1 to 3.0.3


Enjoy,

-The Apache Maven team

Karl Heinz Marbaise

[download]: http://maven.apache.org/plugins/maven-source-plugin/download.html
[home]: http://maven.apache.org/plugins/maven-source-plugin/
