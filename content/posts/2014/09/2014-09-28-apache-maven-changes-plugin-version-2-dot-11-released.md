---
title: "Apache Maven Changes Plugin Version 2.11 Released"
date: 2014-09-28T12:39:00
lastmod: 2014-09-28T12:39
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Changes Plugin, Version 2.11](http://maven.apache.org/plugins/maven-changes-plugin).


```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-changes-plugin</artifactId>
  <version>2.11</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven Changes Version 2.11](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11212&version=20323)

Sub-task:

 * [MCHANGES-269](https://issues.apache.org/jira/browse/MCHANGES-269) - Move anchor location in changes.xml to header

Bugs:

 * [MCHANGES-307](https://issues.apache.org/jira/browse/MCHANGES-307) - Check for whitespace on fixVersionIds and statusIds
 * [MCHANGES-334](https://issues.apache.org/jira/browse/MCHANGES-334) - RestJiraDownloader doesn't honor proxy settings
 * [MCHANGES-336](https://issues.apache.org/jira/browse/MCHANGES-336) - Enum value for type "remove" is missing
 * [MCHANGES-337](https://issues.apache.org/jira/browse/MCHANGES-337) - Improve language style in model and report generator

Improvements:

 * [MCHANGES-338](https://issues.apache.org/jira/browse/MCHANGES-338) - Remove redundant anchors set on headings
 * [MCHANGES-341](https://issues.apache.org/jira/browse/MCHANGES-341) - Externalize JIRA server timeout values to the configuration section
 * [MCHANGES-343](https://issues.apache.org/jira/browse/MCHANGES-343) - Update maven-reporting-impl to 2.3

Task:

 * [MCHANGES-342](https://issues.apache.org/jira/browse/MCHANGES-342) - Removed dependency plexus-container-default:1.0-alpha-9-stable-1


Enjoy,

-The Apache Maven team
