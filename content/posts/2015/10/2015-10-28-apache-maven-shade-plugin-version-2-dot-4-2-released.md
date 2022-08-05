---
title: "Apache Maven Shade Plugin Version 2.4.2 Released"
date: 2015-10-28T22:19:12
lastmod: 2015-10-28T22:19:12
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shade Plugin, version 2.4.2](http://maven.apache.org/plugins/maven-shade-plugin/).

This plugin provides the capability to package the artifact in an uber-jar,
including its dependencies and to shade - i.e. rename - the packages of some of
the dependencies.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-shade-plugin</artifactId>
  <version>2.4.2</version>
</plugin>
```

<!-- more -->

You can download the [appropriate sources etc. from the download page](http://maven.apache.org/plugins/maven-shade-plugin/download.cgi).
 
[Release Notes - Maven Shade Plugin - Version 2.4.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317921&version=12333008)

Bugs:

 * [MSHADE-172](https://issues.apache.org/jira/browse/MSHADE-172) -  "java.lang.ArithmeticException: / by zero" in MinijarFilter
 * [MSHADE-190](https://issues.apache.org/jira/browse/MSHADE-190) -  Shade does not relocate the contents of META-INF/services files
 * [MSHADE-209](https://issues.apache.org/jira/browse/MSHADE-209) -  [REGRESSION] "java.lang.ArithmeticException: / by zero" in MinijarFilter (reporter Jon McLean).

Improvements:

 * [MSHADE-205](https://issues.apache.org/jira/browse/MSHADE-205) -  Better use of ClazzpathUnit for improved jar minimization (contributation of Benoit Perrot).
 * [MSHADE-207](https://issues.apache.org/jira/browse/MSHADE-207) -  Replace wrong link to codehaus with correct location
 * [MSHADE-210](https://issues.apache.org/jira/browse/MSHADE-210) -  Upgrade maven-plugins parent to version 28.
 * [MSHADE-211](https://issues.apache.org/jira/browse/MSHADE-211) -  Keep Java 1.5


Enjoy,

-The Apache Maven team

Thanks to contributors and reporters.

