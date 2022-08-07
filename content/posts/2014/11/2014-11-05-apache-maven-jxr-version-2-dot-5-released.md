---
title: "Apache Maven JXR Version 2.5 Released"
date: 2014-11-05T22:22:00
lastmod: 2014-11-05T22:22
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JXR, version 2.5](http://maven.apache.org/jxr/).

This module generates browsable HTML pages from Java source code.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
   <groupId>org.apache.maven.plugins</groupId>
   <artifactId>maven-jxr-plugin</artifactId>
   <version>2.5</version>
</plugin>
```

[Release Notes - Maven JXR - Version 2.5](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11085&version=19853)

Bug:

 * [JXR-122](https://issues.apache.org/jira/browse/JXR-122) - apache-rat-plugin Configuration for DEPENDENCIES file.

Improvements:

 * [JXR-111](https://issues.apache.org/jira/browse/JXR-111) - Upgrade to Maven 2.2.1 compatiblity
 * [JXR-112](https://issues.apache.org/jira/browse/JXR-112) - Update version of plexus-utils to 3.0.20
 * [JXR-113](https://issues.apache.org/jira/browse/JXR-113) - Update maven-reporting-impl to 2.3
 * [JXR-114](https://issues.apache.org/jira/browse/JXR-114) - Remove deprecated marked entries in the code.
 * [JXR-115](https://issues.apache.org/jira/browse/JXR-115) - Fix WARNING for maven-surefire-plugin and duplicate test output..
 * [JXR-116](https://issues.apache.org/jira/browse/JXR-116) - Upgrade doxia from 1.2 to 1.4
 * [JXR-118](https://issues.apache.org/jira/browse/JXR-118) - Fixed Checkstyle reported errors/warnings
 * [JXR-119](https://issues.apache.org/jira/browse/JXR-119) - Upgrade org.apache.maven:maven-parent to version 25
 * [JXR-120](https://issues.apache.org/jira/browse/JXR-120) - Configure maven release plugin to autoVersionSubmodules
 * [JXR-121](https://issues.apache.org/jira/browse/JXR-121) - Release failed
 * [JXR-123](https://issues.apache.org/jira/browse/JXR-123) - Upgrade maven-plugin-annotations and maven-plugin-plugin from 3.2 to 3.3

Task:

 * [JXR-109](https://issues.apache.org/jira/browse/JXR-109) - use maven-plugin-tools' java 5 annotations

Enjoy,

-The Apache Maven team 
