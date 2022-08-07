---
title: "Apache Maven Site Plugin Version 3.12.1 Released"
date: 2022-08-04T12:01:01
lastmod: 2022-08-04T12:01:01
categories:
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Site Plugin, version 3.12.1](https://maven.apache.org/plugins/maven-site-plugin/).

The Site Plugin is used to generate a site for the project. The generated site
also includes the project's reports that were configured in the POM.

You can download the appropriate sources etc. from the download page:
 
https://maven.apache.org/plugins/maven-site-plugin/download.cgi

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-site-plugin</artifactId>
  <version>3.12.1</version>
</plugin>   
```

[Release Notes - Maven Site Plugin - Version 3.12.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?version=12351337&styleName=Text&projectId=12317923)


* Bug:
 
  * [MSITE-901](https://issues.apache.org/jira/browse/MSITE-901) - If preceding standalone report has been run, site:jar does not reinvoke site:site

* Dependency upgrades:
 
  * [MSITE-897](https://issues.apache.org/jira/browse/MSITE-897) - Upgrade Plexus Archiver to 4.2.7
  * [MSITE-898](https://issues.apache.org/jira/browse/MSITE-898) - Upgrade Parent to 36
  * [MSITE-902](https://issues.apache.org/jira/browse/MSITE-902) - Upgrade Plexus Utils to 3.4.2
  * [MSITE-908](https://issues.apache.org/jira/browse/MSITE-908) - Upgrade Maven Reporting API to 3.1.1

Enjoy,

-The Apache Maven team
