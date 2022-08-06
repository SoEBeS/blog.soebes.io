---
title: "Mojo SonarQube Maven Plugin 2.3 Released"
date: 2014-05-28T19:51:00
lastmod: 2014-05-28T19:51
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Mojo team is pleased to announce the release of the 
[SonarQube Maven Plugin version 2.3](http://mojo.codehaus.org/sonar-maven-plugin/).

This plugin aims at running SonarQube analysis for Maven projects.


To get this update, simply specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>sonar-maven-plugin</artifactId>
  <version>2.3</version>
</plugin>
```
<!-- more -->

4 Issues have been solved:

Bugs:

* [MSONAR-46](https://issues.apache.org/jira/browse/MSONAR-46) - Add the "skip" option
* [MSONAR-61](https://issues.apache.org/jira/browse/MSONAR-61) - Improve support of advanced reactor options
* [MSONAR-69](https://issues.apache.org/jira/browse/MSONAR-69) - Support Maven encryption mechanism for SonarQube passwords
* [MSONAR-60](https://issues.apache.org/jira/browse/MSONAR-60) - Embed sonar-runner

Enjoy,

The Mojo team.
