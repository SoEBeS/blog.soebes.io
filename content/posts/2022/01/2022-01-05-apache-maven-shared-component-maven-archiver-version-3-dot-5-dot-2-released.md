---
title: "Apache Maven Shared Component - Maven Archiver Version 3.5.2 Released"
date: 2022-01-05T15:16:15
lastmod: 2022-01-05T15:16:15
categories:
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Maven Archiver, version 3.5.2](https://maven.apache.org/shared/maven-archiver/).

The Maven Archiver is mainly used by plugins to handle packaging. The version
numbers referenced in the Since column on this page are the version of the
Maven Archiver component - not for any specific plugin. To see which version of
Maven Archiver a plugin uses, go to the site for that plugin.

You should specify the version in your project's dependency configuration:

```xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-archiver</artifactId>
  <version>3.5.2</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page][download-page].
 
<!-- more -->

[Release Notes - Maven Archiver - Version 3.5.2][release-notes]

* Bugs:
 
  * [MSHARED-849](https://issues.apache.org/jira/browse/MSHARED-849) - archiver sorts META-INF/MANIFEST.MF before META-INF/ in ZIP header

* Dependency upgrade:
 
  * [MSHARED-1013](https://issues.apache.org/jira/browse/MSHARED-1013) - Upgrade Plexus Archiver to 4.2.7

Enjoy,

-The Apache Maven team

[download-page]: https://maven.apache.org/shared/maven-archiver/download.cgi
[release-notes]: https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=123.5.27
