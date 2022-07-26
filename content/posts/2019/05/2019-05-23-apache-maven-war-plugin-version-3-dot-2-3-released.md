---
title: "Apache Maven WAR Plugin Version 3.2.3 Released"
date: 2019-05-27T20:04:39
lastmod: 2019-05-27T20:04:39
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven WAR Plugin, version 3.2.3](https://maven.apache.org/plugins/maven-war-plugin/).

The WAR Plugin is responsible for collecting all artifact dependencies, classes
and resources of the web application and packaging them into a web application
archive.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-war-plugin</artifactId>
  <version>3.2.3</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page][download].

Important Note: 

 * Maven 3.X only
 * JDK 7 minimum requirement


<!-- more -->


[Release Notes - Maven WAR Plugin - Version 3.2.3](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318121&version=12343424)

Bug:

 * [MWAR-371](https://issues.apache.org/jira/browse/MWAR-371) - Overlays break first-win rule for web resource with target path ending with '/'

Dependency upgrades:

 * [MWAR-419](https://issues.apache.org/jira/browse/MWAR-419) - Upgrade maven-plugins parent to version 32
 * [MWAR-423](https://issues.apache.org/jira/browse/MWAR-423) - Upgrade plexus-archiver to 4.1.0
 * [MWAR-424](https://issues.apache.org/jira/browse/MWAR-424) - Upgrade maven-archiver to 3.4.0
 * [MWAR-425](https://issues.apache.org/jira/browse/MWAR-425) - Upgrade plexus-utils to 3.2.0

Many thanks to all reporters/contributors/testers of this release.

Voters:

* Francois Papon
* Eric Lilja
* Gabriel Belingueres 

Enjoy,

-The Apache Maven team

[download]: https://maven.apache.org/plugins/maven-war-plugin/download.cgi
