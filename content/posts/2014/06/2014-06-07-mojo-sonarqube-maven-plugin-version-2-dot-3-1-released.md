---
title: "Mojo SonarQube Maven Plugin Version 2.3.1 Released"
date: 2014-06-07T13:34:00
lastmod: 2014-06-07T13:34:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
Hi,

The Mojo team is pleased to announce a bugfix release of the 
[SonarQube Maven Plugin version 2.3.1](http://mojo.codehaus.org/sonar-maven-plugin/).

This plugin aims at running SonarQube analysis for Maven projects.

To get this update, simply specify the version in your project's plugin configuration: 


```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>sonar-maven-plugin</artifactId>
  <version>2.3.1</version>
</plugin>
```

<!-- more -->


Release Notes

* [MSONAR-77](https://issues.apache.org/jira/browse/MSONAR-77) - Unable to analyze deep multi-module projects on SonarQube 4.3+

Enjoy,

The Mojo team.

Julien HENRY 

