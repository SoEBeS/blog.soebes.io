---
title: "Apache Maven EAR Plugin Version 2.10 Released"
date: 2014-12-31T16:44:00
lastmod: 2014-12-31T16:44
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven EAR Plugin, version 2.10](http://maven.apache.org/plugins/maven-ear-plugin/)

This plugin generates Java EE Enterprise Archive (EAR) file. It can also
generate the deployment descriptor file (e.g. application.xml).

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-ear-plugin</artifactId>
  <version>2.10</version>
</plugin>
```
<!-- more -->

[Release Notes - Maven EAR Plugin - Version 2.10](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11132&version=20436)

Bugs:

 * [MEAR-180](https://issues.apache.org/jira/browse/MEAR-180) - Artifacts with same artifactId/version are ignored in packaging
 * [MEAR-183](https://issues.apache.org/jira/browse/MEAR-183) - Extra 'temp' directory created in wrong place
 * [MEAR-188](https://issues.apache.org/jira/browse/MEAR-188) - Project property cannot be resolved inside <env-entry> element

Improvements:

 * [MEAR-182](https://issues.apache.org/jira/browse/MEAR-182) - Skinny WAR's - Skip Class-Path Modification in Manifest
 * [MEAR-191](https://issues.apache.org/jira/browse/MEAR-191) - Set prerequisites to Maven 2.2.1
 * [MEAR-192](https://issues.apache.org/jira/browse/MEAR-192) - Update version of plexus-archiver to 2.5
 * [MEAR-195](https://issues.apache.org/jira/browse/MEAR-195) - Removed dependency plexus-container-default:1.0-alpha-9-stable-1
 * [MEAR-196](https://issues.apache.org/jira/browse/MEAR-196) - Update version of plexus-archiver to 2.6.1
 * [MEAR-197](https://issues.apache.org/jira/browse/MEAR-197) - Update version of plexus-archiver to 2.6.2
 * [MEAR-199](https://issues.apache.org/jira/browse/MEAR-199) - Fix integration test which is currently ignored
 * [MEAR-200](https://issues.apache.org/jira/browse/MEAR-200) - Upgrade to plexus-archiver 2.7
 * [MEAR-202](https://issues.apache.org/jira/browse/MEAR-202) - Upgrade to maven-plugins version 25 to 26
 * [MEAR-203](https://issues.apache.org/jira/browse/MEAR-203) - Upgrade maven-filtering to 1.3
 * [MEAR-204](https://issues.apache.org/jira/browse/MEAR-204) - Upgrade maven-archiver dependency to v2.6
 * [MEAR-205](https://issues.apache.org/jira/browse/MEAR-205) - Upgrade to maven-plugins parent version 27
 * [MEAR-210](https://issues.apache.org/jira/browse/MEAR-210) - Following naming conventions of maven-surefire/failsafe-plugin

New Feature:

 * [MEAR-181](https://issues.apache.org/jira/browse/MEAR-181) - Adding ejb-ref in application.xml

Tasks:

 * [MEAR-176](https://issues.apache.org/jira/browse/MEAR-176) - Upgrading maven-filtering breaks IT
 * [MEAR-190](https://issues.apache.org/jira/browse/MEAR-190) - Remove the alias of defaultLibBundleDir

Enjoy,

-The Apache Maven team
