---
title: "Apache Maven Dependency Plugin Version 3.0.1 Released"
date: 2017-05-16T20:30:00
lastmod: 2017-05-16T20:30
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Dependecy Plugin, version 3.0.1](https://maven.apache.org/plugins/maven-dependency-plugin/).

The dependency plugin provides the capability to manipulate artifacts. It
can copy and/or unpack artifacts from local or remote repositories to a
specified location.

https://maven.apache.org/plugins/maven-dependency-plugin/

You should specify the version in your project's plugin configuration:

```xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-dependency-plugin</artifactId>
    <version>3.0.1</version>
</plugin>
``` 

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-dependency-plugin/download.cgi


<!-- more -->

[Release Notes - Maven Dependency Plugin - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317227&version=12338874)

Bugs:

 * [MDEP-409](https://issues.apache.org/jira/browse/MDEP-409) - - dependency:tree fails for a multi-module project where one module depends on another and "mvn install" has not been run yet
 * [MDEP-419](https://issues.apache.org/jira/browse/MDEP-419) - - dependency:list, dependency:build-classpath and dependency:tree result with the different dependencies order
 * [MDEP-428](https://issues.apache.org/jira/browse/MDEP-428) - - Unpack goal does not fail build when destination could not be created and unpacks to current working directory instead
 * [MDEP-471](https://issues.apache.org/jira/browse/MDEP-471) - - Java 8 Method references are not detected
 * [MDEP-548](https://issues.apache.org/jira/browse/MDEP-548) - - The get Mojo doesn't resolve the artifact when setting transitive to false
 * [MDEP-565](https://issues.apache.org/jira/browse/MDEP-565) - - Upgrade maven-artifact-transfer to version 0.9.1

Documentation:

 * [MDEP-534](https://issues.apache.org/jira/browse/MDEP-534) - - Document format of mojo parameter 'artifact'

Improvements:

 * [MDEP-482](https://issues.apache.org/jira/browse/MDEP-482) - - Can't use both outputProperty and outputFile in build-classpath mojo
 * [MDEP-563](https://issues.apache.org/jira/browse/MDEP-563) - - Print dependency:resolve-plugins output just like other goal output
 * [MDEP-566](https://issues.apache.org/jira/browse/MDEP-566) - - Upgrade maven-common-artifact-filter to version 3.0.1
 * [MDEP-567](https://issues.apache.org/jira/browse/MDEP-567) - - Upgrade to maven-dependency-tree to 3.0.1

New Feature:
 * [MDEP-500](https://issues.apache.org/jira/browse/MDEP-500) - - Print GAV information in console output during dependency:resolve-plugins execution

Task:

 * [MDEP-547](https://issues.apache.org/jira/browse/MDEP-547) - - Remove some old (404) links from site

Reporters of this Release:

 * Elias Elmqvist Wulcan [MDEP-534](https://issues.apache.org/jira/browse/MDEP-534)
 * Andrew Wright [MDEP-500](https://issues.apache.org/jira/browse/MDEP-500)
 * Dagan Sandler [MDEP-482](https://issues.apache.org/jira/browse/MDEP-482)
 * Ben Hardy [MDEP-471](https://issues.apache.org/jira/browse/MDEP-471)
 * Dave Moten [MDEP-428](https://issues.apache.org/jira/browse/MDEP-428)
 * Julien Boulay [MDEP-419](https://issues.apache.org/jira/browse/MDEP-419)
 * Eric Pabst [MDEP-409](https://issues.apache.org/jira/browse/MDEP-409)

Many thanks to all reporters/contributors/testers of this release.


Enjoy,

-The Apache Maven team
