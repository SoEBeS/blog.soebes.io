---
title: "Apache Maven Verifier Plugin Version 1.1 Released"
date: 2015-04-15T07:55:00
lastmod: 2015-04-15T07:55
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Verifier Plugin, version 1.1](http://maven.apache.org/plugins/maven-verifier-plugin).

Useful for integration tests - verifies the existence of certain conditions.

Please be aware of the new location of our issue tracker
which has been moved from Codehaus to [Apache Software Foundation](https://issues.apache.org/jira/browse/MJAVADOC).

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-verifier-plugin</artifactId>
  <version>1.1</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven Verifier Plugin - Version 1.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318120&version=12331744)

Improvements:

 * [MVERIFIER-15](https://issues.apache.org/jira/browse/MVERIFIER-15) - Upgrade to Maven 2.2.1 compatiblity
 * [MVERIFIER-16](https://issues.apache.org/jira/browse/MVERIFIER-16) - Change execution of goals cause currently the integration tests running twice

New Feature:

 * [MVERIFIER-10](https://issues.apache.org/jira/browse/MVERIFIER-10) - Print the absolute path to the input file when verification fails

Task:

 * [MVERIFIER-13](https://issues.apache.org/jira/browse/MVERIFIER-13) - use maven-plugin-tools' java 5 annotations


Enjoy,

-The Apache Maven team
