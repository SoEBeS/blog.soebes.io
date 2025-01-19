---
title: "Apache Maven Project Info Reports Plugin Version 2.8 Released"
date: 2015-01-11T14:11:00
lastmod: 2015-01-11T14:11:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Maven Project Info Reports Plugin, version 2.8.](http://maven.apache.org/plugins/maven-project-info-reports-plugin/).

This module generates browsable HTML pages from Java source code.


You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>>maven-project-info-reports-plugin</artifactId>
  <version>2.8</version>
</plugin>
```
<!-- more -->

[Release Notes - Maven Project Info Reports Plugin - Version 2.8](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317821&version=12331184):

Sub-task:

 * [MPIR-321](https://issues.apache.org/jira/browse/MPIR-321) - Disable/remove dev/contrib current time generation because it is broken


Bugs:

 * [MPIR-242](https://issues.apache.org/jira/browse/MPIR-242) - Incorrect translations list for GPL v3 (illegible letters for Catalan and Arabic)
 * [MPIR-247](https://issues.apache.org/jira/browse/MPIR-247) - "Comparison method violates its general contract!" while generating site
 * [MPIR-273](https://issues.apache.org/jira/browse/MPIR-273) - links to modules broken in modules.html of flat multimodule parent project
 * [MPIR-279](https://issues.apache.org/jira/browse/MPIR-279) - Wrong hyperlinks on index and modules page
 * [MPIR-280](https://issues.apache.org/jira/browse/MPIR-280) - Clarify that Web Access SCM link is not suitable for SCM checkout
 * [MPIR-281](https://issues.apache.org/jira/browse/MPIR-281) - Misleading SCM report title
 * [MPIR-289](https://issues.apache.org/jira/browse/MPIR-289) - DependenciesRenderer's FileDecimalFormat claims to use SI prefixes but calculated numbers do not match
 * [MPIR-293](https://issues.apache.org/jira/browse/MPIR-293) - On the team list report the "picUrl" property appears in the table, although no other properties are set for that team member
 * [MPIR-301](https://issues.apache.org/jira/browse/MPIR-301) - Update plexus-interpolation to 1.21 to avoid thread safety issues
 * [MPIR-303](https://issues.apache.org/jira/browse/MPIR-303) - Backslash in multi-module project
 * [MPIR-309](https://issues.apache.org/jira/browse/MPIR-309) - The Integration test mpir-229 breaks on Apache Jenkins
 * [MPIR-311](https://issues.apache.org/jira/browse/MPIR-311) - Specific SCM intro is missing if dev connection is given but not anonymous connection
 * [MPIR-313](https://issues.apache.org/jira/browse/MPIR-313) - License name is mandatory but it is not validated
 * [MPIR-319](https://issues.apache.org/jira/browse/MPIR-319) - Apache Ant has no dependency management but Apache Ivy has
 * [MPIR-325](https://issues.apache.org/jira/browse/MPIR-325) - JIRA report is not generated



Improvements:

 * [MPIR-263](https://issues.apache.org/jira/browse/MPIR-263) - improve minimum java requirement when m-compiler-p not explicitely configured: use default properties
 * [MPIR-265](https://issues.apache.org/jira/browse/MPIR-265) - Improve debug information in Dependencies report
 * [MPIR-287](https://issues.apache.org/jira/browse/MPIR-287) - Misleading report titles in Project Information overview
 * [MPIR-290](https://issues.apache.org/jira/browse/MPIR-290) - improve git support: remove directory info (after '.git') for "git clone"
 * [MPIR-291](https://issues.apache.org/jira/browse/MPIR-291) - if scm tag is present, propose "git clone --branch <tag>"
 * [MPIR-295](https://issues.apache.org/jira/browse/MPIR-295) - Enhancements on dependency convergence report
 * [MPIR-296](https://issues.apache.org/jira/browse/MPIR-296) - SBT Output not correct for dependencies
 * [MPIR-298](https://issues.apache.org/jira/browse/MPIR-298) - Continuous Integration support for Travis CI
 * [MPIR-299](https://issues.apache.org/jira/browse/MPIR-299) - Update to SCM 1.9.1
 * [MPIR-304](https://issues.apache.org/jira/browse/MPIR-304) - Update dependencies to the most recent usable versions
 * [MPIR-305](https://issues.apache.org/jira/browse/MPIR-305) - Upgrade Doxia + Site Tools to 1.6
 * [MPIR-306](https://issues.apache.org/jira/browse/MPIR-306) - Upgrade to maven-plugins version 25 to 26
 * [MPIR-310](https://issues.apache.org/jira/browse/MPIR-310) - Improve 'JDK Rev' label in dependencies report
 * [MPIR-314](https://issues.apache.org/jira/browse/MPIR-314) - Upgrade to maven-plugins version 26 to 27
 * [MPIR-315](https://issues.apache.org/jira/browse/MPIR-315) - Replace org.apache.maven.shared:maven-doxia-tools with org.apache.maven.doxia:doxia-integration-tools
 * [MPIR-316](https://issues.apache.org/jira/browse/MPIR-316) - Removed dependency org.codehaus.plexus:plexus-container-default:1.0-alpha-9
 * [MPIR-322](https://issues.apache.org/jira/browse/MPIR-322) - Dependencies Files Details should reuse installed jars instead of target/classes
 * [MPIR-326](https://issues.apache.org/jira/browse/MPIR-326) - Remove notes to ancient version of this plugin or the Site Plugin in the apt files

New Features:

 * [MPIR-288](https://issues.apache.org/jira/browse/MPIR-288) - Add a skipEmptyReport option
 * [MPIR-297](https://issues.apache.org/jira/browse/MPIR-297) - add a skip parameter


Tasks:

 * [MPIR-317](https://issues.apache.org/jira/browse/MPIR-317) - Remove FAQ entry for Recaptcha Mailhide
 * [MPIR-318](https://issues.apache.org/jira/browse/MPIR-318) - Link time zone FAQ entry to the POM reference documentation
 * [MPIR-324](https://issues.apache.org/jira/browse/MPIR-324) - Clean up unused and used undeclared dependencies


Enjoy,

-The Apache Maven team 
