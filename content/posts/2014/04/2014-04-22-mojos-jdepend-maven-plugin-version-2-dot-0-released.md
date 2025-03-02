---
title: "Mojo's JDepend Maven Plugin Version 2.0 - Released"
date: 2014-04-22T21:33:00
lastmod: 2014-04-22T21:33:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Mojo team is pleased to announce the release of the 
[JDepend Maven Plugin version 2.0](http://mojo.codehaus.org/jdepend-maven-plugin/).

This plugin produces a nicely formatted metrics report based on your project.

To get this update, simply specify the version in your project's plugin configuration: 

```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>jdepend-maven-plugin</artifactId>
  <version>2.0</version>
</plugin>
```
<!-- more -->

[Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=13231&version=20128)

Bug:

 * [MJDEPEND-8](https://issues.apache.org/jira/browse/MJDEPEND-8) - Add missing scm entry in pom

Improvements:

 * [MJDEPEND-6](https://issues.apache.org/jira/browse/MJDEPEND-6) - Stabilize Plugin IT's by using a setup project
 * [MJDEPEND-9](https://issues.apache.org/jira/browse/MJDEPEND-9) - Improve Usage page
 * [MJDEPEND-10](https://issues.apache.org/jira/browse/MJDEPEND-10) - State that plugin uses the JDepend library and include link
 * [MJDEPEND-11](https://issues.apache.org/jira/browse/MJDEPEND-11) - Change the license text.

New Feature:

 * [MJDEPEND-1](https://issues.apache.org/jira/browse/MJDEPEND-1) - Add a -no-fork goal

Enjoy,

The Mojo team.
