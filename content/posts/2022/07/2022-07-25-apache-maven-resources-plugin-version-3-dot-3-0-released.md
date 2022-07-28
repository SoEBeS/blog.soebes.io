---
title: "Apache Maven Resources Plugin Version 3.3.0 Released"
date: 2022-07-25T22:52:52
lastmod: 2022-07-25T22:52:52
categories:
  - Maven
  - Maven-Plugins
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Resources Plugin, Version 3.3.0](https://maven.apache.org/plugins/maven-resources-plugin).

The Resources Plugin handles the copying of project resources to the output
directory. There are two different kinds of resources: main resources and test
resources. The difference is that the main resources are the resources
associated to the main source code while the test resources are associated to
the test source code.

Thus, this allows the separation of resources for the main source code and its
unit tests.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-resources-plugin</artifactId>
  <version>3.3.0</version>
</plugin>
```

You can download the appropriate sources etc. from the download page:
 
https://maven.apache.org/plugins/maven-resources-plugin/download.cgi

<!-- more -->

[Release Notes - Apache Maven Resources Version 3.3.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317827&version=12348676)

* Bugs:
 
  * [MRESOURCES-237](https://issues.apache.org/jira/browse/MRESOURCES-237) - Resource plugin's handling of symbolic links changed in 3.0.x, broke existing behavior
  * [MRESOURCES-265](https://issues.apache.org/jira/browse/MRESOURCES-265) - Resource copying not using specified encoding
  * [MRESOURCES-268](https://issues.apache.org/jira/browse/MRESOURCES-268) - java.nio.charset.MalformedInputException: Input length = 1
  * [MRESOURCES-269](https://issues.apache.org/jira/browse/MRESOURCES-269) - Symlinks cause copying resources to fail
  * [MRESOURCES-273](https://issues.apache.org/jira/browse/MRESOURCES-273) - Filtering of Maven properties with long names is not working after transition from 2.6 to 3.2.0
  * [MRESOURCES-275](https://issues.apache.org/jira/browse/MRESOURCES-275) - valid location for directory parameter is always required

* New Feature:
 
  * [MRESOURCES-250](https://issues.apache.org/jira/browse/MRESOURCES-250) - Add ability to flatten folder structure into target directory when copying resources

* Tasks:
 
  * [MRESOURCES-277](https://issues.apache.org/jira/browse/MRESOURCES-277) - Update plugin (requires Maven 3.2.5+)
  * [MRESOURCES-283](https://issues.apache.org/jira/browse/MRESOURCES-283) - Require Java 8

* Dependency upgrades:

  * [MRESOURCES-282](https://issues.apache.org/jira/browse/MRESOURCES-282) - Upgrade maven-plugin parent to 36
  * [MRESOURCES-286](https://issues.apache.org/jira/browse/MRESOURCES-286) - Upgrade Maven Filtering to 3.3.0


Enjoy,

-The Apache Maven team
