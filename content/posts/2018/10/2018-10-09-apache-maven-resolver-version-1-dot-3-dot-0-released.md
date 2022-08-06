---
title: "Apache Maven Artifact Resolver 1.3.0 Released"
date: 2018-10-09T23:45:55
lastmod: 2018-10-09T23:45:55
categories:
  - Maven
  - Maven-Plugins
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Resolver, version 1.3.0](https://maven.apache.org/resolver/index.html)

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

[Release Notes - Maven Resolver - Version Maven Artifact Resolver 1.3.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12320628&version=12342803)

Bugs:

 * [MRESOLVER-45](https://issues.apache.org/jira/browse/MRESOLVER-45) - Git repo is gone/moved
 * [MRESOLVER-50](https://issues.apache.org/jira/browse/MRESOLVER-50) - Source repository coordinates incorrect

New Feature:

 * [MRESOLVER-46](https://issues.apache.org/jira/browse/MRESOLVER-46) - Add support InputStream/OutputStream transformers

Improvements:

 * [MRESOLVER-31](https://issues.apache.org/jira/browse/MRESOLVER-31) - Use the Felix Bundle Plugin to generate OSGi metadata
 * [MRESOLVER-35](https://issues.apache.org/jira/browse/MRESOLVER-35) - Move dependency collector and friends to subpackage in maven-resolver-impl
 * [MRESOLVER-36](https://issues.apache.org/jira/browse/MRESOLVER-36) - SLFJ - remove LoggerFactory from dependency injection
 * [MRESOLVER-42](https://issues.apache.org/jira/browse/MRESOLVER-42) - Use pre-compiled pattern in DefaultArtifact constructor
 * [MRESOLVER-47](https://issues.apache.org/jira/browse/MRESOLVER-47) - Link to older Aether Wiki in Eclipse on front page
 * [MRESOLVER-48](https://issues.apache.org/jira/browse/MRESOLVER-48) - Add default Travis CI configuration for Java 7, 8, 10

Task:

 * [MRESOLVER-44](https://issues.apache.org/jira/browse/MRESOLVER-44) - switch from Git-WIP to Gitbox

Dependency upgrades:

 * [MRESOLVER-51](https://issues.apache.org/jira/browse/MRESOLVER-51) - Upgrade maven-parent to version 32
 * [MRESOLVER-57](https://issues.apache.org/jira/browse/MRESOLVER-57) - Upgrade Jetty to 9.2.26.v20180806
 * [MRESOLVER-58](https://issues.apache.org/jira/browse/MRESOLVER-58) - Upgrade HttpClient to 4.5.6
 * [MRESOLVER-59](https://issues.apache.org/jira/browse/MRESOLVER-59) - Upgrade HttpCore to 4.4.10

Enjoy,

-The Apache Maven team 
