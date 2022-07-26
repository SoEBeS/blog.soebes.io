---
title: "Apache Maven Wagon Version 3.3.2 Released"
date: 2019-02-08T23:43:12
lastmod: 2019-02-08T23:43:12
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of 
[Apache Maven Wagon 3.3.2](https://maven.apache.org/wagon/).

Apache Maven Wagon is a transport abstraction that is used in Mavens
artifact and repository handling code.

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/wagon/download.cgi).

<!-- more -->

[Release Notes - Maven Wagon - Version 3.3.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318122&version=12344885)

Bugs:

 * [WAGON-545](https://issues.apache.org/jira/browse/WAGON-545) - Connection reset while downloading artifacts in cloud environment (Azure)
 * [WAGON-546](https://issues.apache.org/jira/browse/WAGON-546) - HttpWagon TTL not set
 * [WAGON-554](https://issues.apache.org/jira/browse/WAGON-554) - Tests with checkin rely on global Git config

Tasks:

 * [WAGON-552](https://issues.apache.org/jira/browse/WAGON-552) - Replace Commons Codec with Plexus Utils
 * [WAGON-555](https://issues.apache.org/jira/browse/WAGON-555) - Use java.nio.file.Path for URI construction of file:// URIs in tests
 * [WAGON-556](https://issues.apache.org/jira/browse/WAGON-556) - Skip parsing of user info for file:// URLs

Dependency upgrades:

 * [WAGON-547](https://issues.apache.org/jira/browse/WAGON-547) - Upgrade HttpCore to 4.4.11
 * [WAGON-548](https://issues.apache.org/jira/browse/WAGON-548) - Upgrade HttpClient to 4.5.7
 * [WAGON-549](https://issues.apache.org/jira/browse/WAGON-549) - Upgrade Commons Net to 3.6
 * [WAGON-550](https://issues.apache.org/jira/browse/WAGON-550) - Upgrade JSoup to 1.11.3
 * [WAGON-551](https://issues.apache.org/jira/browse/WAGON-551) - Uprade JSch to 0.1.55
 * [WAGON-553](https://issues.apache.org/jira/browse/WAGON-553) - Upgrade Plexus Classworlds to 2.6.0

Enjoy,

- The Apache Maven team

