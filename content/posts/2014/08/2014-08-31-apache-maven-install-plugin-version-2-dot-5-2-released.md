---
title: "Apache Maven Install Plugin Version 2.5.2 Released"
date: 2014-08-31T16:35:00
lastmod: 2014-08-31T16:35:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Install Plugin, version 2.5.2](http://maven.apache.org/plugins/maven-install-plugin/).

The Install Plugin is used during the install phase to add artifact(s) to the
local repository. The Install Plugin uses the information in the POM (groupId,
artifactId, version) to determine the proper location for the artifact within
the local repository.

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-install-plugin</artifactId>
  <version>2.5.2</version>
</plugin>
```
<!-- more -->

[Release Notes - Maven Install Plugin Version 2.5.2](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11136&version=19616)

Bugs:

 * [MINSTALL-100](https://issues.apache.org/jira/browse/MINSTALL-100) - Update description for installAtEnd param
 * [MINSTALL-103](https://issues.apache.org/jira/browse/MINSTALL-103) - Concurrency problem with installAtEnd in parallel builds

Improvements:

 * [MINSTALL-106](https://issues.apache.org/jira/browse/MINSTALL-106) - MavenProject/MavenSession Injection as a paremeter instead as a component.
 * [MINSTALL-107](https://issues.apache.org/jira/browse/MINSTALL-107) - Upgrade to Maven 2.2.1 compatiblity


Enjoy,

-The Apache Maven team

Karl-Heinz Marbaise
