---
title: "Apache Maven Archetype Plugin 3.0.0 Released"
date: 2017-02-12T19:30:12
lastmod: 2017-02-12T19:30:12
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Archetype Plugin, version 3.0.0](https://maven.apache.org/archetype/maven-archetype-plugin/).

The Archetype Plugin allows the user to create a Maven project from an existing template called an archetype.
It also allows the user to create an archetype from an existing project.

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/plugins/maven-archetype-plugin/download.cgi).

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-archetype-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Archetype Plugin - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317122&version=12330297&styleName=Text).

Bugs:

 * [ARCHETYPE-283](https://issues.apache.org/jira/browse/ARCHETYPE-283) - archetype:generate does not use <localRepository> in settings.xml when looking for archetype-catalog.xml
 * [ARCHETYPE-358](https://issues.apache.org/jira/browse/ARCHETYPE-358) - Following mirror configuration from settings.xml
 * [ARCHETYPE-488](https://issues.apache.org/jira/browse/ARCHETYPE-488) - Goal integration-test of maven-archetype-plugin fails with 'Cannot run additions goals." in version 3.3.1
 * [ARCHETYPE-499](https://issues.apache.org/jira/browse/ARCHETYPE-499) - Files with no extension are not included when one creates archetype from project
 * [ARCHETYPE-501](https://issues.apache.org/jira/browse/ARCHETYPE-501) - Bug generating project with blank property
 * [ARCHETYPE-502](https://issues.apache.org/jira/browse/ARCHETYPE-502) - XMLOutputter generates files with inconsistent line ending on Windows
 * [ARCHETYPE-503](https://issues.apache.org/jira/browse/ARCHETYPE-503) - Unit tests with archetype-post-generate.groovy fail on Windows
 * [ARCHETYPE-504](https://issues.apache.org/jira/browse/ARCHETYPE-504) - Property excludePatterns is in required properties
 * [ARCHETYPE-509](https://issues.apache.org/jira/browse/ARCHETYPE-509) - RequiredProperty not set in batch mode
 * [ARCHETYPE-510](https://issues.apache.org/jira/browse/ARCHETYPE-510) - Achetype 1.0.x descriptor documentation is not generated any more
 * [ARCHETYPE-513](https://issues.apache.org/jira/browse/ARCHETYPE-513) - Files in excludePatterns having a default filtered extension are still included
 * [ARCHETYPE-517](https://issues.apache.org/jira/browse/ARCHETYPE-517) - Maven doesn't fail if invocation goals fail

Improvements:

 * [ARCHETYPE-204](https://issues.apache.org/jira/browse/ARCHETYPE-204) - Add option to use remote repositories that are password protected
 * [ARCHETYPE-241](https://issues.apache.org/jira/browse/ARCHETYPE-241) - Filtering of directory name same as filenames
 * [ARCHETYPE-438](https://issues.apache.org/jira/browse/ARCHETYPE-438) - Remove support for specifying catalogs through direct URLs
 * [ARCHETYPE-439](https://issues.apache.org/jira/browse/ARCHETYPE-439) - Remove archetypeRepository param
 * [ARCHETYPE-472](https://issues.apache.org/jira/browse/ARCHETYPE-472) - Upgrade Apache Velocity Engine to 1.7
 * [ARCHETYPE-491](https://issues.apache.org/jira/browse/ARCHETYPE-491) - Allow to run integration test with another archetype as parent project
 * [ARCHETYPE-496](https://issues.apache.org/jira/browse/ARCHETYPE-496) - Allow user to specify archetype tests in project
 * [ARCHETYPE-514](https://issues.apache.org/jira/browse/ARCHETYPE-514) - Tests fail with empty repository and 'mvn verify'
 * [ARCHETYPE-515](https://issues.apache.org/jira/browse/ARCHETYPE-515) - Migrate plugin to Maven3

New Features:

 * [ARCHETYPE-487](https://issues.apache.org/jira/browse/ARCHETYPE-487) - Input validation for required properties defined in artifact descriptor
 * [ARCHETYPE-494](https://issues.apache.org/jira/browse/ARCHETYPE-494) - Provide a way to change the generated project after archetype:generate execution

Tasks:

 * [ARCHETYPE-433](https://issues.apache.org/jira/browse/ARCHETYPE-433) - Remove unused archetype registry stuff
 * [ARCHETYPE-434](https://issues.apache.org/jira/browse/ARCHETYPE-434) - Fix cyclic dependency between archetype-common and maven-archetype-plugin
 * [ARCHETYPE-437](https://issues.apache.org/jira/browse/ARCHETYPE-437) - Remove support for the create goal

Enjoy,

-The Apache Maven team 
