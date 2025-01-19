---
title: "Mojo's Exec Maven Plugin Version 1.3 - Released"
date: 2014-04-22T21:37:00
lastmod: 2014-04-22T21:37:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Mojo team is pleased to announce the release of the
[Exec Maven Plugin version 1.3](http://mojo.codehaus.org/exec-maven-plugin/).

The plugin provides 2 goals to help execute system and Java programs.

To get this update, simply specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>exec-maven-plugin</artifactId>
  <version>1.3</version>
</plugin>
```
<!-- more -->

Release Notes:
http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11240&version=17822

Bugs:

 * [MEXEC-86](https://issues.apache.org/jira/browse/MEXEC-86) - outputFile support for capturing exec not functional
 * [MEXEC-104](https://issues.apache.org/jira/browse/MEXEC-104) - Cannot pass empty argument to exec goal.
 * [MEXEC-105](https://issues.apache.org/jira/browse/MEXEC-105) - %classpath is fragile when used with <commandlineArgs>
 * [MEXEC-108](https://issues.apache.org/jira/browse/MEXEC-108) - NPE at EnvironmentUtils.toStrings()

Improvements:

 * [MEXEC-66](https://issues.apache.org/jira/browse/MEXEC-66) - ability to add custom classpath together 
              with %classpath placeholder
 * [MEXEC-73](https://issues.apache.org/jira/browse/MEXEC-73) - add configuration for adding additional 
              directories to project classpath
 * [MEXEC-93](https://issues.apache.org/jira/browse/MEXEC-93) - Exec plugin not marked as @threadSafe
 * [MEXEC-107](https://issues.apache.org/jira/browse/MEXEC-107) - Drop @execute phase="validate" from ExecJavaMojo
 * [MEXEC-119](https://issues.apache.org/jira/browse/MEXEC-119) - At position of argument to "Misconfigured 
               argument, value is null" message
 * [MEXEC-122](https://issues.apache.org/jira/browse/MEXEC-122) - Run integration test only by using the profile run-its
 * [MEXEC-123](https://issues.apache.org/jira/browse/MEXEC-123) - use java 5 plexus annotations
 * [MEXEC-125](https://issues.apache.org/jira/browse/MEXEC-125) - Upgrade Plugin Required Maven Version to 2.2.1
 * [MEXEC-129](https://issues.apache.org/jira/browse/MEXEC-129) - provided scope for maven-plugin-annotation
 * [MEXEC-130](https://issues.apache.org/jira/browse/MEXEC-130) - @threadSafe
 * [MEXEC-131](https://issues.apache.org/jira/browse/MEXEC-131) - commons-exec upgrade to 1.2
 * [MEXEC-133](https://issues.apache.org/jira/browse/MEXEC-133) - Upgrade to mojo-parent v:33

Task

 * [MEXEC-101](https://issues.apache.org/jira/browse/MEXEC-101) - Migrate plugin to JDK5

Wish

 * [MEXEC-126](https://issues.apache.org/jira/browse/MEXEC-126) - Bring back Maven 2.0.11 Compatibility

Enjoy,

The Mojo team.

Karl-Heinz Marbaise

