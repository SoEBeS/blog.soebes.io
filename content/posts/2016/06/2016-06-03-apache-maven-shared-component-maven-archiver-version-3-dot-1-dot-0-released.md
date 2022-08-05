---
title: "Apache Maven Shared Component - Maven Archiver Version 3.1.0 Released"
date: 2016-06-06T20:15:15
lastmod: 2016-06-06T20:15:15
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Maven Archiver, version 3.1.0](https://maven.apache.org/shared/maven-archiver/).

The Maven Archiver is mainly used by plugins to handle packaging. The version
numbers referenced in the Since column on this page are the version of the
Maven Archiver component - not for any specific plugin. To see which version of
Maven Archiver a plugin uses, go to the site for that plugin.

You should specify the version in your project's dependency configuration:

```xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-archiver</artifactId>
  <version>3.1.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page][download-page].
 
 
Important Notes since Version 3.1.0:

 * Maven 3.X only
 * JDK 6 minimum requirement

<!-- more -->

[Release Notes - Maven Archiver - Version 3.1.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12335678)

Bugs:

 * [MSHARED-494](https://issues.apache.org/jira/browse/MSHARED-494) - Impossible to generate a reproducible build due to timestamp in pom.properties
 * [MSHARED-544](https://issues.apache.org/jira/browse/MSHARED-544) - Remove maven-fluido-skin from site descriptor

Improvements:

 * [MSHARED-515](https://issues.apache.org/jira/browse/MSHARED-515) - Addition of xz compression support.
 * [MSHARED-522](https://issues.apache.org/jira/browse/MSHARED-522) - Upgrade maven-shared-components parent to version 30
 * [MSHARED-539](https://issues.apache.org/jira/browse/MSHARED-539) - Upgrade plexus-utils to 3.0.24
 * [MSHARED-540](https://issues.apache.org/jira/browse/MSHARED-540) - Upgrade plexus-interpolation to 1.22
 * [MSHARED-541](https://issues.apache.org/jira/browse/MSHARED-541) - Upgrade maven-shared-utils to 3.0.1
 * [MSHARED-542](https://issues.apache.org/jira/browse/MSHARED-542) - Upgrade plexus-archiver to 3.3
 
Enjoy,

-The Apache Maven team

[download-page]: https://maven.apache.org/shared/maven-archiver/download.cgi
