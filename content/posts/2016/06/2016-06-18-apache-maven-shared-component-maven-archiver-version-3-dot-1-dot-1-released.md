---
title: "Apache Maven Shared Component - Maven Archiver Version 3.1.1 Released"
date: 2016-06-18T16:05:20
lastmod: 2016-06-18T16:05:20
categories:
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Maven Archiver, version 3.1.1](https://maven.apache.org/shared/maven-archiver/).

The Maven Archiver is mainly used by plugins to handle packaging. The version
numbers referenced in the Since column on this page are the version of the
Maven Archiver component - not for any specific plugin. To see which version of
Maven Archiver a plugin uses, go to the site for that plugin.

You should specify the version in your project's dependency configuration:

```xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-archiver</artifactId>
  <version>3.1.1</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page][download-page].
 
 
Important Notes since Version 3.0.0:

 * Maven 3.X only
 * JDK 6 minimum requirement

<!-- more -->

[Release Notes - Maven Archiver - Version 3.1.1][release-notes]


Bug:

 * [MSHARED-551](https://issues.apache.org/jira/browse/MSHARED-551) - classpathLayoutType is not taken into account when building the classpath attribute in the manifest

 
Enjoy,

-The Apache Maven team

[download-page]: https://maven.apache.org/shared/maven-archiver/download.cgi
[release-notes]: https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12336063
