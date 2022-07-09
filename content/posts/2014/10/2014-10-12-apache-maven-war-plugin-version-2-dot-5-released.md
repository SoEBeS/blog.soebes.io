---
title: "Apache Maven WAR Plugin Version 2.5 Released"
date: 2014-10-12T15:28:00
lastmod: 2014-10-12T15:28
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven WAR Plugin, version 2.5](http://maven.apache.org/plugins/maven-war-plugin/)

The WAR Plugin is responsible for collecting all artifact dependencies, classes
and resources of the web application and packaging them into a web application
archive.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-war-plugin</artifactId>
  <version>2.5</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven WAR Plugin - Version 2.5](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11150&version=19421)

Bugs:

 * [MWAR-305](https://issues.apache.org/jira/browse/MWAR-305) - Filtering doesn't work as expected after switching from maven-filtering:1.0-beta-2 to maven-filtering:1.1
 * [MWAR-306] - [regression](https://issues.apache.org/jira/browse/MWAR-306] - [regression) Filtering doesn't work if a lone @ is found in a line to interpolate
 * [MWAR-311](https://issues.apache.org/jira/browse/MWAR-311) - Filtering of resources broken in version 2.4
 * [MWAR-312](https://issues.apache.org/jira/browse/MWAR-312) - Document about Skinny War might need update

Improvements:

 * [MWAR-313](https://issues.apache.org/jira/browse/MWAR-313) - Upgrade maven-filtering to 1.2
 * [MWAR-316](https://issues.apache.org/jira/browse/MWAR-316) - MavenProject/MavenSession Injection as a paremeter instead as a component.
 * [MWAR-317](https://issues.apache.org/jira/browse/MWAR-317) - Upgrade to Maven 2.2.1 compatiblity
 * [MWAR-319](https://issues.apache.org/jira/browse/MWAR-319) - Fix RAT Report
 * [MWAR-320](https://issues.apache.org/jira/browse/MWAR-320) - Update version of plexus-archiver to 2.6.1
 * [MWAR-321](https://issues.apache.org/jira/browse/MWAR-321) - Upgrade plexus archiver to 2.6.3
 * [MWAR-322](https://issues.apache.org/jira/browse/MWAR-322) - Removed dependency plexus-container-default:1.0-alpha-9-stable-1
 * [MWAR-323](https://issues.apache.org/jira/browse/MWAR-323) - Upgrade xstream version to 1.4.4
 * [MWAR-324](https://issues.apache.org/jira/browse/MWAR-324) - Upgrade plexus-io to 2.1.3
 * [MWAR-325](https://issues.apache.org/jira/browse/MWAR-325) - Fixed CPD / Checkstyle WARNINGS

Task:

* [MWAR-302](https://issues.apache.org/jira/browse/MWAR-302) - Use the maven-mapping shared component

Enjoy,

-The Apache Maven team

Karl Heinz Marbaise
