---
title: "Apache Maven Archetype Plugin 3.0.1 Released"
date: 2017-04-11T15:45:23
lastmod: 2017-04-11T15:45:23
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Archetype Plugin, version 3.0.1](https://maven.apache.org/archetype/maven-archetype-plugin/).

In short, Archetype is a Maven project templating toolkit. An archetype is defined as an original pattern or model from which all other things of the same kind are made. The names fits as we are trying to provide a system that provides a consistent means of generating Maven projects. Archetype will help authors create Maven project templates for users, and provides users with the means to generate parameterized versions of those project templates.

https://maven.apache.org/archetype/maven-archetype-plugin/index.html

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-archetype-plugin</artifactId>
  <version>3.0.1</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/plugins/maven-archetype-plugin/download.cgi).

<!-- more -->

[Release Notes - Maven Archetype Plugin - Version 3.0.1]

Bugs:

 * [ARCHETYPE-518](https://issues.apache.org/jira/browse/ARCHETYPE-518) - - Archetype cannot be created from project if parent pom.xml evaluates system properties 
 * [ARCHETYPE-519](https://issues.apache.org/jira/browse/ARCHETYPE-519) - - archetype:generate with specified remote archetypeCatalog falls back to internal catalog 
 * [ARCHETYPE-520](https://issues.apache.org/jira/browse/ARCHETYPE-520) - - Following mirror configuration from settings.xml for downloading archetype metadata 
 * [ARCHETYPE-524](https://issues.apache.org/jira/browse/ARCHETYPE-524) - - CreateArchetypeFromProject creates extra folders if a folder contains both filtered and non-filtered files.

Improvement:

 * [ARCHETYPE-522](https://issues.apache.org/jira/browse/ARCHETYPE-522) - - Introduce MRM for archetype-maven-plugin ITs

Question:

 * [ARCHETYPE-521](https://issues.apache.org/jira/browse/ARCHETYPE-521) - - Cannot specify remote repository for generate project from archetype

Enjoy,

-The Apache Maven team
