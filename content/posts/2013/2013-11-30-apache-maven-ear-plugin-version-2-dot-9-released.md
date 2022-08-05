---
title: "Apache Maven EAR Plugin Version 2.9 Released"
date: 2013-11-30T18:17:00
lastmod: 2013-11-30T18:17
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---

The Apache Maven team is pleased to announce the release of the 
[Apache Maven Ear Plugin, version 2.9](http://maven.apache.org/plugins/maven-ear-plugin/)

This plugin generates a Java EE Enterprise Archive (EAR) file. It can also 
generate the deployment descriptor file (e.g. application.xml).

<!-- more -->

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-ear-plugin</artifactId>
  <version>2.9</version>
</plugin>
```

[Release Notes - Apache Maven Ear Plugin - Version 2.9](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11132&version=18770)


The following bugs have been fixed:

 * [MEAR-149](https://issues.apache.org/jira/browse/MEAR-149) - skinnyWars and SNAPSHOT unique dependencies
 * [MEAR-158](https://issues.apache.org/jira/browse/MEAR-158) - Elements library-directory and env-entry out of sequence in application.xml for JEE 6
 * [MEAR-160](https://issues.apache.org/jira/browse/MEAR-160) - Performance regression while copying artifacts into ear
 * [MEAR-162](https://issues.apache.org/jira/browse/MEAR-162) - skinnyWars with wars without manifest Class-Path attribute
 * [MEAR-167](https://issues.apache.org/jira/browse/MEAR-167) - Classes from different modules with the same artifactId are merged when skinnyWars set to TRUE

and the following improvements have been made:

 * [MEAR-88](https://issues.apache.org/jira/browse/MEAR-88) - Improve documentation on combining Eclipse and Maven Integration
 * [MEAR-164](https://issues.apache.org/jira/browse/MEAR-164) - support for useJvmChmod in archiver and true per default
 * [MEAR-169](https://issues.apache.org/jira/browse/MEAR-169) - Add support for EAR 7
 * [MEAR-172](https://issues.apache.org/jira/browse/MEAR-172) - Enhance the exception thrown when the EAR plugin can not map an included artifact
 * [MEAR-174](https://issues.apache.org/jira/browse/MEAR-174) - generate-application-xml does not support the definition of an application id
 * [MEAR-178](https://issues.apache.org/jira/browse/MEAR-178) - Change "J2EE" and sun link on index page


Enjoy,

-The Apache Maven team

