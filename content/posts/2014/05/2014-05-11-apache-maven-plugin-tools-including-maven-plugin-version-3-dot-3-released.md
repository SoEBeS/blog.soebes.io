---
title: "Apache Maven Plugin Tools (including Maven Plugin) Version 3.3 Released"
date: 2014-05-11T18:05:00
lastmod: 2014-05-11T18:05
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the Apache Maven
Plugin Tools, version 3.3.

The [Maven Plugin Tools](http://maven.apache.org/plugin-tools/) contains the
necessary tools to be able to produce Maven Plugins in scripting languages and
to generate rebarbative content like descriptor, help and documentation.

The [Maven Plugin
Plugin](http://maven.apache.org/plugin-tools/maven-plugin-plugin/) is used to
create a Maven plugin descriptor for any Mojo's found in the source tree, to
include in the JAR. It is also used to generate report files for the Mojos as
well as for updating the plugin registry, the artifact metadata and generating
a generic help goal.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-plugin-plugin</artifactId>
  <version>3.3</version>
</plugin>
```

<!-- more -->

Release Notes - Maven Plugin Tools - Version 3.3

Bugs:

 * [MPLUGIN-191](https://issues.apache.org/jira/browse/MPLUGIN-191) - plugin-info.html is not created
 * [MPLUGIN-234](https://issues.apache.org/jira/browse/MPLUGIN-234) - Extreme amounts of debug logging
 * [MPLUGIN-235](https://issues.apache.org/jira/browse/MPLUGIN-235) - Doc example incorrectly states that plexus-utils is needed as a dependency
 * [MPLUGIN-236](https://issues.apache.org/jira/browse/MPLUGIN-236) - Value for Mojo's 'defaultPhase' parameter is incorrectly a string in examples
 * [MPLUGIN-239](https://issues.apache.org/jira/browse/MPLUGIN-239) - Execute goal does not passes from mojos.xml pluginMetadata
 * [MPLUGIN-242](https://issues.apache.org/jira/browse/MPLUGIN-242) - NullPointerException in MojoClassVisitor.visit()
 * [MPLUGIN-244](https://issues.apache.org/jira/browse/MPLUGIN-244) - Help mojo generates Javadoc, which is not accepted by JDK 8 doclint
 * [MPLUGIN-245](https://issues.apache.org/jira/browse/MPLUGIN-245) - @Parameter property names are not written to the plugin- help.xml file
 * [MPLUGIN-248](https://issues.apache.org/jira/browse/MPLUGIN-248) - XML-Namespace in ITs for ant-based mojos are wrong.
 * [MPLUGIN-255](https://issues.apache.org/jira/browse/MPLUGIN-255) - Generated HelpMojo doesn't close resource stream
 * [MPLUGIN-258](https://issues.apache.org/jira/browse/MPLUGIN-258) - IT failures with Jdk 8 (EA) 
 * [MPLUGIN-260](https://issues.apache.org/jira/browse/MPLUGIN-260) - Plugin that uses annotations in Java 8 source can't generate descriptor
 * [MPLUGIN-262](https://issues.apache.org/jira/browse/MPLUGIN-262) - Generated HelpMojo doesn't display default values and user properties.

Improvements:

 * [MPLUGIN-237](https://issues.apache.org/jira/browse/MPLUGIN-237) - JavaDoc WARNING on generated HelpMojo class.
 * [MPLUGIN-246](https://issues.apache.org/jira/browse/MPLUGIN-246) - Clarify that super class must also use annotations
 * [MPLUGIN-264](https://issues.apache.org/jira/browse/MPLUGIN-264) - Allow other packaging types

New Features:

 * [MPLUGIN-259](https://issues.apache.org/jira/browse/MPLUGIN-259) - @Parameter name="xxx" to set bean property name different from class' field

Tasks:

 * [MPLUGIN-233](https://issues.apache.org/jira/browse/MPLUGIN-233) - remove InstanciationStrategy enum from annotations
 * [MPLUGIN-265](https://issues.apache.org/jira/browse/MPLUGIN-265) - remove deprecated API since introduction of PluginToolsRequest

Wishes:

 * [MPLUGIN-249](https://issues.apache.org/jira/browse/MPLUGIN-249) - give snippets to show use of expressions to get Maven objects
 * [MPLUGIN-250](https://issues.apache.org/jira/browse/MPLUGIN-250) - since element is not in version 1.0.0 of plugin- metadata: should create a new version of the descriptor
 * [MPLUGIN-257](https://issues.apache.org/jira/browse/MPLUGIN-257) - deprecate classical Maven objects as components
 * [MPLUGIN-261](https://issues.apache.org/jira/browse/MPLUGIN-261) - sort goals in generated plugin.xml

Enjoy,

-The Apache Maven team
