---
title: "Apache Maven Project Info Reports Plugin Version 3.2.2 Released"
date: 2022-02-25T15:23:21
lastmod: 2022-02-25T15:23:21
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Maven Project Info Reports Plugin version 3.2.2](https://maven.apache.org/plugins/maven-project-info-reports-plugin/)

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-project-info-reports-plugin</artifactId>
  <version>3.2.2</version>
</plugin>
```

You can download the appropriate sources etc. from the 
[download page](https://maven.apache.org/plugins/maven-project-info-reports-plugin/download.cgi).

<!-- more --> 

[Release Notes - Maven Project Info Reports Plugin - Version 3.2.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317821&version=12351375)


* Bug:
 
  * [MPIR-413](https://issues.apache.org/jira/browse/MPIR-413) - Plugin repositories defined in project are not used by plugin-management report

* Dependency upgrade:
 
  * [MPIR-414](https://issues.apache.org/jira/browse/MPIR-414) - Upgrade Maven Reporting API/Impl to 3.1.0

Enjoy,

-The Apache Maven team 
