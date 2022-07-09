---
title: "Apache Maven Stage Plugin Version 1.0 Released"
date: 2015-03-04T19:01:00
lastmod: 2015-03-04T19:01
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Stage Plugin, version 1.0](http://maven.apache.org/plugins/maven-stage-plugin/).

This plugin is used to create bundles of artifacts that can be uploaded to the
central repository.


```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-stage-plugin</artifactId>
  <version>1.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Stage Plugin - Version 1.0](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11695&version=14343)

Bugs:

 * [MSTAGE-7](https://issues.apache.org/jira/browse/MSTAGE-7) - Unable to use archiva as http source with maven-stage-plugin
 * [MSTAGE-9](https://issues.apache.org/jira/browse/MSTAGE-9) - Stage plugin fails with ClassCastException
 * [MSTAGE-16](https://issues.apache.org/jira/browse/MSTAGE-16) - Stage plugin doesn't work with maven3

Improvement:

 * [MSTAGE-18](https://issues.apache.org/jira/browse/MSTAGE-18) - Fix RAT Report

Tasks:

 * [MSTAGE-15](https://issues.apache.org/jira/browse/MSTAGE-15) - use maven-plugin-tools' java 5 annotations
 * [MSTAGE-19](https://issues.apache.org/jira/browse/MSTAGE-19) - Upgrade maven-wagon to 2.8

Enjoy,

-The Apache Maven team
