---
title: "Apache Maven WAR Plugin Version 3.3.0 Released"
date: 2020-06-09T15:31:03
lastmod: 2020-06-09T15:31:03
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven WAR Plugin, version 3.3.0](https://maven.apache.org/plugins/maven-war-plugin/).

The WAR Plugin is responsible for collecting all artifact dependencies, classes
and resources of the web application and packaging them into a web application
archive.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-war-plugin</artifactId>
  <version>3.3.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page][download].

<!-- more -->


[Release Notes - Maven WAR Plugin - Version 3.3.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318121&version=12345578)

* Bugs:

  * [MWAR-314](https://issues.apache.org/jira/browse/MWAR-314) - failOnMissingWebXml ignored when webXml set
  * [MWAR-427](https://issues.apache.org/jira/browse/MWAR-427) - WAR plugin includes the same artifact twice if used without clean
  * [MWAR-429](https://issues.apache.org/jira/browse/MWAR-429) - Failed to execute goal org.apache.maven.plugins:maven-war-plugin:3.2.3:exploded (pre-exploded-war) on project alfresco-platform

* New Feature:

  * [MWAR-432](https://issues.apache.org/jira/browse/MWAR-432) - Reproducible Builds: make entries in output jar files reproducible (order + timestamp)

* Improvements:

  * [MWAR-375](https://issues.apache.org/jira/browse/MWAR-375) - Remove the useCache with its implementation
  * [MWAR-397](https://issues.apache.org/jira/browse/MWAR-397) - Replace XStream with Modello to merge overlays
  * [MWAR-430](https://issues.apache.org/jira/browse/MWAR-430) - support JakartaEE namespace: remove or adapt hardcoded reference to javax.servlet package
  * [MWAR-431](https://issues.apache.org/jira/browse/MWAR-431) - make build Reproducible

Enjoy,

-The Apache Maven team

[download]: https://maven.apache.org/plugins/maven-war-plugin/download.cgi
