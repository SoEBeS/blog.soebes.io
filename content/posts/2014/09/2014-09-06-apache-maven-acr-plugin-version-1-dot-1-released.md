---
title: "Apache Maven ACR Plugin Version 1.1 Released"
date: 2014-09-06T12:55:00
lastmod: 2014-09-06T12:55
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven ACR Plugin, Version 1.1](http://maven.apache.org/plugins/maven-acr-plugin).

This plugin generates J2EE Application Client file.

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-acr-plugin</artifactId>
  <version>1.1</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven ACR Version 1.1](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=12123&version=17274)

Bug:

 * [MACR-5](https://issues.apache.org/jira/browse/MACR-5) - Usage page is wrong: Maven 3.0.4 does not include ACR plugin

Tasks:

 * [MACR-6](https://issues.apache.org/jira/browse/MACR-6) - use maven-plugin-tools' java 5 annotations
 * [MACR-7](https://issues.apache.org/jira/browse/MACR-7) - Removed warnings during build
 * [MACR-9](https://issues.apache.org/jira/browse/MACR-9) - Upgrade plexus-archiver to 2.4.4
 * [MACR-10](https://issues.apache.org/jira/browse/MACR-10) - Upgrade maven-filtering to 1.2
 

Enjoy,

-The Apache Maven team

Karl-Heinz Marbaise
