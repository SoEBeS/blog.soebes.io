---
title: "Apache Maven Artifact Resolver 1.1.1 Released"
date: 2018-02-20T15:15:00
lastmod: 2018-02-20T15:15:00
categories:
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Resolver, version 1.1.1](https://maven.apache.org/resolver/index.html)

Apache Maven Artifact Resolver is a library for working with artifact
repositories and dependency resolution.

Maven Artifact Resolver deals with the specification of local repository,
remote repository, developer workspaces, artifact transports and artifact
resolution.

It is expected to be extended by concrete repository implementation, like Maven
Artifact Resolver Provider for Maven repositories or any other provider for
other repository formats.


You can download the appropriate sources etc. from the download page

https://maven.apache.org/resolver/download.cgi

<!-- more -->

[Release Notes - Maven Resolver - Version Maven Artifact Resolver 1.1.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12320628&version=12341378)

Bugs:

 * [MRESOLVER-30](https://issues.apache.org/jira/browse/MRESOLVER-30) - Use last Wagon 3.0.0
 * [MRESOLVER-39](https://issues.apache.org/jira/browse/MRESOLVER-39) - deadlock during multithreaded dependency resolution

Task:

 * [MRESOLVER-28](https://issues.apache.org/jira/browse/MRESOLVER-28) - Move demos into master as new module

Dependency upgrade:

 * [MRESOLVER-34](https://issues.apache.org/jira/browse/MRESOLVER-34) - Update dependencies and plugins to latest versions

Enjoy,

-The Apache Maven team 
