---
title: "Apache Maven Invoker Plugin Version 3.0.0 Released"
date: 2017-05-24T07:51:00
lastmod: 2017-05-24T07:51
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Invoker Plugin, version 3.0.0](https://maven.apache.org/plugins/maven-invoker-plugin/).

The Invoker Plugin is used to run a set of Maven projects. The plugin can
determine whether each project execution is successful, and optionally can
verify the output generated from a given project execution.

This plugin is in particular handy to perform integration tests for other Maven
plugins. The Invoker Plugin can be employed to run a set of test projects that
have been designed to assert certain features of the plugin under test.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-invoker-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```


You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-invoker-plugin/download.cgi

<!-- more -->

[Release Notes - Maven Invoker Plugin - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317525&version=12330827)

Bugs:

 * [MINVOKER-147](https://issues.apache.org/jira/browse/MINVOKER-147) - setupIncludes / parallelThreads does not guarantee execution of setup*/pom.xml first.
 * [MINVOKER-150](https://issues.apache.org/jira/browse/MINVOKER-150) - Results from prior execution are included unless clean build
 * [MINVOKER-210](https://issues.apache.org/jira/browse/MINVOKER-210) - Remove link to non-existing Codehaus wiki
 * [MINVOKER-213](https://issues.apache.org/jira/browse/MINVOKER-213) - The plugin should escape any XML special characters (&<>) during interpolating XML files.

Improvements:

 * [MINVOKER-189](https://issues.apache.org/jira/browse/MINVOKER-189) - Update to java 1.6
 * [MINVOKER-193](https://issues.apache.org/jira/browse/MINVOKER-193) - Ensure that setupProjects are always executed first when using -Dinvoker.test
 * [MINVOKER-197](https://issues.apache.org/jira/browse/MINVOKER-197) - Upgrade maven-invoker-plugin to 2.0.0
 * [MINVOKER-199](https://issues.apache.org/jira/browse/MINVOKER-199) - Remove @Deprecated marked code and parameters
 * [MINVOKER-202](https://issues.apache.org/jira/browse/MINVOKER-202) - Remove unused ant dependency
 * [MINVOKER-204](https://issues.apache.org/jira/browse/MINVOKER-204) - Upgrade to Maven3 plugin
 * [MINVOKER-206](https://issues.apache.org/jira/browse/MINVOKER-206) - Upgrade maven-plugins parent to version 30
 * [MINVOKER-207](https://issues.apache.org/jira/browse/MINVOKER-207) - Remove @Deprecated marked code
 * [MINVOKER-208](https://issues.apache.org/jira/browse/MINVOKER-208) - Documentation about invoker properties related to usage of options/parameters should be improved
 * [MINVOKER-211](https://issues.apache.org/jira/browse/MINVOKER-211) - Some ITs can't be re-executed without clean
 * [MINVOKER-215](https://issues.apache.org/jira/browse/MINVOKER-215) - Use maven-artifact-transfer to support multiple Aether implementations
 * [MINVOKER-216](https://issues.apache.org/jira/browse/MINVOKER-216) - Prepare for Java9 (requires Groovy upgrade)
 * [MINVOKER-217](https://issues.apache.org/jira/browse/MINVOKER-217) - Upgrade to maven-invoker shared component release version 3.0.0
 * [MINVOKER-219](https://issues.apache.org/jira/browse/MINVOKER-219) - Change default value for cloneProjectsTo and cloneClean

New Feature:

 * [MINVOKER-205](https://issues.apache.org/jira/browse/MINVOKER-205) - add color messages

Tasks:

 * [MINVOKER-164](https://issues.apache.org/jira/browse/MINVOKER-164) - Maven Invoker still using -r option when such is no longer supported
 * [MINVOKER-212](https://issues.apache.org/jira/browse/MINVOKER-212) - Upgrade of plexus-interpolation to 1.24.
 * [MINVOKER-214](https://issues.apache.org/jira/browse/MINVOKER-214) - Allow indexed maven.version and os.familiy in invoker.properties
 * [MINVOKER-218](https://issues.apache.org/jira/browse/MINVOKER-218) - Change package to o.a.m.plugins

Test:

 * [MINVOKER-209](https://issues.apache.org/jira/browse/MINVOKER-209) - ITs fail (on Windows 10) when working directory contains space

Enjoy,

-The Apache Maven team
