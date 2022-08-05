---
title: "Apache Maven Repository Plugin Version 2.4 Released"
date: 2015-02-22T15:34:00
lastmod: 2015-02-22T15:34
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Repository Plugin, version 2.4](http://maven.apache.org/plugins/maven-repository-plugin/).

This plugin is used to create bundles of artifacts that can be uploaded to the
central repository.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-repository-plugin</artifactId>
  <version>2.4</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Repository Plugin - Version 2.4](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11250&version=16635)

Improvements:

 * [MREPOSITORY-27](https://issues.apache.org/jira/browse/MREPOSITORY-27) - MavenProject/MavenSession Injection as a paremeter instead as a component.
 * [MREPOSITORY-28](https://issues.apache.org/jira/browse/MREPOSITORY-28) - Update version of plexus-archiver to 2.5
 * [MREPOSITORY-29](https://issues.apache.org/jira/browse/MREPOSITORY-29) - Added missing artifacts for integration tests
 * [MREPOSITORY-30](https://issues.apache.org/jira/browse/MREPOSITORY-30) - Upgrade to Maven 2.2.1 compatiblity
 * [MREPOSITORY-31](https://issues.apache.org/jira/browse/MREPOSITORY-31) - Update version of plexus-archiver to 2.6.3
 * [MREPOSITORY-32](https://issues.apache.org/jira/browse/MREPOSITORY-32) - Removed dependency plexus-container-default:1.0-alpha-9-stable-1
 * [MREPOSITORY-33](https://issues.apache.org/jira/browse/MREPOSITORY-33) - Improve stabebility of Integration tests
 * [MREPOSITORY-35](https://issues.apache.org/jira/browse/MREPOSITORY-35) - Fix RAT Report
 * [MREPOSITORY-36](https://issues.apache.org/jira/browse/MREPOSITORY-36) - Update version of plexus-archiver from 2.6.3 to 2.9
 * [MREPOSITORY-37](https://issues.apache.org/jira/browse/MREPOSITORY-37) - Problem with integration tests (it-parent)

Task:

 * [MREPOSITORY-26](https://issues.apache.org/jira/browse/MREPOSITORY-26) - use maven-plugin-tools' java 5 annotations


Enjoy,

-The Apache Maven team

