---
title: "Apache Maven Project Info Reports Plugin Version 3.0.0 Released"
date: 2018-06-27T21:30:35
lastmod: 2018-06-27T21:30:35
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Maven Project Info Reports Plugin version 3.0.0](https://maven.apache.org/plugins/maven-project-info-reports-plugin/)

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-project-info-reports-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

You can download the appropriate sources etc. from the 
[download page](https://maven.apache.org/plugins/maven-project-info-reports-plugin/download.cgi).

<!-- more --> 

[Release Notes - Maven Project Info Reports Plugin - Version 3.0.0]()


Bugs:

 * [MPIR-348](https://issues.apache.org/jira/browse/MPIR-348) - Usage of HTTP in web site for git-scm.com resources cause redirects to HTTPS
 * [MPIR-349](https://issues.apache.org/jira/browse/MPIR-349) - Bad modules links in 'index/modules' reports when 'distributionManagement.site.url' comes from settings.xml
 * [MPIR-359](https://issues.apache.org/jira/browse/MPIR-359) - Generated links for Mercurial SCM are broken
 * [MPIR-362](https://issues.apache.org/jira/browse/MPIR-362) - Dependency Management report doesn't exclude system scoped dependencies
 * [MPIR-365](https://issues.apache.org/jira/browse/MPIR-365) - Failed tests on Java 9 due to error with keytool plugin "keytool: not found"
 * [MPIR-370](https://issues.apache.org/jira/browse/MPIR-370) - Upgrade transitive BCEL to 6.2 to avoid org.apache.bcel.classfile.ClassFormatException

Improvements:

 * [MPIR-352](https://issues.apache.org/jira/browse/MPIR-352) - Use protocol-agnostic URL for Gravatar
 * [MPIR-358](https://issues.apache.org/jira/browse/MPIR-358) - Add GitHub for issue management
 * [MPIR-366](https://issues.apache.org/jira/browse/MPIR-366) - Drop Maven 2 support

Tasks:

 * [MPIR-323](https://issues.apache.org/jira/browse/MPIR-323) - Align Mojo class names, goals and output names
 * [MPIR-345](https://issues.apache.org/jira/browse/MPIR-345) - Upgrade to Doxia 1.8
 * [MPIR-346](https://issues.apache.org/jira/browse/MPIR-346) - Upgrade to Doxia Sitetools 1.8.1
 * [MPIR-347](https://issues.apache.org/jira/browse/MPIR-347) - Upgrade to Java 6
 * [MPIR-350](https://issues.apache.org/jira/browse/MPIR-350) - Upgrade of plexus-interpolation to 1.24.
 * [MPIR-353](https://issues.apache.org/jira/browse/MPIR-353) - Upgrade parent to version 30
 * [MPIR-354](https://issues.apache.org/jira/browse/MPIR-354) - Upgrade Maven Site Plugin to version 3.5.1 for ITs
 * [MPIR-355](https://issues.apache.org/jira/browse/MPIR-355) - Upgrade dependencies which are code- and testsafe
 * [MPIR-356](https://issues.apache.org/jira/browse/MPIR-356) - Deprecate not used methods in ProjectInfoReportUtils
 * [MPIR-367](https://issues.apache.org/jira/browse/MPIR-367) - Remove Dependency Repository Locations from dependency report
 * [MPIR-368](https://issues.apache.org/jira/browse/MPIR-368) - Upgrade to Java 7
 * [MPIR-369](https://issues.apache.org/jira/browse/MPIR-369) - Drop Commons Lang for System builtins
 * [MPIR-372](https://issues.apache.org/jira/browse/MPIR-372) - Remove fields duplicating parent class members

Dependency upgrades:

 * [MPIR-361](https://issues.apache.org/jira/browse/MPIR-361) - Upgrade parent to 31
 * [MPIR-363](https://issues.apache.org/jira/browse/MPIR-363) - Upgrade dependencies to latest versions


Enjoy,

-The Apache Maven team 
