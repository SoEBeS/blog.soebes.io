---
title: "Apache Maven SCM Version 1.9.1 Released"
date: 2014-07-25T12:56:00
lastmod: 2014-07-25T12:56:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven SCM, version 1.9.1](http://maven.apache.org/scm/).

Maven SCM supports Maven 2.x plugins (e.g. maven-release-plugin) and other
tools (e.g. Continuum) by providing them with a common API for doing SCM
operations. You can look at the list of SCMs for more information on using
Maven SCM with your favorite SCM tool.

<!-- more -->

[Release Notes - Maven SCM Version 1.9.1](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=10527&version=19623)

Bugs:

 * [SCM-740](https://issues.apache.org/jira/browse/SCM-740) - Maven Release Plugin releases SNAPSHOT instead of STABLE version
 * [SCM-750](https://issues.apache.org/jira/browse/SCM-750) - TFS-plugin fails in cases of 'TFS policies' is required by TFS upon checkin
 * [SCM-752](https://issues.apache.org/jira/browse/SCM-752) - maven-release-plugin:2.5:prepare fails with 'Error writing POM: (Access is denied)'
 * [SCM-753](https://issues.apache.org/jira/browse/SCM-753) - support TFS checkin-policies
 * [SCM-757](https://issues.apache.org/jira/browse/SCM-757) - bootstrap/checkout/export goals now requires -Dproject.basedir=. set at command line
 * [SCM-765](https://issues.apache.org/jira/browse/SCM-765) - jgit provider commits changes with system user instead of passed username

Improvement:

 * [SCM-741](https://issues.apache.org/jira/browse/SCM-741) - scm:validate for svn should offer a way to check the current directory actually matches what's declared in the pom

New Feature:

 * [SCM-747] - [PERFORCE](https://issues.apache.org/jira/browse/SCM-747] - [PERFORCE) Support SSL

Tasks:

 * [SCM-754](https://issues.apache.org/jira/browse/SCM-754) - Require Tag/Branch Command to return the entire source tree is impractical
 * [SCM-755](https://issues.apache.org/jira/browse/SCM-755) - Inject SecDispatcher into TCK base test case
 * [SCM-756](https://issues.apache.org/jira/browse/SCM-756) - TCK should invoke EditCommand for provider like Perforce before any change
 * [SCM-760](https://issues.apache.org/jira/browse/SCM-760) - remove maven-scm-plugin's RemoveMojoTest due to specific Perforce setup requirement
 * [SCM-761](https://issues.apache.org/jira/browse/SCM-761) - Allow downstream TCK to define its own tag

Enjoy,

-The Apache Maven team

Karl-Heinz Marbaise
