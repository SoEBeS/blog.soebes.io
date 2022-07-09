---
title: "Apache Maven Remote Resources Plugin Version 1.6.0 Released"
date: 2018-11-01T13:45:00
lastmod: 2018-11-01T13:45
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Remote Resources Plugin, version 1.6.0](https://maven.apache.org/plugins/maven-remote-resources-plugin/)


This plugin is used to retrieve JARs of resources from remote repositories,
process those resources, and incorporate them into JARs you build with Maven.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-remote-resources-plugin</artifactId>
  <version>1.6.0</version>
</plugin>
```
You can download the appropriate sources etc. from the [download page](https://maven.apache.org/plugins/maven-remote-resources-plugin/download.cgi)

<!-- more -->

[Release Notes - Apache Maven Remote Resources Plugin - Version 1.6.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317825&version=12331230&styleName=Text)

Bugs:

 * [MRRESOURCES-70](https://issues.apache.org/jira/browse/MRRESOURCES-70) - SVN settings: eol-style and keywords
 * [MRRESOURCES-73](https://issues.apache.org/jira/browse/MRRESOURCES-73) - remote resources depends on unavailable maven filtering verison
 * [MRRESOURCES-74](https://issues.apache.org/jira/browse/MRRESOURCES-74) - maven remote resources plugin not compatible with Java 8
 * [MRRESOURCES-75](https://issues.apache.org/jira/browse/MRRESOURCES-75) - Currently running -Prun-its clean verify - fails
 * [MRRESOURCES-76](https://issues.apache.org/jira/browse/MRRESOURCES-76) - Updated plexus-interpolation to fix possible concurrency issues
 * [MRRESOURCES-91](https://issues.apache.org/jira/browse/MRRESOURCES-91) - Avoid overwrite of the destination file if the produced contents is the same
 * [MRRESOURCES-94](https://issues.apache.org/jira/browse/MRRESOURCES-94) - Performance issue in ProcessRemoteResourcesMojo.configureVelocityContext(...)
 * [MRRESOURCES-101](https://issues.apache.org/jira/browse/MRRESOURCES-101) - NPE - Error rendering velocity resource

Improvements:

 * [MRRESOURCES-79](https://issues.apache.org/jira/browse/MRRESOURCES-79) - Removed dependency plexus-container-default:1.0-alpha-9-stable-1
 * [MRRESOURCES-84](https://issues.apache.org/jira/browse/MRRESOURCES-84) - Print warning in case no encoding has been set.
 * [MRRESOURCES-86](https://issues.apache.org/jira/browse/MRRESOURCES-86) - Remove unused dependency maven-monitor
 * [MRRESOURCES-88](https://issues.apache.org/jira/browse/MRRESOURCES-88) - Added a note about .vm on the usage page
 * [MRRESOURCES-89](https://issues.apache.org/jira/browse/MRRESOURCES-89) - Removed deprecated attributes
 * [MRRESOURCES-90](https://issues.apache.org/jira/browse/MRRESOURCES-90) - Using project.isExecutionRoot() instead of the old way.

Wish:

 * [MRRESOURCES-111](https://issues.apache.org/jira/browse/MRRESOURCES-111) - add INFO message on number of resources bundled/copied

Dependency upgrades:

 * [MRRESOURCES-77](https://issues.apache.org/jira/browse/MRRESOURCES-77) - Upgrade maven-filtering to 1.3
 * [MRRESOURCES-78](https://issues.apache.org/jira/browse/MRRESOURCES-78) - Upgrade maven-plugin-testing-harness to 1.3
 * [MRRESOURCES-80](https://issues.apache.org/jira/browse/MRRESOURCES-80) - Upgrade to maven-parent version 26
 * [MRRESOURCES-82](https://issues.apache.org/jira/browse/MRRESOURCES-82) - Upgrade to maven-plugins parent version 27
 * [MRRESOURCES-87](https://issues.apache.org/jira/browse/MRRESOURCES-87) - Upgrade JUnit from 3.8.1 to 4.11
 * [MRRESOURCES-95](https://issues.apache.org/jira/browse/MRRESOURCES-95) - Upgrade plexus-resources from 1.0-alpha-7 to 1.0.1
 * [MRRESOURCES-97](https://issues.apache.org/jira/browse/MRRESOURCES-97) - Upgrade mavenplugins parent to version 30
 * [MRRESOURCES-99](https://issues.apache.org/jira/browse/MRRESOURCES-99) - Upgrade of plexus-interpolation to 1.24.
 * [MRRESOURCES-100](https://issues.apache.org/jira/browse/MRRESOURCES-100) - Upgrade maven-filtering to 3.1.1
 * [MRRESOURCES-103](https://issues.apache.org/jira/browse/MRRESOURCES-103) - Upgrade parent to 32
 * [MRRESOURCES-104](https://issues.apache.org/jira/browse/MRRESOURCES-104) - Upgrade parent to 31
 * [MRRESOURCES-107](https://issues.apache.org/jira/browse/MRRESOURCES-107) - Upgrade JUnit from 4.11 to 4.12
 * [MRRESOURCES-108](https://issues.apache.org/jira/browse/MRRESOURCES-108) - Upgrade plexus-interpolation to 1.25
 * [MRRESOURCES-109](https://issues.apache.org/jira/browse/MRRESOURCES-109) - Upgrade plexus-utils from 3.0.24 to 3.1.0
 * [MRRESOURCES-110](https://issues.apache.org/jira/browse/MRRESOURCES-110) - Upgrade parent to version 33

Enjoy,

-The Apache Maven team

