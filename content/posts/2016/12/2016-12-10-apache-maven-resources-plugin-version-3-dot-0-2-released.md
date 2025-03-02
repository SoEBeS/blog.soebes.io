---
title: "Apache Maven Resources Plugin Version 3.0.2 Released"
date: 2016-12-10T19:45:00
lastmod: 2016-12-10T19:45:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Resources Plugin, Version 3.0.2](https://maven.apache.org/plugins/maven-resources-plugin).


Important Note: 

 * Maven 3.X only
 * JDK 6 minimum requirement


```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-resources-plugin</artifactId>
  <version>3.0.2</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven Resources Version 3.0.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317827&version=12336059)

Bugs:

 * [MRESOURCES-233](https://issues.apache.org/jira/browse/MRESOURCES-233) - Upgrade of plexus-interpolation 1.24 to correct escaping issue.
 * [MRESOURCES-234](https://issues.apache.org/jira/browse/MRESOURCES-234) - Upgrade of commons-io to 2.5 and correction of invalid scope.

Task:

 * [MRESOURCES-235](https://issues.apache.org/jira/browse/MRESOURCES-235) - Revert enabling escaping by default introduced in 3.0.0.


Enjos,
 
-The Apache Maven team
