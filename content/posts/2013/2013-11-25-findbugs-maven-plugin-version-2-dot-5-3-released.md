---
title: "FindBugs Maven Plugin Version 2.5.3 released"
date: 2013-11-25T20:31:00
lastmod: 2013-11-25T20:31
categories:
  - Maven
  - News
  - Maven-Plugin-Releases
---

The Mojo team is pleased to announce the release of the 
[FindBugs Maven Plugin version 2.5.3](http://mojo.codehaus.org/findbugs-maven-plugin/)
FindBugs uses static analysis to inspect Java bytecode for occurrences
of bug patterns.

<!-- more -->

To get this update, simply specify the version in your project's
plugin configuration:

```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>findbugs-maven-plugin</artifactId>
  <version>2.5.3</version>
</plugin>
```

[Release Notes - Mojo's FindBugs Maven Plugin - Version 2.5.3](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11701&version=18737)

The following issues have been solved:

 * [MFINDBUGS-174](https://issues.apache.org/jira/browse/MFINDBUGS-174) - Incorrect exclude files used
 * [MFINDBUGS-176](https://issues.apache.org/jira/browse/MFINDBUGS-176) - Update to plexus-resources 1.0-alpha-7 beacuse 1.0-alpha-4 causes ConcurrentModificationException in parallel builds
 * [MFINDBUGS-178](https://issues.apache.org/jira/browse/MFINDBUGS-178) - Maven 2.2.1: org.apache.xerces.parsers.XIncludeAwareParserConfiguration cannot be cast to org.apache.xerces.xni.parser.XMLParserConfiguration executing findbugs during the build and site lifecycle
 * [MFINDBUGS-183](https://issues.apache.org/jira/browse/MFINDBUGS-183) - Empty Report when using 2 includeFilterFiles

The following improvements:

 * [MFINDBUGS-175](https://issues.apache.org/jira/browse/MFINDBUGS-175) - Update to Findbugs version 2.0.2
 * [MFINDBUGS-177](https://issues.apache.org/jira/browse/MFINDBUGS-177) - Expose "onlyAnalyze" on the commandline.


