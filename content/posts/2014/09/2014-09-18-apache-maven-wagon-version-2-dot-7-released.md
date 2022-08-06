---
title: "Apache Maven Wagon Version 2.7 Released"
date: 2014-09-18T07:53:00
lastmod: 2014-09-18T07:53
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Wagon, Version 2.7](http://maven.apache.org/wagon/)

Maven Wagon is a transport abstraction that is used in Maven's
artifact and repository handling code.

<!-- more -->
[Release Notes - Apache Maven Wagon Version 2.7](http://jira.codehaus.org/secure/ReleaseNote.jspa?version=20560&styleName=Text&projectId=10335&Create=Create)


New Feature:

 * [WAGON-420](https://issues.apache.org/jira/browse/WAGON-420) - Implements RFC 6585 (return code 429: too many requests)

Bugs:

 * [WAGON-407](https://issues.apache.org/jira/browse/WAGON-407) - wagon-maven-plugin ITs fail with missing class: org.apache.commons.io.IOUtils
 * [WAGON-418](https://issues.apache.org/jira/browse/WAGON-418) - Changes from WAGON-388 broke the WebDAV Wagon
 * [WAGON-419](https://issues.apache.org/jira/browse/WAGON-419) - HTTP wagons incorrectly encode blank space in URLs causing resources to be uploaded/looked up with a "+" sign


Enjoy,

-The Apache Maven team
