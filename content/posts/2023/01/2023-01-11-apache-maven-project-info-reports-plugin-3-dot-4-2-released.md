---
title: "Apache Maven Project Info Reports Plugin Version 3.4.2 Released"
date: 2023-01-11T20:34:34
lastmod: 2023-01-11T20:34:34
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Maven Project Info Reports Plugin version 3.4.2](https://maven.apache.org/plugins/maven-project-info-reports-plugin/)

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-project-info-reports-plugin</artifactId>
  <version>3.4.2</version>
</plugin>
```

You can download the appropriate sources etc. from the 
[download page](https://maven.apache.org/plugins/maven-project-info-reports-plugin/download.cgi).


[Release Notes - Maven Project Info Reports Plugin - Version 3.4.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317821&version=12352728)

* Bug
  * [MPIR-425](https://issues.apache.org/jira/browse/MPIR-425) - Verbatim content should be rendered as plain text

* Tasks
  * [MPIR-426](https://issues.apache.org/jira/browse/MPIR-426) - Remove Apache Buildr from Dependency Information Report
  * [MPIR-427](https://issues.apache.org/jira/browse/MPIR-427) - Explicitly start and end tables with Doxia Sinks in report renderers


Enjoy,

-The Apache Maven team 
