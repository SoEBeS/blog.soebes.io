---
title: "Mojo Appassembler Maven Plugin Version 1.9 Released"
date: 2014-11-26T20:15:00
lastmod: 2014-11-26T20:15:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Mojo Team is pleased to announce the new release 
of the [Appassembler Maven Plugin 1.9](http://mojo.codehaus.org/appassembler/appassembler-maven-plugin/).

The Application Assembler Plugin is a Maven plugin for generating
scripts for starting java applications.
All dependencies and the artifact of the project itself are placed in
a generated Maven repository in a defined assemble directory.
All artifacts (dependencies + the artifact from the project) are added
to the classpath in the generated bin scripts.

You can use the following Maven coordinates to get the latest version via Maven Central:

```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>appassembler-maven-plugin</artifactId>
  <version>1.9</version>
</plugin>
```

<!-- more -->

[Release Notes](https://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11780&version=19848):

Bug:

 * [MAPPASM-238](https://issues.apache.org/jira/browse/MAPPASM-238) - wrapperLogFile

Improvements:

 * [MAPPASM-239](https://issues.apache.org/jira/browse/MAPPASM-239) - Update version of plexus-archiver to 2.5
 * [MAPPASM-240](https://issues.apache.org/jira/browse/MAPPASM-240) - Update version of plexus-archiver to 2.6.3
 * [MAPPASM-241](https://issues.apache.org/jira/browse/MAPPASM-241) - Upgrade plexus-utils to 3.0.20
 * [MAPPASM-242](https://issues.apache.org/jira/browse/MAPPASM-242) - Upgrade to plexus-archiver 2.7.1
 * [MAPPASM-243](https://issues.apache.org/jira/browse/MAPPASM-243) - Upgrade plexus-interpolation to 1.21
 * [MAPPASM-244](https://issues.apache.org/jira/browse/MAPPASM-244) - Upgrade to mojo parent version 34
 * [MAPPASM-246](https://issues.apache.org/jira/browse/MAPPASM-246) - Use maven-dependency-plugin version which is defined by the parent.
 * [MAPPASM-247](https://issues.apache.org/jira/browse/MAPPASM-247) - Upgrade maven-filtering to 1.3
 * [MAPPASM-248](https://issues.apache.org/jira/browse/MAPPASM-248) - Wrapper script fails on Solaris / SunOS 5.2 when the LC_TYPE is set to a non-single byte locale

Task:

 * [MAPPASM-236](https://issues.apache.org/jira/browse/MAPPASM-236) - Removing plexus-container-default dependency

Enjoy,

The Mojo team.
