---
title: "Mojo AspectJ Maven Plugin Version 1.7 Released"
date: 2014-09-14T10:37:00
lastmod: 2014-09-14T10:37:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Mojo team is pleased to announce the release of the
[AspectJ-Maven-Plugin version 1.7](http://mojo.codehaus.org/aspectj-maven-plugin/), 
which contains updates to the internal AspectJ toolset and several bug fixes.

The AspectJ-Maven-Plugin weaves AspectJ aspects into
your classes using the AspectJ compiler ("ajc").

To get this update, simply specify the version in your project's plugin
configuration:

```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>aspectj-maven-plugin</artifactId>
  <version>1.7</version>
</plugin>
```
<!-- more -->

[Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11781&version=19839)

Bugs:

 * [MASPECTJ-129](https://issues.apache.org/jira/browse/MASPECTJ-129) - Change name on site to "Mojo's AspectJ Maven Plugin"
 * [MASPECTJ-131](https://issues.apache.org/jira/browse/MASPECTJ-131) - JDK 8 Support
 * [MASPECTJ-133](https://issues.apache.org/jira/browse/MASPECTJ-133) - Integration tests JavaSourcesDefault and JavaSourcesList does not work on Windows
 * [MASPECTJ-135](https://issues.apache.org/jira/browse/MASPECTJ-135) - Some ITs could fail on Windows
 * [MASPECTJ-136](https://issues.apache.org/jira/browse/MASPECTJ-136) - Misconfigured dependencyResolution in AjcReportMojo

Improvements:

 * [MASPECTJ-132](https://issues.apache.org/jira/browse/MASPECTJ-132) - Upgrade to AspectJ version 1.8
 * [MASPECTJ-134](https://issues.apache.org/jira/browse/MASPECTJ-134) - Warnings via <warn> are reported without file name and line number


Enjoy,

The Mojo team.

Lennart Jörelid
