---
title: "Apache Maven JDeps Plugin 3.1.0 Released"
date: 2017-09-02T17:35:34
lastmod: 2017-09-02T17:35:34
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JDeps Plugin, version 3.1.0](https://maven.apache.org/plugins/maven-jdeps-plugin/).
 
The JDeps Plugin uses the jdeps tool to analyze classes for internal API 
calls. For more information about the standard jdeps tool, please refer to 
Java+Dependency+Analysis+Tool.
 
You should specify the version in your project's plugin configuration:

```xml  
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-jdeps-plugin</artifactId>
  <version>3.1.0</version>
</plugin>
```

Starting with version 3.1.0 you need Java 7 to use maven-jdeps-plugin.
 
[You can download the appropriate sources etc. from the download page.](https://maven.apache.org/plugins/maven-jdeps-plugin/download.cgi).

<!-- more -->

[Release Notes Maven JDeps Plugin Release Notes Version 3.1.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12319223&version=12341415)

Improvements:

 * [MJDEPS-4](https://issues.apache.org/jira/browse/MJDEPS-4) - Upgrade commons-lang to be able to run with JDK9
 * [MJDEPS-5](https://issues.apache.org/jira/browse/MJDEPS-5) - Require Java 7
 * [MJDEPS-6](https://issues.apache.org/jira/browse/MJDEPS-6) - -cp should not duplicated classes/files to analyze

New Feature:

 * [MJDEPS-1](https://issues.apache.org/jira/browse/MJDEPS-1) - Make the plugin thread safe

Enjoy,

-The Apache Maven team 
