---
title: "Apache Maven Plugin Tools Version 3.4 Released"
date: 2015-01-05T21:06:00
lastmod: 2015-01-05T21:06
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Plugin Tools, version 3.4](http://maven.apache.org/plugin-tools/).

The Maven Plugin Tools contains the necessary tools to generate rebarbative 
content like descriptor, help and documentation.

http://maven.apache.org/plugin-tools/maven-plugin-plugin/

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-plugin-plugin</artifactId>
  <version>3.4</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Plugin Tools - Version 3.4](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317820&version=12331168)

Bugs:

 * [MPLUGIN-238](https://issues.apache.org/jira/browse/MPLUGIN-238) - HelpMojo phases fails when using java-annotations
 * [MPLUGIN-266](https://issues.apache.org/jira/browse/MPLUGIN-266) - Incorrect warning comment about deprecated @component usage for maven objects
 * [MPLUGIN-270](https://issues.apache.org/jira/browse/MPLUGIN-270) - Deprecation of classical Maven objects as components is broken when using Javadoc tags
 * [MPLUGIN-272](https://issues.apache.org/jira/browse/MPLUGIN-272) - Descriptor goal fail with java 8 and interface with default method: upgrade QDox
 * [MPLUGIN-274](https://issues.apache.org/jira/browse/MPLUGIN-274) - generated HelpMojo source contains tabs and other errors reported by Checkstyle
 * [MPLUGIN-284](https://issues.apache.org/jira/browse/MPLUGIN-284) - don't try to extract mojos from Beanshell by default
 * [MPLUGIN-286](https://issues.apache.org/jira/browse/MPLUGIN-286) - Failure during build via mvn -Prun-its clean verfiy based on missing dependencies

Improvements:

 * [MPLUGIN-267](https://issues.apache.org/jira/browse/MPLUGIN-267) - document how to change descriptor phase instead of running it twice with skipErrorNoDescriptorsFound
 * [MPLUGIN-279](https://issues.apache.org/jira/browse/MPLUGIN-279) - improve jdk requirement when m-compiler-p not explicitely configured: use default properties
 * [MPLUGIN-281](https://issues.apache.org/jira/browse/MPLUGIN-281) - Removed dependency plexus-container-default:1.0-alpha-9- stable-1
 * [MPLUGIN-283](https://issues.apache.org/jira/browse/MPLUGIN-283) - Upgrade plexus-utils to 3.0.20

Tasks:

 * [MPLUGIN-278](https://issues.apache.org/jira/browse/MPLUGIN-278) - Upgrade to Maven 2.2.1 minimum requirement
 * [MPLUGIN-280](https://issues.apache.org/jira/browse/MPLUGIN-280) - remove xdoc goal since the content is generated during report
 * [MPLUGIN-285](https://issues.apache.org/jira/browse/MPLUGIN-285) - change "java" extractor id to "java-javadoc" to match "java-annotations"
 * [MPLUGIN-287](https://issues.apache.org/jira/browse/MPLUGIN-287) - refactoring: consistent package name for extractor and javadoc

Enjoy,

-The Apache Maven team

