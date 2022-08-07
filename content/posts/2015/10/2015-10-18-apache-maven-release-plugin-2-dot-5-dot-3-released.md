---
title: "Apache Maven Release Plugin Version 2.5.3 Released"
date: 2015-10-18T11:00:00
lastmod: 2015-10-18T11:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Release, version 2.5.3](http://maven.apache.org/maven-release/).

This plugin is used to release a project with Maven, saving a lot of
repetitive, manual work. Releasing a project is made in two steps: prepare and
perform.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-release-plugin</artifactId>
  <version>2.5.3</version>
</plugin>
```
<!-- more -->

[Release Notes - Maven Release Plugin - Version 2.5.3](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12333673)

Bugs:

 * [MRELEASE-921](https://issues.apache.org/jira/browse/MRELEASE-921) - perform goal doesn't support providerImplementation
 * [MRELEASE-925](https://issues.apache.org/jira/browse/MRELEASE-925) - Old version of plexus utils forced here causes failures


Enjoy,

-The Apache Maven team
