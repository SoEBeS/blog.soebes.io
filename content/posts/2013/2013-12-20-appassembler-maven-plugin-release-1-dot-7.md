---
title: "Appassembler Maven Plugin 1.7 released"
date: 2013-12-20T23:00:00
lastmod: 2013-12-20T23:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Mojo Team is pleased to announce the new release 
of the [Appassembler Maven Plugin 1.7](http://mojo.codehaus.org/appassembler/appassembler-maven-plugin/)
which contains a number of bug fixes, improvements and a new feature.

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
     <version>1.7</version>
</plugin>
```

<!-- more -->

[Release Notes for Release 1.7](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11780&version=19642)

Fixed Bug:

 * [MAPPASM-215](https://issues.apache.org/jira/browse/MAPPASM-215) - The environments variables in the generated batch file are not local.

Improvements:

 * [MAPPASM-195](https://issues.apache.org/jira/browse/MAPPASM-195) - Support other methods of JSW integration than WrapperSimpleApp
 * [MAPPASM-210](https://issues.apache.org/jira/browse/MAPPASM-210) - Allow copyConfigurationDirectory for both script and jsw
 * [MAPPASM-216](https://issues.apache.org/jira/browse/MAPPASM-216) - Add option to pre insert a config fragment into wrapper.conf

New Features:

 * [MAPPASM-78](https://issues.apache.org/jira/browse/MAPPASM-78) - Add support for JSW integration method 2
 * [MAPPASM-214](https://issues.apache.org/jira/browse/MAPPASM-214) - Add ability to configure chkconfig run level

The Mojo Team.
