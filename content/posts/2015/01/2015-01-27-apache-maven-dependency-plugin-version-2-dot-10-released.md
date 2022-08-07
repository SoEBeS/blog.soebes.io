---
title: "Apache Maven Dependency Plugin Version 2.10 Released"
date: 2015-01-27T22:59:00
lastmod: 2015-01-27T22:59
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Dependecy Plugin, version 2.10](http://maven.apache.org/plugins/maven-dependency-plugin/).

The dependency plugin provides the capability to manipulate artifacts. It can
copy and/or unpack artifacts from local or remote repositories to a specified
location.


You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-dependency-plugin</artifactId>
  <version>2.10</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Dependency Plugin - Version 2.10](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11214&version=20646)

Bugs:

 * [MDEP-109](https://issues.apache.org/jira/browse/MDEP-109) - Dependency plugin loses file permissions when unpacking or copying artifact items
 * [MDEP-242](https://issues.apache.org/jira/browse/MDEP-242) - Exclude does not work correctly for tar.gz (but is working for zip)
 * [MDEP-397](https://issues.apache.org/jira/browse/MDEP-397) - When using unpack-dependencies with a zip created on unixes, contained symlinks aren't correctly unpackaged
 * [MDEP-436](https://issues.apache.org/jira/browse/MDEP-436) - German umlauts in outputDirectory and destFileName getting garbled
 * [MDEP-466](https://issues.apache.org/jira/browse/MDEP-466) - analyze fails on multimodule project (regression)

Improvements:

 * [MDEP-465](https://issues.apache.org/jira/browse/MDEP-465) - Update version of plexus-archiver from 2.4.4 to 2.9
 * [MDEP-467](https://issues.apache.org/jira/browse/MDEP-467) - Update plexus-io from 2.0.9 to 2.2
 * [MDEP-472](https://issues.apache.org/jira/browse/MDEP-472) - Upgrade to maven-plugins parent version 27

New Feature:

 * [MDEP-476](https://issues.apache.org/jira/browse/MDEP-476) - add the ability to ignore dependencies in the analyze-* goals


Enjoy,

-The Apache Maven team
