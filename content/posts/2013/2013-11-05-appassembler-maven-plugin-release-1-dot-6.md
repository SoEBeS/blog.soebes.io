---
title: "Appassembler Maven Plugin 1.6 released"
date: 2013-11-05T20:02:00
lastmod: 2013-11-05T20:02:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The new release of the [Appassembler Maven Plugin 1.6](http://mojo.codehaus.org/appassembler/appassembler-maven-plugin/)
contains a number of bug fixes, improvements and a new feature.

<!-- more -->

The following bugs are fixed:

 * [MAPPASM-188](https://issues.apache.org/jira/browse/MAPPASM-188) - Empty CLASSPATH_PREFIX adds current directory to classpath
 * [MAPPASM-204](https://issues.apache.org/jira/browse/MAPPASM-204) - Support Solaris x86_64 - Commercial JSW only
 * [MAPPASM-208](https://issues.apache.org/jira/browse/MAPPASM-208) - binFolder configuration is not used to generate path to environment setup file.
 * [MAPPASM-211](https://issues.apache.org/jira/browse/MAPPASM-211) - Null pointer exception when providing empty ```<commandLineArgument>```.

The following improvements:

 * [MAPPASM-59](https://issues.apache.org/jira/browse/MAPPASM-59) - appassembler chmod and bat file creation
 * [MAPPASM-202](https://issues.apache.org/jira/browse/MAPPASM-202) - Deprecate program.name in favor of program.id
 * [MAPPASM-207](https://issues.apache.org/jira/browse/MAPPASM-207) - Add CONFIGDIR environment variable for configurationDirectory property in scripts
 * [MAPPASM-209](https://issues.apache.org/jira/browse/MAPPASM-209) - Allow ```<generateRepository>false</generateRepository>``` for JSW daemons

New Feature

 * [MAPPASM-206](https://issues.apache.org/jira/browse/MAPPASM-206) - Support endorsed lib folder

The change log can visited on the following 
[site](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11780&version=19575).
