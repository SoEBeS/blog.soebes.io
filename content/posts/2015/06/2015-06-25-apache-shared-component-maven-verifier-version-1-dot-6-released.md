---
title: "Apache Shared Component Maven Verifier Version 1.6 Released"
date: 2015-06-25T19:35:00
lastmod: 2015-06-25T19:35
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Verifier Shared Component, version 1.6.](http://maven.apache.org/shared/maven-verifier/)

You should specify the version in your project's dependencies configuration:

```xml
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-verifier</artifactId>
  <version>1.6</version>
</plugin>
``` 

<!-- more -->


[Release Notes - Maven Shared Components - Version maven-verifier-1.6](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12331401)


Bug:

 * [MSHARED-410](https://issues.apache.org/jira/browse/MSHARED-410) - Verifier mishandles systemProperties

Improvements:

 * [MSHARED-405](https://issues.apache.org/jira/browse/MSHARED-405) - Upgrade maven-shared-utils to 0.7
 * [MSHARED-418](https://issues.apache.org/jira/browse/MSHARED-418) - Verifier should not use hard coded CLI options without possibility to modify them
 * [MSHARED-427](https://issues.apache.org/jira/browse/MSHARED-427) - Upgrade maven-shared-utils to 0.8

Enjoy,

-The Apache Maven team
