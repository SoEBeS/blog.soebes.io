---
title: "Apache Maven Shade Plugin Version 3.3.0 Released"
date: 2022-03-29T23:23:23
lastmod: 2022-03-29T23:23:23
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shade Plugin, version 3.3.0](https://maven.apache.org/plugins/maven-shade-plugin/).

This plugin provides the capability to package the artifact in an uber-jar,
including its dependencies and to shade - i.e. rename - the packages of some of
the dependencies.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-shade-plugin</artifactId>
  <version>3.3.0</version>
</plugin>
```

You can download the [appropriate sources etc. from the download page][download-page]

<!-- more -->

 
[Release Notes - Maven Shade Plugin - Version 3.3.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?version=12348391&styleName=Text&projectId=12317921)

* Bugs:
 
  * [MSHADE-252](https://issues.apache.org/jira/browse/MSHADE-252) - shadeSourcesContent is broken when combined with partial relocation
  * [MSHADE-396](https://issues.apache.org/jira/browse/MSHADE-396) - Improve SourceContent Shading

* New Feature:

  * [MSHADE-36](https://issues.apache.org/jira/browse/MSHADE-36) - Add option to include dependency reduced POM instead of original one

* Improvements:

  * [MSHADE-321](https://issues.apache.org/jira/browse/MSHADE-321) - Always respect 'createDependencyReducedPom' flag
  * [MSHADE-371](https://issues.apache.org/jira/browse/MSHADE-371) - Update Shade Apache[Notice/LICENSE]ResourceTransformer to use also [NOTICE/LICENSE].md
  * [MSHADE-373](https://issues.apache.org/jira/browse/MSHADE-373) - Source transformation on source jar can break OSGi resolution due to duplicated bundle name
  * [MSHADE-382](https://issues.apache.org/jira/browse/MSHADE-382) - Add an option to skip execution
  * [MSHADE-391](https://issues.apache.org/jira/browse/MSHADE-391) - Do not modify class files, if nothing was relocated
  * [MSHADE-405](https://issues.apache.org/jira/browse/MSHADE-405) - ShowOverlapping Uses http instead of https

* Tasks:

  * [MSHADE-389](https://issues.apache.org/jira/browse/MSHADE-389) - Get rid of old baggage
  * [MSHADE-390](https://issues.apache.org/jira/browse/MSHADE-390) - Implement Sisu index transformer
  * [MSHADE-401](https://issues.apache.org/jira/browse/MSHADE-401) - Improve ServiceResourceTransformer
  * [MSHADE-412](https://issues.apache.org/jira/browse/MSHADE-412) - SimpleRelocator can fail in NPE, in particular with manifest transformer

* Dependency upgrades:

  * [MSHADE-379](https://issues.apache.org/jira/browse/MSHADE-379) - Support Java 16 - upgrade ASM to 9.0
  * [MSHADE-386](https://issues.apache.org/jira/browse/MSHADE-386) - Update JDependency to 2.6.0
  * [MSHADE-407](https://issues.apache.org/jira/browse/MSHADE-407) - Update ASM to 9.2 to support Java 17

Enjoy,

-The Apache Maven team

[download-page]: https://maven.apache.org/plugins/maven-shade-plugin/download.cgi
