---
title: "Apache Maven Shade Plugin Version 3.0.0 Released"
date: 2017-01-30T09:30:15
lastmod: 2017-01-30T09:30:15
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shade Plugin, version 3.0.0](https://maven.apache.org/plugins/maven-shade-plugin/).

This plugin provides the capability to package the artifact in an uber-jar,
including its dependencies and to shade - i.e. rename - the packages of some of
the dependencies.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-shade-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/plugins/maven-shade-plugin/download.cgi).


<!-- more -->

You can download the [appropriate sources etc. from the download page](https://maven.apache.org/plugins/maven-shade-plugin/download.cgi).
 
[Release Notes - Maven Shade Plugin - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317921&version=12331395).

Improvements:

 * [MSHADE-219](https://issues.apache.org/jira/browse/MSHADE-219) - Update XSD location of POM to the new one in POMWriter
 * [MSHADE-224](https://issues.apache.org/jira/browse/MSHADE-224) - Preserve last modified time in resources files.
 * [MSHADE-225](https://issues.apache.org/jira/browse/MSHADE-225) - Writing output only once
 * [MSHADE-232](https://issues.apache.org/jira/browse/MSHADE-232) - Introduce ResourceBundleAppendingTransformer
 * [MSHADE-241](https://issues.apache.org/jira/browse/MSHADE-241) - Groovy extension module transformer
 * [MSHADE-246](https://issues.apache.org/jira/browse/MSHADE-246) - Switch to maven-artifact-transfer to support both Aether implementations

Bugs:

 * [MSHADE-182](https://issues.apache.org/jira/browse/MSHADE-182) - ServicesResourceTransformer incorrectly ignores given Relocators
 * [MSHADE-223](https://issues.apache.org/jira/browse/MSHADE-223) - Endless processing when promoteTransitiveDependencies=true
 * [MSHADE-228](https://issues.apache.org/jira/browse/MSHADE-228) - Shade can incorrectly re-write an InterfaceMethodRef in the constant pool to a MethodRef
 * [MSHADE-237](https://issues.apache.org/jira/browse/MSHADE-237) - ServicesResourceTransformer relocates excluded classes
 * [MSHADE-239](https://issues.apache.org/jira/browse/MSHADE-239) - Shaded Source JAR not following finalName pattern
 * [MSHADE-240](https://issues.apache.org/jira/browse/MSHADE-240) - support relocation pom.properties and pom.xml descriptors in shaded jars

Task:

 * [MSHADE-222](https://issues.apache.org/jira/browse/MSHADE-222) - Dependency updates.



Enjoy,

-The Apache Maven team

