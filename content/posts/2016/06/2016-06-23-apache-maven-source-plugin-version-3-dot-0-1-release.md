---
title: "Apache Maven Source Plugin Version 3.0.1 Released"
date: 2016-06-23T19:14:00
lastmod: 2016-06-23T19:14
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Source Plugin, Version 3.0.1][home].

The Source Plugin creates a jar archive of the source files of the current
project. The jar file is, by default, created in the project's target
directory.

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-source-plugin</artifactId>
  <version>3.0.1</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page][download].

<!-- more -->

[Release Notes - Apache Maven Source Version 3.0.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317924&version=12335588)


Bug:

 * [MSOURCES-94](https://issues.apache.org/jira/browse/MSOURCES-94) - Heap space OOM

Improvements:

 * [MSOURCES-96](https://issues.apache.org/jira/browse/MSOURCES-96) - Upgrade plexus-archiver from 3.0.3 to 3.1
 * [MSOURCES-97](https://issues.apache.org/jira/browse/MSOURCES-97) - Make finalName readonly parameter
 * [MSOURCES-98](https://issues.apache.org/jira/browse/MSOURCES-98) - Upgrade of 'plexus-archiver' to version 3.3.
 * [MSOURCES-100](https://issues.apache.org/jira/browse/MSOURCES-100) - Upgrade maven-shared-components parent to version 30
 * [MSOURCES-101](https://issues.apache.org/jira/browse/MSOURCES-101) - Upgrade maven-archiver to 3.1.0

Tasks:

 * [MSOURCES-102](https://issues.apache.org/jira/browse/MSOURCES-102) - Upgrade of plexus-archiver to 3.4.
 * [MSOURCES-103](https://issues.apache.org/jira/browse/MSOURCES-103) - Upgrade of maven-archiver to 3.1.1.

Enjoy,

-The Apache Maven team

Karl Heinz Marbaise

[download]: https://maven.apache.org/plugins/maven-source-plugin/download.html
[home]: https://maven.apache.org/plugins/maven-source-plugin/
