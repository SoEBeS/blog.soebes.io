---
title: "Apache Maven Checkstyle Plugin Version 2.14 Released"
date: 2015-02-05T21:56:00
lastmod: 2015-02-05T21:56:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Maven team is pleased to announce the release of the 
[Apache Maven Checkstyle Plugin, version 2.14](http://maven.apache.org/plugins/maven-checkstyle-plugin/).

Generates a report on violations of code style and optionally fails the build
if violations are detected.


You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-checkstyle-plugin</artifactId>
  <version>2.14</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven Checkstyle Plugin - Version 2.14](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11127&version=20631)

Bugs:

 * [MCHECKSTYLE-255](https://issues.apache.org/jira/browse/MCHECKSTYLE-255) First checkstyle error is not printed in the console ouput
 * [MCHECKSTYLE-254](https://issues.apache.org/jira/browse/MCHECKSTYLE-254) Update plexus-interpolation to avoid thread safety issues
 * [MCHECKSTYLE-249](https://issues.apache.org/jira/browse/MCHECKSTYLE-249) ITs failing when building on Windows from distribution prepared on Unix

Improvements:

 * [MCHECKSTYLE-283](https://issues.apache.org/jira/browse/MCHECKSTYLE-283) Move maven_checks.xml and maven-header.txt away from the plugin
 * [MCHECKSTYLE-282](https://issues.apache.org/jira/browse/MCHECKSTYLE-282) add info on ruleset used in report intro
 * [MCHECKSTYLE-263](https://issues.apache.org/jira/browse/MCHECKSTYLE-263) Removed dependency plexus-container-default:1.0-alpha-9-stable-1
 * [MCHECKSTYLE-262](https://issues.apache.org/jira/browse/MCHECKSTYLE-262) Upgrade to maven-plugins parent version 27
 * [MCHECKSTYLE-257](https://issues.apache.org/jira/browse/MCHECKSTYLE-257) display content/documentation of Checkstyle configurations predefined by maven-checkstyle-plugin in plugin's documentation site
 * [MCHECKSTYLE-256](https://issues.apache.org/jira/browse/MCHECKSTYLE-256) add Java package information to output, instead of class name only
 * [MCHECKSTYLE-251](https://issues.apache.org/jira/browse/MCHECKSTYLE-251) Upgrade to Checkstyle 5.8

Tasks:

 * [MCHECKSTYLE-281](https://issues.apache.org/jira/browse/MCHECKSTYLE-281) fail if deprecated parameters are used and display update instructions
 * [MCHECKSTYLE-280](https://issues.apache.org/jira/browse/MCHECKSTYLE-280) add documentation on upgrading Checkstyle at runtime
 * [MCHECKSTYLE-276](https://issues.apache.org/jira/browse/MCHECKSTYLE-276) remove RedundantThrows rule from default configs
 * [MCHECKSTYLE-274](https://issues.apache.org/jira/browse/MCHECKSTYLE-274) remove Avalon configuration since the Avalon project is retired


Enjoy,

-The Maven team

