---
title: "Apache Maven Site Plugin Version 3.9.1 Released"
date: 2020-06-25T11:30:27
lastmod: 2020-06-25T11:30:27
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Site Plugin, version 3.9.1](https://maven.apache.org/plugins/maven-site-plugin/).

The Site Plugin is used to generate a site for the project. The generated site
also includes the project's reports that were configured in the POM.

You can download the appropriate sources etc. from the download page:
 
https://maven.apache.org/plugins/maven-site-plugin/download.cgi

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-site-plugin</artifactId>
  <version>3.9.1</version>
</plugin>   
```
<!-- more -->
[Release Notes - Maven Site Plugin - Version 3.9.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317923&version=12347781)

* Bugs:

  * [MSITE-856](https://issues.apache.org/jira/browse/MSITE-856) - NullPointer on org.apache.maven.plugins.site.render.SiteMap.relativePath
  * [MSITE-863](https://issues.apache.org/jira/browse/MSITE-863) - NoSuchMethodError: 'Xpp3Dom.getInputLocation()' when running reports with Maven versions &lt; 3.6.1

* Improvements:

  * [MSITE-845](https://issues.apache.org/jira/browse/MSITE-845) - Drop Maven 2 support
  * [MSITE-862](https://issues.apache.org/jira/browse/MSITE-862) - log Doxia source when rendering with site:run

* Task:

  * [MSITE-757](https://issues.apache.org/jira/browse/MSITE-757) - drop Maven 2 support

Enjoy,

-The Apache Maven team
