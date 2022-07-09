---
title: "Apache Maven Dependency Plugin Version 3.0.0 Released"
date: 2016-12-16T17:30:00
lastmod: 2016-12-16T17:30
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Dependecy Plugin, version 3.0.0](https://maven.apache.org/plugins/maven-dependency-plugin/).

The dependency plugin provides the capability to manipulate artifacts. It
can copy and/or unpack artifacts from local or remote repositories to a
specified location.

https://maven.apache.org/plugins/maven-dependency-plugin/

You should specify the version in your project's plugin configuration:

```xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-dependency-plugin</artifactId>
    <version>3.0.0</version>
</plugin>
``` 

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-dependency-plugin/download.cgi


<!-- more -->

[Release Notes - Maven Dependency Plugin - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317227&version=12330458)

Bugs:

 * [MDEP-410](https://issues.apache.org/jira/browse/MDEP-410) - Add dependency:collect goal which prints the dependency list by resolving the POMs only
 * [MDEP-436](https://issues.apache.org/jira/browse/MDEP-436) - German umlauts in outputDirectory and destFileName getting garbled
 * [MDEP-478](https://issues.apache.org/jira/browse/MDEP-478) - dependency:copy-dependencies always overwrites if <prependGroupId> is true
 * [MDEP-483](https://issues.apache.org/jira/browse/MDEP-483) - NullPointerException when using classifier and markers
 * [MDEP-486](https://issues.apache.org/jira/browse/MDEP-486) - Upgrade plexus-utils to 3.0.22
 * [MDEP-506](https://issues.apache.org/jira/browse/MDEP-506) - NPE in AnalyzeDepMgt.getMismatch
 * [MDEP-531](https://issues.apache.org/jira/browse/MDEP-531) - MDP 2.10 depends on a known insecure library commons-collections:3.2.1
 * [MDEP-543](https://issues.apache.org/jira/browse/MDEP-543) - Remove link to non-existing Codehaus wiki

Documentation:

 * [MDEP-546](https://issues.apache.org/jira/browse/MDEP-546) - Update project information on plugin site

Improvements:

 * [MDEP-487](https://issues.apache.org/jira/browse/MDEP-487) - Documentation cleanup
 * [MDEP-493](https://issues.apache.org/jira/browse/MDEP-493) - Change Maven prerequisite and JDK requirement
 * [MDEP-494](https://issues.apache.org/jira/browse/MDEP-494) - Remove/replace Maven2 specific code
 * [MDEP-495](https://issues.apache.org/jira/browse/MDEP-495) - Remove deprecated parameters
 * [MDEP-511](https://issues.apache.org/jira/browse/MDEP-511) - Upgrade maven-common-artifact-filters to 3.0.0
 * [MDEP-512](https://issues.apache.org/jira/browse/MDEP-512) - Removed unused dependency to maven-invoker component.
 * [MDEP-517](https://issues.apache.org/jira/browse/MDEP-517) - Upgrade plexus-archiver from 2.9 to 3.0.3
 * [MDEP-527](https://issues.apache.org/jira/browse/MDEP-527) - Upgrade of 'plexus-archiver' to version 3.3.
 * [MDEP-530](https://issues.apache.org/jira/browse/MDEP-530) - Upgrade mrm to 1.0.0
 * [MDEP-537](https://issues.apache.org/jira/browse/MDEP-537) - Goal purge-local-repository requires a Maven project, even with manualIncludes
 * [MDEP-538](https://issues.apache.org/jira/browse/MDEP-538) - Display moduleName
 * [MDEP-539](https://issues.apache.org/jira/browse/MDEP-539) - Upgrade maven-shared-components parent to version 30

New Features:

 * [MDEP-509](https://issues.apache.org/jira/browse/MDEP-509) - dependency:tree and :list should reveal 'optional'
 * [MDEP-514](https://issues.apache.org/jira/browse/MDEP-514) - Add support for tar.snappy compression

Tasks:

 * [MDEP-529](https://issues.apache.org/jira/browse/MDEP-529) - Upgrade of plexus-archiver to 3.4.
 * [MDEP-544](https://issues.apache.org/jira/browse/MDEP-544) - Upgrade of plexus-interpolation to 1.24.

Enjoy,

-The Apache Maven team
