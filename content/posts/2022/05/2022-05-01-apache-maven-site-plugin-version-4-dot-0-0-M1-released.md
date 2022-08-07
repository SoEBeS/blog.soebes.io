---
title: "Apache Maven Site Plugin Version 4.0.0-M1 Released"
date: 2022-05-01T12:30:21
lastmod: 2022-05-01T12:30:21
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Site Plugin, version 4.0.0-M1](https://maven.apache.org/plugins/maven-site-plugin/).

The Site Plugin is used to generate a site for the project. The generated site
also includes the project's reports that were configured in the POM.

You can download the appropriate sources etc. from the download page:
 
https://maven.apache.org/plugins/maven-site-plugin/download.cgi

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-site-plugin</artifactId>
  <version>4.0.0-M1</version>
</plugin>   
```
<!-- more -->
[Release Notes - Maven Site Plugin - Version 4.0.0-M1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?version=12351657&styleName=Text&projectId=12317923)


* Dependency upgrades:
 
  * [MSITE-892](https://issues.apache.org/jira/browse/MSITE-892) - Upgrade to Doxia/Doxia Sitetools to 2.0.0-M2
  * [MSITE-893](https://issues.apache.org/jira/browse/MSITE-893) - Upgrade Maven Reporting API to 4.0.0-M1
  * [MSITE-894](https://issues.apache.org/jira/browse/MSITE-894) - Upgrade Maven Reporting Exec to 2.0.0-M1
  * [MSITE-895](https://issues.apache.org/jira/browse/MSITE-895) - Upgrade plugins and components in ITs
  * [MSITE-897](https://issues.apache.org/jira/browse/MSITE-897) - Upgrade Plexus Archiver to 4.2.7
  * [MSITE-898](https://issues.apache.org/jira/browse/MSITE-898) - Upgrade Parent to 36

Enjoy,

-The Apache Maven team
