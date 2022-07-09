---
title: "Apache Maven Assembly Plugin Version 3.1.0 Released"
date: 2017-08-16T21:02:00
lastmod: 2017-08-16T21:02
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Assembly Plugin, version 3.1.0](https://maven.apache.org/plugins/maven-assembly-plugin/).

The Assembly Plugin for Maven is primarily intended to allow users to aggregate
the project output along with its dependencies, modules, site documentation,
and other files into a single distributable archive.

Note:

 * Maven 3.X only
 * JDK 7 miminum requirement.

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/plugins/maven-assembly-plugin/download.cgi).

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-assembly-plugin</artifactId>
  <version>3.1.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Assembly Plugin - Version 3.1.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317220&version=12338667)

Bugs:

 * [MASSEMBLY-643](https://issues.apache.org/jira/browse/MASSEMBLY-643) - descriptorSourceDirectory: parameter isn't used
 * [MASSEMBLY-841](https://issues.apache.org/jira/browse/MASSEMBLY-841) - Maven Assembly Plugin throws IllegalStateException when looking for project modules
 * [MASSEMBLY-842](https://issues.apache.org/jira/browse/MASSEMBLY-842) - Incorrect entries created in MANIFEST/maven
 * [MASSEMBLY-855](https://issues.apache.org/jira/browse/MASSEMBLY-855) - Remote repositories ignored in a multi-module project

Dependency upgrades:

 * [MASSEMBLY-854](https://issues.apache.org/jira/browse/MASSEMBLY-854) - Upgrade to Plexus Archiver 3.5
 * [MASSEMBLY-859](https://issues.apache.org/jira/browse/MASSEMBLY-859) - Upgrade to Plexus IO 3.0.0
 * [MASSEMBLY-867](https://issues.apache.org/jira/browse/MASSEMBLY-867) - Upgrade maven-archiver to 3.2.0
 * [MASSEMBLY-868](https://issues.apache.org/jira/browse/MASSEMBLY-868) - Upgrade plexus-utils to version 3.1.0

Improvements:

 * [MASSEMBLY-711](https://issues.apache.org/jira/browse/MASSEMBLY-711) - Add support for generating XZ compressed tarballs (.tar.xz)
 * [MASSEMBLY-858](https://issues.apache.org/jira/browse/MASSEMBLY-858) - don't read assembly descriptor from thread classloader but plugin classloader
 * [MASSEMBLY-860](https://issues.apache.org/jira/browse/MASSEMBLY-860) - Upgrade to Java 7

Thanks to the volunteer(s) who helped to check this release.

 - Grzegorz Grzybek

Enjoy,

-The Apache Maven team
