---
title: "Apache Maven Site Plugin Version 4.0.0-M3 Released"
date: 2022-07-25T12:56:45
lastmod: 2022-07-25T12:56:45
categories:
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Site Plugin, version 4.0.0-M3](https://maven.apache.org/plugins/maven-site-plugin/).

The Site Plugin is used to generate a site for the project. The generated site
also includes the project's reports that were configured in the POM.

You can download the appropriate sources etc. from the download page:
 
https://maven.apache.org/plugins/maven-site-plugin/download.cgi

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-site-plugin</artifactId>
  <version>4.0.0-M3</version>
</plugin>   
```
<!-- more -->
[Release Notes - Maven Site Plugin - Version 4.0.0-M3](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317923&version=12352119)


* Dependency upgrades:
 
  * [MSITE-905](https://issues.apache.org/jira/browse/MSITE-905) - Upgrade Doxia and Maven Reporting stack
  * [MSITE-906](https://issues.apache.org/jira/browse/MSITE-906) - Upgrade plugins and components
 
Enjoy,

-The Apache Maven team
