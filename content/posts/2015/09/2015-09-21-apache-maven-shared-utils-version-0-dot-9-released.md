---
title: "Apache Maven Shared Utils Version 0.9 Released"
date: 2015-09-21T08:22:00
lastmod: 2015-09-21T08:22:00
categories:
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shared Utils, version 0.9](https://maven.apache.org/shared/maven-shared-utils/).

The release contains a number of bug fixes.

You should specify the version in your project's dependencies configuration:

```xml
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-shared-utils</artifactId>
  <version>0.9</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Shared Utils - Version 0.9](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12332813)

Bugs:

 * [MSHARED-426](https://issues.apache.org/jira/browse/MSHARED-426) - Upgrade maven-assembly-plugin to Version 2.5.5
 * [MSHARED-434](https://issues.apache.org/jira/browse/MSHARED-434) - NPE due to concurrent calls in close() method of StreamFeeder class
 * [MSHARED-435](https://issues.apache.org/jira/browse/MSHARED-435) - createSymbolicLink() ClassCastException

Improvement:

 * [MSHARED-436](https://issues.apache.org/jira/browse/MSHARED-436) - PrettyPrintXmlWriter produces too much garbage and is therefore slower than needed

Enjoy,

-The Apache Maven team

