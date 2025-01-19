---
title: "Apache Maven DOCCK Plugin Version 1.1 Released"
date: 2015-04-09T09:43:00
lastmod: 2015-04-09T09:43:00
categories:
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven DOCCK, version 1.1](http://maven.apache.org/plugins/maven-docck-plugin).

This plugin checks that a project complies with the Plugin Documentation
Standard.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-docck-plugin</artifactId>
  <version>1.1</version>
</plugin>
```

Please be aware of the [new location of our issue
tracker](https://issues.apache.org/jira/browse/MDOCCK).  which has been moved
from Codehaus to Apache Software Foundation

<!-- more -->

[Release Notes - Apache Maven DOCCK Plugin - Version 1.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317229&version=12330481)

Improvments:

 * [MDOCCK-31](https://issues.apache.org/jira/browse/MDOCCK-31) Upgrade maven-plugin-tools 3.2
 * [MDOCCK-30](https://issues.apache.org/jira/browse/MDOCCK-30) Upgrade to maven-plugins parent version 27
 * [MDOCCK-29](https://issues.apache.org/jira/browse/MDOCCK-29) Upgrade to Maven 2.2.1 compatiblity
 * [MDOCCK-19](https://issues.apache.org/jira/browse/MDOCCK-19) Mark plugin as @threadSafe

Task:  

 * [MDOCCK-25](https://issues.apache.org/jira/browse/MDOCCK-25) use maven-plugin-tools' java 5 annotations

Enjoy,

-The Apache Maven team
