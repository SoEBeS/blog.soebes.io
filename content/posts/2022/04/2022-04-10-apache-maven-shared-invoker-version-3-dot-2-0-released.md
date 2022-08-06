---
title: "Apache Maven Shared Invoker Version 3.2.0 Released"
date: 2022-04-10T17:41:41
lastmod: 2022-04-10T17:41:41
categories:
  - Maven
  - Maven-Plugins
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Maven Invoker, version 3.2.0](https://maven.apache.org/shared/maven-invoker/)

Apache Maven Invoker is a component to programmatically invoke Maven build.

You can download the appropriate sources etc. from the 
[download page](https://maven.apache.org/shared/maven-invoker/download.cgi).


```xml
<dependencies>
  <dependency>
    <groupId>org.apache.maven.shared</groupId>
    <artifactId>maven-invoker</artifactId>
    <version>3.2.0</version>
  </dependency>
</dependencies>
```

<!-- more -->

[Release Notes - Maven Shared Components - Version maven-invoker-3.2.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?version=12349685&styleName=Text&projectId=12317922)


* Bug:
 
  * [MSHARED-1008](https://issues.apache.org/jira/browse/MSHARED-1008) - Set builder id in proper way

* New Feature:
 
  * [MSHARED-1007](https://issues.apache.org/jira/browse/MSHARED-1007) - Add MavenHome and MavenExecutable options to
 
* InvocationRequests:

  * [MSHARED-1009](https://issues.apache.org/jira/browse/MSHARED-1009) - Allow providing Maven executable from workspace
  * [MSHARED-1018](https://issues.apache.org/jira/browse/MSHARED-1018) - Allow for using the -ntp ,--no-transfer-progress flag in Maven invocations
  * [MSHARED-1019](https://issues.apache.org/jira/browse/MSHARED-1019) - Allow pass raw cli option to Maven process

* Improvements:
 
  * [MSHARED-577](https://issues.apache.org/jira/browse/MSHARED-577) - Remove usage of M2_HOME environment variable
  * [MSHARED-649](https://issues.apache.org/jira/browse/MSHARED-649) - Use setBaseDirectory() and setPomFile() simultaneously so that a temporary pom file may be used for the maven invocation
  * [MSHARED-999](https://issues.apache.org/jira/browse/MSHARED-999) - Shared GitHub Actions
  * [MSHARED-1006](https://issues.apache.org/jira/browse/MSHARED-1006) - Invoker should be safely used in multi thread
  * [MSHARED-1012](https://issues.apache.org/jira/browse/MSHARED-1012) - Improve error for invalid Maven home

* Tasks:
 
  * [MSHARED-1040](https://issues.apache.org/jira/browse/MSHARED-1040) - Require Java 8

* Dependency upgrade:
 
  * [MSHARED-1042](https://issues.apache.org/jira/browse/MSHARED-1042) - Upgrade Parent to 35


Enjoy,

-The Apache Maven team 
