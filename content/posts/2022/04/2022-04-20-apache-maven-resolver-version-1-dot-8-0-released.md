---
title: "Apache Maven Resolver 1.8.0 Released"
date: 2022-04-20T19:26:26
lastmod: 2022-04-20T19:26:26
categories:
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Resolver, version 1.8.0](https://maven.apache.org/resolver/index.html)

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

[Release Notes - Maven Resolver - Version Maven Artifact Resolver 1.8.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?version=12351121&styleName=Text&projectId=12320628)

* Bugs:
 
  * [MRESOLVER-241](https://issues.apache.org/jira/browse/MRESOLVER-241) - Resolver checksum calculation should be driven by layout
  * [MRESOLVER-242](https://issues.apache.org/jira/browse/MRESOLVER-242) - When no remote checksums provided by layout, transfer inevitably fails/warns
  * [MRESOLVER-250](https://issues.apache.org/jira/browse/MRESOLVER-250) - Usage of descriptors map in DataPool prevents gargabe collection

* New Feature:
 
  * [MRESOLVER-236](https://issues.apache.org/jira/browse/MRESOLVER-236) - Make it possible to resolve .asc on a 'fail' <checksumPolicy/> respository.

* Improvements:
 
  * [MRESOLVER-240](https://issues.apache.org/jira/browse/MRESOLVER-240) - Using breadth-first approach to resolve Maven dependencies
  * [MRESOLVER-247](https://issues.apache.org/jira/browse/MRESOLVER-247) - Avoid unnecessary dependency resolution by a Skip solution based on BFS
  * [MRESOLVER-248](https://issues.apache.org/jira/browse/MRESOLVER-248) - Make DF and BF collector implementations coexist

* Tasks:
 
  * [MRESOLVER-230](https://issues.apache.org/jira/browse/MRESOLVER-230) - Make supported checksum algorithms extensible
  * [MRESOLVER-231](https://issues.apache.org/jira/browse/MRESOLVER-231) - Extend "smart checksum" feature
  * [MRESOLVER-234](https://issues.apache.org/jira/browse/MRESOLVER-234) - Introduce "provided" checksums feature
  * [MRESOLVER-237](https://issues.apache.org/jira/browse/MRESOLVER-237) - Make all checksum mismatches handled same
  * [MRESOLVER-239](https://issues.apache.org/jira/browse/MRESOLVER-239) - Update and sanitize dependencies
  * [MRESOLVER-244](https://issues.apache.org/jira/browse/MRESOLVER-244) - Deprecate FileTransformer API
  * [MRESOLVER-245](https://issues.apache.org/jira/browse/MRESOLVER-245) - Isolate Hazelcast tests

* Dependency upgrade:
 
  * [MRESOLVER-249](https://issues.apache.org/jira/browse/MRESOLVER-249) - Update Hazelcast to 5.1.1 in named-locks-hazelcast module
     
Enjoy,

- The Apache Maven team
