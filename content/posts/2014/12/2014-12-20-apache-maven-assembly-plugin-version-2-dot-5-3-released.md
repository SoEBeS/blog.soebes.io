---
title: "Apache Maven Assembly Plugin Version 2.5.3 Released"
date: 2014-12-20T11:56:00
lastmod: 2014-12-20T11:56
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the
[Apache Maven Assembly Plugin, version 2.5.3](http://maven.apache.org/plugins/maven-assembly-plugin/).

The Assembly Plugin for Maven is primarily intended to allow users to aggregate
the project output along with its dependencies, modules, site documentation,
and other files into a single distributable archive.

This release is a bugfix release.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-assembly-plugin</artifactId>
  <version>2.5.3</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Assembly Plugin - Version 2.5.3](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11126&version=20790)

Bugs:

 * [MASSEMBLY-648](https://issues.apache.org/jira/browse/MASSEMBLY-648) - lineEnding in fileSet corrupts jar files
 * [MASSEMBLY-665](https://issues.apache.org/jira/browse/MASSEMBLY-665) - OS dependent behaviour while packaging
 * [MASSEMBLY-735](https://issues.apache.org/jira/browse/MASSEMBLY-735) - NullPointerException at org.apache.commons.compress.archivers.zip.FallbackZipEncoding.encode(FallbackZipEncoding.java:80)
 * [MASSEMBLY-739](https://issues.apache.org/jira/browse/MASSEMBLY-739) - directory permissions are not 755 but 000 in zip
 * [MASSEMBLY-741](https://issues.apache.org/jira/browse/MASSEMBLY-741) - wrong paths in file-modes tests
 * [MASSEMBLY-742](https://issues.apache.org/jira/browse/MASSEMBLY-742) - Unclosed ZipFile warnings when ZIP archives are included
 * [MASSEMBLY-743](https://issues.apache.org/jira/browse/MASSEMBLY-743) - <includeBaseDirectory> not correct

Improvements:

 * [MASSEMBLY-720](https://issues.apache.org/jira/browse/MASSEMBLY-720) - Fixed Checkstyle reported errors / warnings
 * [MASSEMBLY-738](https://issues.apache.org/jira/browse/MASSEMBLY-738) - Upgrade to plexus-archiver from 2.8.4 to 2.9.1 and plexus-io from 2.3.5 to 2.4.1


Enjoy,

-The Apache Maven team
