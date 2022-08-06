---
title: "Apache Maven PDF Plugin Version 1.3 Released"
date: 2015-02-16T21:29:00
lastmod: 2015-02-16T21:29
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven PDF Plugin, version 1.3](http://maven.apache.org/plugins/maven-pdf-plugin/).

This plug-in allows you to generate a PDF version of your project's
documentation.

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-pdf-plugin</artifactId>
  <version>1.3</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven PDF Plugin - Version 1.3](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11932&version=18950)

Bugs:

 * [MPDF-66](https://issues.apache.org/jira/browse/MPDF-66) - custom properties are not filtered in .apt.vm
 * [MPDF-67](https://issues.apache.org/jira/browse/MPDF-67) - Update plexus-interpolation for thread-safety issues

Improvements:

 * [MPDF-60](https://issues.apache.org/jira/browse/MPDF-60) - Locale properties for Spanish and Galician
 * [MPDF-63](https://issues.apache.org/jira/browse/MPDF-63) - MavenProject/MavenSession Injection as a paremeter instead as a component.
 * [MPDF-68](https://issues.apache.org/jira/browse/MPDF-68) - Removed dependency org.codehaus.plexus:plexus-container-default:1.0-alpha-9
 * [MPDF-69](https://issues.apache.org/jira/browse/MPDF-69) - Removed unused dependency to maven-assembly-plugin
 * [MPDF-70](https://issues.apache.org/jira/browse/MPDF-70) - Upgrade maven-reporting-exec/maven-reporting-impl
 * [MPDF-71](https://issues.apache.org/jira/browse/MPDF-71) - Remove backward compatibility with Maven 2.0.X

Task:

 * [MPDF-61](https://issues.apache.org/jira/browse/MPDF-61) - Change Maven prerequisite to 2.2.1

Enjoy,

-The Apache Maven team
