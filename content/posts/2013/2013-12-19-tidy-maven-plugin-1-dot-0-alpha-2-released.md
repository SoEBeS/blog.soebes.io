---
title: "Tidy Maven Plugin 1.0-alpha-2 Released"
date: 2013-12-19T19:00:05
lastmod: 2013-12-19T19:00:05
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Mojo team is pleased to announce another pre-release of the 
[Tidy Maven Plugin, version 1.0-alpha-2](http://mojo.codehaus.org/tidy-maven-plugin/).


The Tidy Plugin is used when you want to sort the sections of a pom.xml
into the canonical order.


```
mvn tidy:pom
```

<!-- more -->

[Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11062&version=19847)

Bugs fixed:

 * [MOJO-1942](https://issues.apache.org/jira/browse/MOJO-1942) - Whitespace gets mangled
 * [MOJO-1943](https://issues.apache.org/jira/browse/MOJO-1943) - Additional tabs inserted
 * [MOJO-1989](https://issues.apache.org/jira/browse/MOJO-1989) - tidy:pom drops some CR chars in new line on Windows

Improvements:

 * [MOJO-1939](https://issues.apache.org/jira/browse/MOJO-1939) - Preserve tabs while sorting pom
 * [MOJO-1983](https://issues.apache.org/jira/browse/MOJO-1983) - Add xml declaration


Enjoy,
The Mojo team.
