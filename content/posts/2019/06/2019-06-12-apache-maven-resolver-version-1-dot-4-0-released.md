---
title: "Apache Maven Resolver 1.4.0 Released"
date: 2019-06-12T23:45:07
lastmod: 2019-06-12T23:45:07
categories:
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Resolver, version 1.3.3](https://maven.apache.org/resolver/index.html)

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

[Release Notes - Maven Resolver - Version Maven Artifact Resolver 1.4.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12320628&version=12345229)

Bug:

* [MRESOLVER-86](https://issues.apache.org/jira/browse/MRESOLVER-86) - ResolveArtifactMojo from resolver example uses plugin repositories to resolve dependencies

New Features:

* [MRESOLVER-10](https://issues.apache.org/jira/browse/MRESOLVER-10) - New 'TransitiveDependencyManager' supporting transitive dependency management
* [MRESOLVER-33](https://issues.apache.org/jira/browse/MRESOLVER-33) - New 'DefaultDependencyManager' managing dependencies on all levels supporting transitive dependency management

Improvements:

* [MRESOLVER-7](https://issues.apache.org/jira/browse/MRESOLVER-7) - Download dependency POMs in parallel
* [MRESOLVER-84](https://issues.apache.org/jira/browse/MRESOLVER-84) - Add support for "release" qualifier
* [MRESOLVER-87](https://issues.apache.org/jira/browse/MRESOLVER-87) - Refresh examples to use maven-resolver artifacts for demo
* [MRESOLVER-88](https://issues.apache.org/jira/browse/MRESOLVER-88) - Code style cleanup to use Java 7 features

Enjoy,

- The Apache Maven team
