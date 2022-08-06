---
title: "Apache Maven Changes Plugin Version 2.12 Released"
date: 2016-04-04T19:20:33
lastmod: 2016-04-04T19:20:33
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Changes Plugin, Version 2.12](https://maven.apache.org/plugins/maven-changes-plugin).


```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-changes-plugin</artifactId>
  <version>2.12</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven Changes Version 2.12](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317222&version=12330385).

Bugs:

 * [MCHANGES-346](https://issues.apache.org/jira/browse/MCHANGES-346) -  Update plexus-interpolation for thread safety issues
 * [MCHANGES-354](https://issues.apache.org/jira/browse/MCHANGES-354) -  The plugin should fail to execute if the changes.xml file cannot be parsed
 * [MCHANGES-358](https://issues.apache.org/jira/browse/MCHANGES-358) -  Remove dependency resolution ResolutionScope.TEST  from AnnouncementMojo
 * [MCHANGES-361](https://issues.apache.org/jira/browse/MCHANGES-361) -  GitHub issue ids don't appear in announcement.vm
 * [MCHANGES-364](https://issues.apache.org/jira/browse/MCHANGES-364) -  DueTo is always empty
 * [MCHANGES-368](https://issues.apache.org/jira/browse/MCHANGES-368) -  Report page has unneccessary indentations when having empty releases

Improvements:

 * [MCHANGES-305](https://issues.apache.org/jira/browse/MCHANGES-305) -  Provide support for private Github repos
 * [MCHANGES-345](https://issues.apache.org/jira/browse/MCHANGES-345) -  Upgrade maven-filtering to 1.2
 * [MCHANGES-347](https://issues.apache.org/jira/browse/MCHANGES-347) -  Upgrade maven-filtering to 1.3
 * [MCHANGES-355](https://issues.apache.org/jira/browse/MCHANGES-355) -  Upgrade plexus-utils to 3.0.22
 * [MCHANGES-356](https://issues.apache.org/jira/browse/MCHANGES-356) -  Upgrade org.eclipse.egit.github.core to 2.1.5
 * [MCHANGES-363](https://issues.apache.org/jira/browse/MCHANGES-363) -  Add support for opened issues in announcement Mojo


Enjoy,

-The Apache Maven team
