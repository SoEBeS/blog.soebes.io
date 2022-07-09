---
title: "Mojo's Build Number Maven Plugin Version 1.3 Released"
date: 2014-05-02T10:35:00
lastmod: 2014-05-02T10:35
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Mojo team is pleased to announce the release of the 
[buildnumber-maven-plugin version 1.3](http://mojo.codehaus.org/buildnumber-maven-plugin/).

This mojo is designed to get a unique build number for each time you build your project. 
So while your version may remain constant at 1.0-SNAPSHOT for many iterations until release, 
you will have a build number that can uniquely identify each build during that time.

To get this update, simply specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>buildnumber-maven-plugin</artifactId>
  <version>1.3</version>
</plugin>
```
<!-- more -->

[Release Notes Release 1.3](https://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=12124&version=18855).

Bugs:

* [MBUILDNUM-66](https://issues.apache.org/jira/browse/MBUILDNUM-66) - Git - problems with scmBranch resolving
* [MBUILDNUM-112](https://issues.apache.org/jira/browse/MBUILDNUM-112) - No property for getRevisionOnlyOnce
* [MBUILDNUM-114](https://issues.apache.org/jira/browse/MBUILDNUM-114) - TestCreateMojo failing on Win7

Improvements:

* [MBUILDNUM-98](https://issues.apache.org/jira/browse/MBUILDNUM-98) - The CreateTimestampMojo needs to be marked with @threadSafe
* [MBUILDNUM-103](https://issues.apache.org/jira/browse/MBUILDNUM-103) - provide a way to skip mojo execution
* [MBUILDNUM-117](https://issues.apache.org/jira/browse/MBUILDNUM-117) - Update to java5 mojo annotations
* [MBUILDNUM-118](https://issues.apache.org/jira/browse/MBUILDNUM-118) - Update to maven-scm 1.9
* [MBUILDNUM-119](https://issues.apache.org/jira/browse/MBUILDNUM-119) - Docs should be updated according to svn/git usage
* [MBUILDNUM-120](https://issues.apache.org/jira/browse/MBUILDNUM-120) - Lower buildnumber:create verbosity


Enjoy,

The Mojo team.

-- Baptiste

