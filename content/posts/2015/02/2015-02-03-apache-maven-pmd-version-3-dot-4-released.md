---
title: "Apache Maven PMD Version 3.4 Released"
date: 2015-02-03T21:43:00
lastmod: 2015-02-03T21:43
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Maven PMD Plugin, version 3.4](http://maven.apache.org/plugins/maven-pmd-plugin/).

This module generates browsable HTML pages from Java source code.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>>maven-pmd-plugin</artifactId>
  <version>3.4</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven PMD Plugin - Version 3.4](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11140&version=20775).

Bugs:

 * [MPMD-165](https://issues.apache.org/jira/browse/MPMD-165) - target/site/pmd.html created with invalid charset=${outputEncoding}
 * [MPMD-171](https://issues.apache.org/jira/browse/MPMD-171) - Rule properties are ignored when run under MPMD
 * [MPMD-174](https://issues.apache.org/jira/browse/MPMD-174) - Using a permalink from Sonar as a ruleset does not work
 * [MPMD-187](https://issues.apache.org/jira/browse/MPMD-187) - Report is generated even when skip is true
 * [MPMD-193](https://issues.apache.org/jira/browse/MPMD-193) - CPD's sourceEncoding not set since PMD 5.1.1 is used
 * [MPMD-200](https://issues.apache.org/jira/browse/MPMD-200) - Regression: Rule:UnusedPrivateMethod

Improvements:

 * [MPMD-129](https://issues.apache.org/jira/browse/MPMD-129) - Maven PMD plugin does not have suppressMarker property that is available in PMD itself
 * [MPMD-170](https://issues.apache.org/jira/browse/MPMD-170) - Have targetJdk default to maven.compiler.target
 * [MPMD-197](https://issues.apache.org/jira/browse/MPMD-197) - Update dependencies and resolve minor Java warnings
 * [MPMD-199](https://issues.apache.org/jira/browse/MPMD-199) - Support PMD functionality on JSP files

Tasks:

 * [MPMD-195](https://issues.apache.org/jira/browse/MPMD-195) - Upgrade to PMD 5.2.2 as soon as it is available
 * [MPMD-198](https://issues.apache.org/jira/browse/MPMD-198) - Upgrade to PMD 5.2.3 as soon as it is available
 * [MPMD-201](https://issues.apache.org/jira/browse/MPMD-201) - Clean up unused and used undeclared dependencies
 * [MPMD-202](https://issues.apache.org/jira/browse/MPMD-202) - Remove notes to ancient version of this plugin and expired information
 * [MPMD-203](https://issues.apache.org/jira/browse/MPMD-203) - Upgrade to MPIR 2.8

Enjoy,

-The Apache Maven team 
