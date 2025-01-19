---
title: "Apache Maven Resources Plugin Version 3.0.0 Released"
date: 2016-05-21T20:30:00
lastmod: 2016-05-21T20:30:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Resources Plugin, Version 3.0.0](https://maven.apache.org/plugins/maven-resources-plugin).


Important Note: 

 * Maven 3.X only
 * JDK 6 minimum requirement


```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-resources-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven Resources Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317827&version=12331252)


Bugs:

 * [MRESOURCES-190](https://issues.apache.org/jira/browse/MRESOURCES-190) - Regression: The plugin is now silently ignoring .gitignore files.
 * [MRESOURCES-191](https://issues.apache.org/jira/browse/MRESOURCES-191) - Updated plexus-interpolation to fix possible concurrency issues
 * [MRESOURCES-218](https://issues.apache.org/jira/browse/MRESOURCES-218) - List of examples not complete on first page
 * [MRESOURCES-219](https://issues.apache.org/jira/browse/MRESOURCES-219) - Link to wiki page should be removed now that Codehaus is shut down
 * [MRESOURCES-221](https://issues.apache.org/jira/browse/MRESOURCES-221) - Additional practices for Filtering example page

Improvements:

 * [MRESOURCES-99](https://issues.apache.org/jira/browse/MRESOURCES-99) - ${project.baseUri} and ${maven.build.timestamp} are not expanded by resource filtering
 * [MRESOURCES-185](https://issues.apache.org/jira/browse/MRESOURCES-185) - Update version of plexus-utils to 3.0.18
 * [MRESOURCES-186](https://issues.apache.org/jira/browse/MRESOURCES-186) - Improve error handling based on Mark invalid
 * [MRESOURCES-187](https://issues.apache.org/jira/browse/MRESOURCES-187) - New parameter in the plugin to be able to use filename filtering.
 * [MRESOURCES-188](https://issues.apache.org/jira/browse/MRESOURCES-188) - Upgrade to Maven 3.0 compatiblity + JDK 1.6
 * [MRESOURCES-192](https://issues.apache.org/jira/browse/MRESOURCES-192) - Upgrade maven-filtering to 1.3
 * [MRESOURCES-194](https://issues.apache.org/jira/browse/MRESOURCES-194) - Upgrade to maven-plugins parent version 26
 * [MRESOURCES-195](https://issues.apache.org/jira/browse/MRESOURCES-195) - Upgrade maven-plugin-testing-harness to 1.3
 * [MRESOURCES-197](https://issues.apache.org/jira/browse/MRESOURCES-197) - Upgrade to maven-plugins parent version 27
 * [MRESOURCES-201](https://issues.apache.org/jira/browse/MRESOURCES-201) - Add Parameter for not ignore directories with a leading dot.
 * [MRESOURCES-202](https://issues.apache.org/jira/browse/MRESOURCES-202) - Upgrade plexus-utils to 3.0.22
 * [MRESOURCES-207](https://issues.apache.org/jira/browse/MRESOURCES-207) - Change package to org.apache.maven.plugins to prevent conflict with Maven Core
 * [MRESOURCES-208](https://issues.apache.org/jira/browse/MRESOURCES-208) - Remove @Deprecated marked code
 * [MRESOURCES-213](https://issues.apache.org/jira/browse/MRESOURCES-213) - Moved code into maven-filtering
 * [MRESOURCES-214](https://issues.apache.org/jira/browse/MRESOURCES-214) - Added requireProjects to resources/testResources mojo
 * [MRESOURCES-216](https://issues.apache.org/jira/browse/MRESOURCES-216) - Upgrade maven-filtering to 3.1.0
 * [MRESOURCES-217](https://issues.apache.org/jira/browse/MRESOURCES-217) - Updated plexus-utils to 3.0.23
 * [MRESOURCES-220](https://issues.apache.org/jira/browse/MRESOURCES-220) - Encoding example should mention recommended default project.build.sourceEncoding property
 * [MRESOURCES-222](https://issues.apache.org/jira/browse/MRESOURCES-222) - Remove param properties that doesn't make sense for CLI usage
 * [MRESOURCES-223](https://issues.apache.org/jira/browse/MRESOURCES-223) - Define the escapeString by default with "\"

New Feature:

 * [MRESOURCES-203](https://issues.apache.org/jira/browse/MRESOURCES-203) - Add a skip option to skip the execution of resources goal

Reporters of this Release:

 * Laurent TOURREAU [MRESOURCES-203]
 * Felix Köhler [MRESOURCES-201]
 * Josue Abarca [MRESOURCES-190]
 * Thomas Champagne [MRESOURCES-99]

Many thanks to all reporters/contributors/testers of this release.

Enjos,
 
-The Apache Maven team
