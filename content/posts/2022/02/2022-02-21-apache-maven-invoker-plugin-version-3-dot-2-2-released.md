---
title: "Apache Maven Invoker Plugin Version 3.2.2 Released"
date: 2022-02-20T20:15:57
lastmod: 2022-02-20T20:15:57
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Invoker Plugin, version 3.2.2](https://maven.apache.org/plugins/maven-invoker-plugin/).

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
  <version>3.2.2</version>
</plugin>
```


You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-invoker-plugin/download.cgi

<!-- more -->

[Release Notes - Maven Invoker Plugin - Version 3.2.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?version=12346157&styleName=Text&projectId=12317525)


* Bugs:
 
  * [MINVOKER-195](https://issues.apache.org/jira/browse/MINVOKER-195) - Fast Build Configuration and mirrors in local settings.xml
  * [MINVOKER-260](https://issues.apache.org/jira/browse/MINVOKER-260) - Option 'streamLogs' does not work properly for logs from intepreter
  * [MINVOKER-264](https://issues.apache.org/jira/browse/MINVOKER-264) - Errors during maven site build
  * [MINVOKER-265](https://issues.apache.org/jira/browse/MINVOKER-265) - option 'streamLogs' does not work properly for logs from groovy intepreter

* New Features:
 
  * [MINVOKER-250](https://issues.apache.org/jira/browse/MINVOKER-250) - streamLogsOnFailures - parameter/option
  * [MINVOKER-251](https://issues.apache.org/jira/browse/MINVOKER-251) - Allow options parallelThreads depends on available cores
  * [MINVOKER-255](https://issues.apache.org/jira/browse/MINVOKER-255) - support environmentVariable in invokerPropertiesFile
  * [MINVOKER-268](https://issues.apache.org/jira/browse/MINVOKER-268) - invoker:run skips invocation when the sources are unmodified

* Improvements:

  * [MINVOKER-257](https://issues.apache.org/jira/browse/MINVOKER-257) - Test code should meet checkstyle requirements
  * [MINVOKER-262](https://issues.apache.org/jira/browse/MINVOKER-262) - GitHub Action confirm build on multiple jdk
  * [MINVOKER-272](https://issues.apache.org/jira/browse/MINVOKER-272) - use Files.createTempDirectory(...) instead of custom code around File.createTempFile(...)

* Dependency upgrades:
 
  * [MINVOKER-254](https://issues.apache.org/jira/browse/MINVOKER-254) - Upgrade Groovy 2.4.21
  * [MINVOKER-256](https://issues.apache.org/jira/browse/MINVOKER-256) - upgrade parent pom to latest version - 34
  * [MINVOKER-259](https://issues.apache.org/jira/browse/MINVOKER-259) - upgrade Doxia Sitetools to 1.9.2 to remove dependency on Struts
  * [MINVOKER-267](https://issues.apache.org/jira/browse/MINVOKER-267) - Update maven-script-interpreter to 1.3
  * [MINVOKER-276](https://issues.apache.org/jira/browse/MINVOKER-276) - Update maven-invoker to 3.1.0
  * [MINVOKER-277](https://issues.apache.org/jira/browse/MINVOKER-277) - Require Maven 3.1.1

Enjoy,

-The Apache Maven team
