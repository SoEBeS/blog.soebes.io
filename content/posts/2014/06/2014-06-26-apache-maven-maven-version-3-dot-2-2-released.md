---
title: "Apache Maven Version 3.2.2 Released"
date: 2014-06-26T19:04:00
lastmod: 2014-06-26T19:04:00
categories:
  - Maven
  - Maven-Releases
---
Hi 
The Apache Maven Team is pleased to announce the release of 
[Apache Maven Release 3.2.2](http://maven.apache.org/docs/3.2.2/release-notes.html).

The release notes can be found here:

http://maven.apache.org/docs/3.2.2/release-notes.html

<!-- more -->

[The Release Notes](https://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=10500&version=20042)

Bugs:

 * [MNG-4565](https://issues.apache.org/jira/browse/MNG-4565) - Requiring multiple profile activation conditions to be true does not work
 * [MNG-5590](https://issues.apache.org/jira/browse/MNG-5590) - ${basedir} and ${project.basedir} do not behave the same on file-based profile activation
 * [MNG-5591](https://issues.apache.org/jira/browse/MNG-5591) - Installing workspace reader triggers MNG-5503
 * [MNG-5595](https://issues.apache.org/jira/browse/MNG-5595) - name field missing in plugin.xml documentation
 * [MNG-5596](https://issues.apache.org/jira/browse/MNG-5596) - plugin descriptor model generated from Modello appears in javadoc
 * [MNG-5609](https://issues.apache.org/jira/browse/MNG-5609) - README.txt in distro incorrectly states JDK requirement as 1.5+
 * [MNG-5612](https://issues.apache.org/jira/browse/MNG-5612) - effective pom should not contain file-based profile activation fully interpolated but with limited interpolation like seen during profile activation
 * [MNG-5613](https://issues.apache.org/jira/browse/MNG-5613) - NPE error when building a reactor with duplicated artifacts
 * [MNG-5620](https://issues.apache.org/jira/browse/MNG-5620) - Prevent LinkageError when CDI is in the classpath
 * [MNG-5623](https://issues.apache.org/jira/browse/MNG-5623) - Exception when printing Reactor Summary
 * [MNG-5624](https://issues.apache.org/jira/browse/MNG-5624) - Maven API Plugin descriptor xsd does not exist at advertised location
 * [MNG-5628](https://issues.apache.org/jira/browse/MNG-5628) - NullPointerException with Maven 3.2.1 when circular dependency exists in POMs
 * [MNG-5633](https://issues.apache.org/jira/browse/MNG-5633) - NullPointerException when project contains cyclic references
 * [MNG-5638](https://issues.apache.org/jira/browse/MNG-5638) - Whitespaces matter in <mirrorOf> configuration can cause the incorrect repo to be selected
 * [MNG-5640](https://issues.apache.org/jira/browse/MNG-5640) - AbstractMavenLifecycleParticipant#afterSessionEnd is not invoked in some cases
 * [MNG-5645](https://issues.apache.org/jira/browse/MNG-5645) - version of "..." causes InternalErrorException.
 * [MNG-5647](https://issues.apache.org/jira/browse/MNG-5647) - ${maven.build.timestamp} uses incorrect ISO datetime separator
 * [MNG-5648](https://issues.apache.org/jira/browse/MNG-5648) - Regression of MNG-5176, DST in effect is ignored

Improvements:

 * [MNG-5452](https://issues.apache.org/jira/browse/MNG-5452) - ${maven.build.timestamp} should use UTC instead of local timezone (or be configurable)
 * [MNG-5608](https://issues.apache.org/jira/browse/MNG-5608) - warn if file-based profile activation uses ${project.basedir} since only ${basedir} is supported
 * [MNG-5610](https://issues.apache.org/jira/browse/MNG-5610) - README.txt in distro should be updated
 * [MNG-5625](https://issues.apache.org/jira/browse/MNG-5625) - Provide a terse information about the used thread builder
 * [MNG-5630](https://issues.apache.org/jira/browse/MNG-5630) - improve display of forked executions
 * [MNG-5631](https://issues.apache.org/jira/browse/MNG-5631) - WARNING about not triggered patterns in assembly descriptor
 * [MNG-5639](https://issues.apache.org/jira/browse/MNG-5639) - Support resolution of Import Scope POMs from Repo that contains a ${parameter}

Task:

 * [MNG-3954](https://issues.apache.org/jira/browse/MNG-3954) - Remove the RuntimeInfo required in the setting.mdo

Wishes:

 * [MNG-2199](https://issues.apache.org/jira/browse/MNG-2199) - Support version ranges in parent elements
 * [MNG-5346](https://issues.apache.org/jira/browse/MNG-5346) - update maven-plugin-plugin:descriptor default binding from generate-resources phase to process-classes

Enjoy,

-The Apache Maven team
