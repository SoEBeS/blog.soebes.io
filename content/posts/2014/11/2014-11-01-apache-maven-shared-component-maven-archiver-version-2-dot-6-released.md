---
title: "Apache Maven Shared Component - Maven Archiver Version 2.6 Released"
date: 2014-11-01T13:44:00
lastmod: 2014-11-01T13:44:00
categories:
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Maven Archiver, version 2.6](http://maven.apache.org/shared/maven-archiver/).

The Maven Archiver is mainly used by plugins to handle packaging. 

You should specify the version in your project's dependency configuration:

```xml
<dependency>
  <groupId>org.apache.maven</groupId>
  <artifactId>maven-archiver</artifactId>
  <version>2.6</version>
</dependency>
```

[Release Notes - Maven Archiver - Version 2.6](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11761&version=18325)

Bugs:

 * [MSHARED-241](https://issues.apache.org/jira/browse/MSHARED-241) - Use last plexus-archiver version
 * [MSHARED-360](https://issues.apache.org/jira/browse/MSHARED-360) - Upgrade plexus-archiver to 2.6.1 (was 2.6) and plexus-utils to 3.0.18 for java7+ symlink support
 * [MSHARED-368](https://issues.apache.org/jira/browse/MSHARED-368) - Update plexus-interpolation to 1.21 to avoid potential thread safety issues

Improvements:

 * [MSHARED-224](https://issues.apache.org/jira/browse/MSHARED-224) - Add documentation on the useUniqueVersions to the index page
 * [MSHARED-270](https://issues.apache.org/jira/browse/MSHARED-270) - Add Implementation-URL to DefaultImplementationEntries
 * [MSHARED-273](https://issues.apache.org/jira/browse/MSHARED-273) - Update documentation for the "Created-By" manifest entry
 * [MSHARED-363](https://issues.apache.org/jira/browse/MSHARED-363) - Update version of plexus-archiver to 2.7

Tasks:

 * [MSHARED-373](https://issues.apache.org/jira/browse/MSHARED-373) - Upgrade Maven baseline to 2.2.1
 * [MSHARED-374](https://issues.apache.org/jira/browse/MSHARED-374) - Upgrade Plexus Archiver to 2.8.1
 * [MSHARED-375](https://issues.apache.org/jira/browse/MSHARED-375) - Upgrade Plexus Utils to 3.0.20
 * [MSHARED-376](https://issues.apache.org/jira/browse/MSHARED-376) - Upgrade Maven Shared Utils to 0.7

Enjoy,

-The Apache Maven team

