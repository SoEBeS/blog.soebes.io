---
title: "Apache Maven Resolver 1.4.2 Released"
date: 2020-04-27T17:35:29
lastmod: 2020-04-27T17:35:29
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Resolver, version 1.4.2](https://maven.apache.org/resolver/index.html)

Apache Maven Artifact Resolver is a library for working with artifact
repositories and dependency resolution.

Maven Artifact Resolver deals with the specification of local repository,
remote repository, developer workspaces, artifact transports and artifact
resolution.

It is expected to be extended by concrete repository implementation, like Maven
Artifact Resolver Provider for Maven repositories or any other provider for
other repository formats.


You can download the appropriate sources etc. from the [download page](https://maven.apache.org/resolver/download.cgi).

<!-- more -->

[Release Notes - Maven Resolver - Version Maven Artifact Resolver 1.4.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12320628&version=12346099)

* Bug:

  * [MRESOLVER-38](https://issues.apache.org/jira/browse/MRESOLVER-38)  - SOE/OOME in DefaultDependencyNode.accept 

* Improvements:

  * [MRESOLVER-93](https://issues.apache.org/jira/browse/MRESOLVER-93) - PathRecordingDependencyVisitor to handle 3 cycles
  * [MRESOLVER-102](https://issues.apache.org/jira/browse/MRESOLVER-102) - make build Reproducible

     
Enjoy,

- The Apache Maven team
