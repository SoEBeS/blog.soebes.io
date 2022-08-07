---
title: "Apache Maven Site Plugin Version 3.12.0 Released"
date: 2022-04-20T20:30:30
lastmod: 2022-04-20T20:30:30
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Site Plugin, version 3.12.0](https://maven.apache.org/plugins/maven-site-plugin/).

The Site Plugin is used to generate a site for the project. The generated site
also includes the project's reports that were configured in the POM.

You can download the appropriate sources etc. from the download page:
 
https://maven.apache.org/plugins/maven-site-plugin/download.cgi

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-site-plugin</artifactId>
  <version>3.12.0</version>
</plugin>   
```
<!-- more -->
[Release Notes - Maven Site Plugin - Version 3.12.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?version=12351337&styleName=Text&projectId=12317923)


* Bug:
 
  * [MSITE-857](https://issues.apache.org/jira/browse/MSITE-857) - Jetty engine fails to resolve web.xml DTD behind corporate proxy

* Tasks:
 
  * [MSITE-828](https://issues.apache.org/jira/browse/MSITE-828) - Upgrade to Java 8
  * [MSITE-884](https://issues.apache.org/jira/browse/MSITE-884) - Drop/replace usage of Commons Lang 3
  * [MSITE-887](https://issues.apache.org/jira/browse/MSITE-887) - Deprecate templateFile parameter

* Dependency upgrades:
 
  * [MSITE-829](https://issues.apache.org/jira/browse/MSITE-829) - Upgrade Jetty to 9.4.x
  * [MSITE-885](https://issues.apache.org/jira/browse/MSITE-885) - Upgrade Commons IO to 2.11.0
  * [MSITE-886](https://issues.apache.org/jira/browse/MSITE-886) - Upgrade Maven Wagon to 3.5.1
  * [MSITE-888](https://issues.apache.org/jira/browse/MSITE-888) - Upgrade to Maven 3.2.5
  * [MSITE-889](https://issues.apache.org/jira/browse/MSITE-889) - Upgrade Plexus Utils to 3.3.1
  * [MSITE-890](https://issues.apache.org/jira/browse/MSITE-890) - Upgrade Jetty to 9.4.46.v20220331
  * [MSITE-891](https://issues.apache.org/jira/browse/MSITE-891) - Upgrade plugins in IT

 
Enjoy,

-The Apache Maven team
