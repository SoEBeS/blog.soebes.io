---
title: "Apache Maven Source Plugin Version 2.4 Released"
date: 2014-10-11T13:40:00
lastmod: 2014-10-11T13:40:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Source Plugin, Version 2.4](http://maven.apache.org/plugins/maven-source-plugin).

The Source Plugin creates a jar archive of the source files of the current
project. The jar file is, by default, created in the project's target
directory.

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-source-plugin</artifactId>
  <version>2.4</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven Source Version 2.4](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11147&version=20597)


Improvements:

 * [MSOURCES-71](https://issues.apache.org/jira/browse/MSOURCES-71) - MavenProject/MavenSession Injection as a paremeter instead as a component.
 * [MSOURCES-72](https://issues.apache.org/jira/browse/MSOURCES-72) - Upgrade to Maven 2.2.1 compatiblity
 * [MSOURCES-73](https://issues.apache.org/jira/browse/MSOURCES-73) - Update version of plexus-archiver to 2.6.1
 * [MSOURCES-74](https://issues.apache.org/jira/browse/MSOURCES-74) - Upgrade to plexus-archiver 2.6.3

Enjoy,

-The Apache Maven team

Karl Heinz Marbaise
