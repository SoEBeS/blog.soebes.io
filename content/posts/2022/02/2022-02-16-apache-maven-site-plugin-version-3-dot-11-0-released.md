---
title: "Apache Maven Site Plugin Version 3.11.0 Released"
date: 2022-02-16T23:06:12
lastmod: 2022-02-16T23:06:12
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Site Plugin, version 3.11.0](https://maven.apache.org/plugins/maven-site-plugin/).

The Site Plugin is used to generate a site for the project. The generated site
also includes the project's reports that were configured in the POM.

You can download the appropriate sources etc. from the download page:
 
https://maven.apache.org/plugins/maven-site-plugin/download.cgi

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-site-plugin</artifactId>
  <version>3.11.0</version>
</plugin>   
```
<!-- more -->
[Release Notes - Maven Site Plugin - Version 3.11.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317923&version=12351142)


* Task:
 
  * [MSITE-880](https://issues.apache.org/jira/browse/MSITE-880) - AbstractSiteDeployWebDavTest should not log

* Dependency upgrades:
 
  * [MSITE-881](https://issues.apache.org/jira/browse/MSITE-881) - Upgrade Maven Reporting API to 3.1.0
  * [MSITE-882](https://issues.apache.org/jira/browse/MSITE-882) - Upgrade Maven Reporting Exec to 1.6.0
  * [MSITE-883](https://issues.apache.org/jira/browse/MSITE-883) - Upgrade plugins in ITs

Enjoy,

-The Apache Maven team
