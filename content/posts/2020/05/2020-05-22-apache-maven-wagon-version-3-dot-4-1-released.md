---
title: "Apache Maven Wagon Version 3.4.1 Released"
date: 2020-05-22T21:13:25
lastmod: 2020-05-22T21:13:25
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of 
[Apache Maven Wagon 3.4.1](https://maven.apache.org/wagon/).

Apache Maven Wagon is a transport abstraction that is used in Mavens
artifact and repository handling code.

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/wagon/download.cgi).

<!-- more -->

[Release Notes - Maven Wagon - Version 3.4.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318122&version=12348210)

* Bugs:

  * [WAGON-591](https://issues.apache.org/jira/browse/WAGON-591) - Transfer event is not restarted when request is redirected
  * [WAGON-592](https://issues.apache.org/jira/browse/WAGON-592) - Wagon fails when compiled on Java 9+ and run on Java 8 due to JDK API breakage
  * [WAGON-594](https://issues.apache.org/jira/browse/WAGON-594) - http.route.default-proxy config property never passes protocol and port of proxy server

* Improvements:

  * [WAGON-595](https://issues.apache.org/jira/browse/WAGON-595) - Add configuration property 'http.protocol.handle-content-compression'
  * [WAGON-596](https://issues.apache.org/jira/browse/WAGON-596) - Add configuration property 'http.protocol.handle-uri-normalization'

* Task:

  * [WAGON-593](https://issues.apache.org/jira/browse/WAGON-593) - Remove non-existent cache header


Enjoy,

- The Apache Maven team

