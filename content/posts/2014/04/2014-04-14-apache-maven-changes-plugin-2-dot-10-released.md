---
title: "Apache Maven Changes Plugin 2.10 Released"
date: 2014-04-14T21:56:00
lastmod: 2014-04-14T21:56
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Maven team is pleased to announce the release of 
the [Apache Maven Changes Plugin, version 2.10](http://maven.apache.org/plugins/maven-changes-plugin/).

Creates a release history for inclusion into the site and assists in generating an announcement mail.


You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-changes-plugin</artifactId>
  <version>2.10</version>
</plugin>
```
<!-- more -->

[Release Notes - Apache Maven Changes Plugin - Version 2.10](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11212&version=19130&styleName=Html)

Bugs:

 * [MCHANGES-329](https://issues.apache.org/jira/browse/MCHANGES-329) RestJiraDownloader does not handle components, type, updated or version
 * [MCHANGES-326](https://issues.apache.org/jira/browse/MCHANGES-326) announcement-mail does not respect templateEncoding
 * [MCHANGES-324](https://issues.apache.org/jira/browse/MCHANGES-324) Plugin logs into JIRA, but doesn't seem to make the status request with the session
 * [MCHANGES-323](https://issues.apache.org/jira/browse/MCHANGES-323) Incompatible Jira Issue Management URL suggested in documentation
 * [MCHANGES-280](https://issues.apache.org/jira/browse/MCHANGES-280) announcement-mail broken when using the announcementFile parameter
 * [MCHANGES-266](https://issues.apache.org/jira/browse/MCHANGES-266) It is not possible to disable the reports in submodules

Improvements:

 * [MCHANGES-328](https://issues.apache.org/jira/browse/MCHANGES-328) Allow setting useJql parameter from the command line
 * [MCHANGES-303](https://issues.apache.org/jira/browse/MCHANGES-303) Add an option to enable tls
 * [MCHANGES-282](https://issues.apache.org/jira/browse/MCHANGES-282) New parameter releaseDateLocale in changes-check goal

New Feature:

 * [MCHANGES-292](https://issues.apache.org/jira/browse/MCHANGES-292) announcement-generate goal doesn't respect useJql parameter

Task:

 * [MCHANGES-332](https://issues.apache.org/jira/browse/MCHANGES-332) Update to maven-reporting-impl 2.2
 * [MCHANGES-331](https://issues.apache.org/jira/browse/MCHANGES-331) Update to Doxia 1.4 and Doxia Sitetools 1.4


Enjoy,

-The Maven team
