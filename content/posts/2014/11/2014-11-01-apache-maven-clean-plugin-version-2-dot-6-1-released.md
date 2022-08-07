---
title: "Apache Maven Clean Plugin Version 2.6.1 Released"
date: 2014-11-01T13:57:00
lastmod: 2014-11-01T13:57
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Clean Plugin, version 2.6.1](http://maven.apache.org/plugins/maven-clean-plugin/).

The Clean Plugin is used when you want to remove files generated at build-time
in a project's directory.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-clean-plugin</artifactId>
  <version>2.6.1</version>
</plugin>
```

[Release Notes - Maven Clean Plugin - Version 2.6.1](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11128&version=20685)

Bugs:

 * [MCLEAN-47](https://issues.apache.org/jira/browse/MCLEAN-47) - On windows if there are junctions on the cleaned directories, clean deletes `.*` resources under junction's target along with junction.
 * [MCLEAN-55](https://issues.apache.org/jira/browse/MCLEAN-55) - maven clean seems to use old java.io API to clean the target directory
 * [MCLEAN-58](https://issues.apache.org/jira/browse/MCLEAN-58) - Maven Clean Plugin ignores followSymLinks parameter on Windows

Improvements:

 * [MCLEAN-59](https://issues.apache.org/jira/browse/MCLEAN-59) - Upgrade maven-plugins-testing-harness from 1.1 to 1.3
 * [MCLEAN-60](https://issues.apache.org/jira/browse/MCLEAN-60) - Fixed Checkstyle reported errors / warnings
 * [MCLEAN-61](https://issues.apache.org/jira/browse/MCLEAN-61) - Upgrade to org.apache.maven.plugins:maven-plugins:26

Enjoy,

-The Apache Maven team
