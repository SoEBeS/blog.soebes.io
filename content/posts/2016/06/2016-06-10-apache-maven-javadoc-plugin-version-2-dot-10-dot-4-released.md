---
title: "Apache Maven JavaDoc Plugin Version 2.10.4 Released"
date: 2016-06-10T22:30:00
lastmod: 2016-06-10T22:30
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JavaDoc Plugin, version 2.10.4](https://maven.apache.org/plugins/maven-javadoc-plugin).

The Javadoc Plugin uses the Javadoc tool to generate javadocs for the
specified project. 

Please be aware of the new location of our issue tracker
which has been moved from Codehaus to [Apache Software Foundation](https://issues.apache.org/jira/browse/MJAVADOC).

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-javadoc-plugin</artifactId>
  <version>2.10.4</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven JavaDoc Plugin - Version 2.10.4](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317529&version=12331967)


Bugs:

 * [MJAVADOC-404](https://issues.apache.org/jira/browse/MJAVADOC-404) - Goal resource-bundle generates faulty JAR file
 * [MJAVADOC-423](https://issues.apache.org/jira/browse/MJAVADOC-423) - Wrong link generation for org.xml.sax.helpers.DefaultHandler
 * [MJAVADOC-431](https://issues.apache.org/jira/browse/MJAVADOC-431) - Allow Javadoc Jar to contain Maven descriptor
 * [MJAVADOC-437](https://issues.apache.org/jira/browse/MJAVADOC-437) - javadoc:aggregate fails on initial build
 * [MJAVADOC-441](https://issues.apache.org/jira/browse/MJAVADOC-441) - javadoc plugin fails with recent jdk9-ea builds

Documentation:

 * [MJAVADOC-385](https://issues.apache.org/jira/browse/MJAVADOC-385) - Fix documentation of <additionalDependencies> feature

Improvements:

 * [MJAVADOC-384](https://issues.apache.org/jira/browse/MJAVADOC-384) - Allow whitespace in javadoc exclude list
 * [MJAVADOC-442](https://issues.apache.org/jira/browse/MJAVADOC-442) - Support new jdk9 java version scheme
 * [MJAVADOC-446](https://issues.apache.org/jira/browse/MJAVADOC-446) - Upgrade plexus-archiver from 3.0.3 to 3.1
 * [MJAVADOC-454](https://issues.apache.org/jira/browse/MJAVADOC-454) - Upgrade of 'plexus-archiver' to version 3.3.
 * [MJAVADOC-455](https://issues.apache.org/jira/browse/MJAVADOC-455) - Change IT whitelist to blacklist

Wish:

 * [MJAVADOC-432](https://issues.apache.org/jira/browse/MJAVADOC-432) - Downgrade "Error fetching link: .../package-list"



Enjoy,

-The Apache Maven team
