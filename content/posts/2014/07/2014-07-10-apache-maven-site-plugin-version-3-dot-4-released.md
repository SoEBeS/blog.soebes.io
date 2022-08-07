---
title: "Apache Maven Site Plugin Version 3.4 Released"
date: 2014-07-10T21:32:00
lastmod: 2014-07-10T21:32
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Site Plugin, version 3.4](http://maven.apache.org/plugins/maven-site-plugin/).

The Site Plugin is used to generate a site for the project. The generated site
also includes the project's reports that were configured in the POM.

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-site-plugin</artifactId>
  <version>3.4</version>
</plugin>
```
<!-- more -->
[Release Notes - Maven Site Plugin - Version 3.4](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11146&styleName=Html&version=19228)

Bugs:

 * [MSITE-121](https://issues.apache.org/jira/browse/MSITE-121) - Generated html files contain inconsistent new lines
 * [MSITE-665](https://issues.apache.org/jira/browse/MSITE-665) - Site plugin version 3.2 seems to modify a project's classpath.
 * [MSITE-716](https://issues.apache.org/jira/browse/MSITE-716) - update doxia-integration-tools to 1.6
 * [MSITE-718](https://issues.apache.org/jira/browse/MSITE-718) - upgrade Doxia base to 1.6
 * [MSITE-719](https://issues.apache.org/jira/browse/MSITE-719) - upgrade Doxia Site Tools to 1.6

Improvements:

 * [MSITE-454](https://issues.apache.org/jira/browse/MSITE-454) - Don't use aggregator mojos for default report set
 * [MSITE-516](https://issues.apache.org/jira/browse/MSITE-516) - reportPlugins should/could inherit more information from pluginManagement
 * [MSITE-711](https://issues.apache.org/jira/browse/MSITE-711) - add report's goal name to output
 * [MSITE-713](https://issues.apache.org/jira/browse/MSITE-713) - improve "Error during page generation" error message
 * [MSITE-714](https://issues.apache.org/jira/browse/MSITE-714) - display statistics about Doxia documents rendered
 * [MSITE-720](https://issues.apache.org/jira/browse/MSITE-720) - upgrade maven-reporting-exec to 1.2
 * [MSITE-722](https://issues.apache.org/jira/browse/MSITE-722) - align display info on executed reports

Task:

 * [MSITE-715](https://issues.apache.org/jira/browse/MSITE-715) - refactor: split Mojos in sub-packages


Enjoy,

-The Apache Maven team
