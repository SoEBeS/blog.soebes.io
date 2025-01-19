---
title: "Apache Maven Wagon Version 3.3.1 Released"
date: 2019-01-06T23:37:00
lastmod: 2019-01-06T23:37:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of 
[Apache Maven Wagon 3.3.1](https://maven.apache.org/wagon/).

Apache Maven Wagon is a transport abstraction that is used in Mavens
artifact and repository handling code.

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/wagon/download.cgi).

<!-- more -->

[Release Notes - Maven Wagon - Version 3.3.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318122&version=12344772)

Bugs:

 * [WAGON-538](https://issues.apache.org/jira/browse/WAGON-538) - Basic authentication fails if the password contains non-ASCII characters
 * [WAGON-543](https://issues.apache.org/jira/browse/WAGON-543) - wagon-ssh download hangs

Improvements:

 * [WAGON-537](https://issues.apache.org/jira/browse/WAGON-537) - Maven transfer speed of large artifacts is slow due to unsuitable buffer strategy
 * [WAGON-539](https://issues.apache.org/jira/browse/WAGON-539) - Explicitly register only supported auth schemes
 * [WAGON-540](https://issues.apache.org/jira/browse/WAGON-540) - Switch to modern-day encoding (UTF-8) of auth credentials

Task:

 * [WAGON-544](https://issues.apache.org/jira/browse/WAGON-544) - Work around JSch issue #122

Enjoy,

- The Apache Maven team

