---
title: "Mojo's License Maven Plugin Version 1.6 Released"
date: 2014-01-16T17:44:00
lastmod: 2014-01-16T17:44
categories:
  - News
  - Maven
  - Maven-Plugin-Releases
---
The Mojo team is pleased to announce the release of the 
[License Maven Plugin, version 1.6](http://mojo.codehaus.org/license-maven-plugin). 

This plugin manages the license of a maven project and its dependencies
(update file headers, download dependencies licenses, check thirdparty
licenses, ...).

#Description#

This License Plugin has the following goals:

* license:add-third-party

  Goal to generate the third-party license file. This file contains a list of
  the dependencies and their licenses. Each dependency and it's license is
  displayed on a single line in the format:
  
  `(<license-name>) <project-name> <groupId>:<artifactId>:<version> - <project-url>`
  It will also copy it in the class-path (says add the generated directory as a
  resource of the build).

* license:aggregate-add-third-party

  This aggregator goal (will be executed only once and only on pom projects)
  executed the add-third-party on all his modules (in a parellel build cycle)
  then aggreates all the third-party files in final one in the pom project.

* license:check-file-header

  The goal to check if the state of header on project source files.

* license:comment-style-list

  Displays all the available comment style to box file headers.

* license:download-licenses

  Download the license files of all the current project's dependencies, and
  generate a summary file containing a list of all dependencies and their
  licenses.

* license:license-list

  Display all available licenses.

* license:third-party-report

  Generates a report of all third-parties detected in the module.

* license:update-file-header

  The goal to update (or add) the header on project source files. This goal
  replace the update-header goal which can not deal with Copyright. This goal
  use a specific project file descriptor project.xml to describe all files to
  update for a whole project.

* license:update-project-license

  Updates (or creates) the main project license file according to the given
  license defines as licenseName. Can also generate a bundled license file (to
  avoid collision names in class-path). This file is by default generated in
  META-INF class-path directory.

To get this update, simply specify the version in your project's plugin
configuration: 

```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>license-maven-plugin</artifactId>
  <version>1.6</version>
</plugin>
```


The artifacts have been deployed to the mojo repository and will be
mirrored to central.

<!-- more -->

[Release Notes](https://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=12330&version=19576)

Fixed Bugs:

 * [MLICENSE-68](https://issues.apache.org/jira/browse/MLICENSE-68) - license:third-party-report doesn't honour licenseMerges
 * [MLICENSE-91](https://issues.apache.org/jira/browse/MLICENSE-91) - .property files mangled after adding license header
 * [MLICENSE-96](https://issues.apache.org/jira/browse/MLICENSE-96) - Some licenses contain whitespace errors
 * [MLICENSE-97](https://issues.apache.org/jira/browse/MLICENSE-97) - Add the copyright section in MIT License

Improvements:

 * [MLICENSE-80](https://issues.apache.org/jira/browse/MLICENSE-80) - Add BSD licenses to the built-ins
 * [MLICENSE-82](https://issues.apache.org/jira/browse/MLICENSE-82) - Remove empty license groups from result file if using license merges
 * [MLICENSE-84](https://issues.apache.org/jira/browse/MLICENSE-84) - Option to sort licenses by letter if grouped by license
 * [MLICENSE-88](https://issues.apache.org/jira/browse/MLICENSE-88) - Support for EUPL v1.1
 * [MLICENSE-94](https://issues.apache.org/jira/browse/MLICENSE-94) - Add license.includeTransitiveDependencies property access
 * [MLICENSE-95](https://issues.apache.org/jira/browse/MLICENSE-95) - Include copyright year range, not just inception year
 * [MLICENSE-99](https://issues.apache.org/jira/browse/MLICENSE-99) - Add  EPL v1.0 license
 * [MLICENSE-100](https://issues.apache.org/jira/browse/MLICENSE-100) - Update some dependencies and plugins versions

New Feature:

 * [MLICENSE-92](https://issues.apache.org/jira/browse/MLICENSE-92) - license repository files can be dynamic

Task:

 * [MLICENSE-93](https://issues.apache.org/jira/browse/MLICENSE-93) - use java 5 plexus annotations

Enjoy,

The Mojo team.

