---
title: "Apache Maven Shared Utils Version 3.2.1 Released"
date: 2018-02-10T15:15:00
lastmod: 2018-02-10T15:15
categories:
  - Maven
  - Maven-Plugins
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shared Utils, version 3.2.1](https://maven.apache.org/shared/maven-shared-utils/).

The release contains a number of bug fixes.

You should specify the version in your project's dependencies configuration:

```xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-shared-utils</artifactId>
  <version>3.2.1</version>
</dependency>
```

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/shared/maven-shared-utils/download.cgi


<!-- more -->

[Release Notes - Maven Shared Utils - Version 3.2.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12340978)

New Feature:

 * [MSHARED-648](https://issues.apache.org/jira/browse/MSHARED-648) - Add registerShutdownHook to MessageUtils

Dependency upgrade:

 * [MSHARED-672](https://issues.apache.org/jira/browse/MSHARED-672) - Upgrade plexus-container-default to 1.7.1


Enjoy,

-The Apache Maven team
