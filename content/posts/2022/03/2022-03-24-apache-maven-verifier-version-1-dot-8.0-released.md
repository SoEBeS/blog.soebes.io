---
title: "Apache Maven Shared Component - Maven Verifier Version 1.8.0 Released"
date: 2022-03-24T22:16:16
lastmod: 2022-03-24T22:16:16
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Maven Verifier, version 1.8.0](https://maven.apache.org/shared/maven-verifier/).

This library provides a test harness for Maven integration tests.

You should specify the version in your project's dependency configuration:

```xml
<dependency>
    <groupId>org.apache.maven.shared</groupId>
    <artifactId>maven-verifier</artifactId>
    <version>1.8.0</version>
</dependency>
```

You can download the appropriate sources etc. from the [download page][download-page].
 
<!-- more -->

[Release Notes - Maven Verifier - Version 1.8.0][release-notes]

* Bug:
 
  * [MSHARED-1015](https://issues.apache.org/jira/browse/MSHARED-1015) - Using Embedded3xLauncher fails with "-Dmaven.multiModuleProjectDirectory system property is not set"

* New Feature:
 
  * [MSHARED-1010](https://issues.apache.org/jira/browse/MSHARED-1010) - Allow to customize Maven home

* Improvements:
 
  * [MSHARED-871](https://issues.apache.org/jira/browse/MSHARED-871) - Document maven-verifier
  * [MSHARED-1043](https://issues.apache.org/jira/browse/MSHARED-1043) - Deprecate methods which use JUnit4

 
Enjoy,

-The Apache Maven team

[download-page]: https://maven.apache.org/shared/maven-verifier/download.html
[release-notes]: https://issues.apache.org/jira/secure/ReleaseNote.jspa?version=12351428&styleName=Text&projectId=12317922

