---
title: "Apache Maven Resolver 1.8.2 Released"
date: 2022-07-28T22:14:14
lastmod: 2022-07-28T22:14:14
categories:
  - Maven
  - Maven-Resolver
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Resolver, version 1.8.2](https://maven.apache.org/resolver/index.html)

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

[Release Notes - Maven Resolver - Version Maven Artifact Resolver 1.8.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?version=12351121&styleName=Text&projectId=12320628)

* Bugs:
 
  * [MRESOLVER-246](https://issues.apache.org/jira/browse/MRESOLVER-246) - m-deploy-p will create hashes for hashes
  * [MRESOLVER-265](https://issues.apache.org/jira/browse/MRESOLVER-265) - Discrepancy between produced and recognized checksums

* Dependency upgrade:

  * [MRESOLVER-251](https://issues.apache.org/jira/browse/MRESOLVER-251) - Upgrade Redisson to 3.17.5
 
Enjoy,

- The Apache Maven team
