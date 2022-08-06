---
title: "Apache Maven Wagon Version 3.1.0 Released"
date: 2018-06-08T08:15:00
lastmod: 2018-06-08T08:15
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of 
[Apache Maven Wagon 3.1.0](https://maven.apache.org/wagon/).

Apache Maven Wagon is a transport abstraction that is used in Mavens
artifact and repository handling code.

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/wagon/download.cgi

<!-- more -->

[Release Notes - Maven Wagon - Version 3.1.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318122&version=12341302)

Bugs:
  
 * [WAGON-452](https://issues.apache.org/jira/browse/WAGON-452) - RelaxedTrustStrategy does not handle multiple certificates
 * [WAGON-493](https://issues.apache.org/jira/browse/WAGON-493) - Maven wagon-scm documentation is erroneous
 * [WAGON-495](https://issues.apache.org/jira/browse/WAGON-495) - Fix checkoutDirectory leak
 * [WAGON-496](https://issues.apache.org/jira/browse/WAGON-496) - site-deploy using wagon-ssh broke in 2.12 because of the fix for WAGON-465
 * [WAGON-497](https://issues.apache.org/jira/browse/WAGON-497) - ScmWagon#put() strips parent dirs from the target path if they already exist in SCM
 * [WAGON-498](https://issues.apache.org/jira/browse/WAGON-498) - ScmWagon should work in binary and shallow mode when possible
 * [WAGON-499](https://issues.apache.org/jira/browse/WAGON-499) - apache-rat complains about Eclipse .checkstyle files
 * [WAGON-503](https://issues.apache.org/jira/browse/WAGON-503) - Directory gives out of date error in putDirectory() to a non-empty Subversion repo
 * [WAGON-518](https://issues.apache.org/jira/browse/WAGON-518) - AbstractHttpClientWagon#putFromStream() reads entire content to memory

New Feature:

 * [WAGON-501](https://issues.apache.org/jira/browse/WAGON-501) - Add ScmGitExeWagonTest

Improvement:

 * [WAGON-482](https://issues.apache.org/jira/browse/WAGON-482) - Use sparse files in HugeFileDownloadTest with Java 7

Task:

 * [WAGON-504](https://issues.apache.org/jira/browse/WAGON-504) - switch from Git-WIP to Gitbox

Dependency upgrades:

 * [WAGON-505](https://issues.apache.org/jira/browse/WAGON-505) - Upgrade SLF4J to 1.7.25
 * [WAGON-506](https://issues.apache.org/jira/browse/WAGON-506) - Upgrade Jetty to 9.2.24.v20180105
 * [WAGON-507](https://issues.apache.org/jira/browse/WAGON-507) - Upgrade Plexus Utils to 3.1.0
 * [WAGON-508](https://issues.apache.org/jira/browse/WAGON-508) - Upgrade JUnit to 4.12
 * [WAGON-509](https://issues.apache.org/jira/browse/WAGON-509) - Upgrade Commons IO to 2.6
 * [WAGON-510](https://issues.apache.org/jira/browse/WAGON-510) - Upgrade parent to 31
 * [WAGON-511](https://issues.apache.org/jira/browse/WAGON-511) - Upgrade Plexus Container Default to 1.7.1
 * [WAGON-512](https://issues.apache.org/jira/browse/WAGON-512) - Upgrade EasyMock to 3.5.1
 * [WAGON-513](https://issues.apache.org/jira/browse/WAGON-513) - Upgrade HttpClient to 4.5.5
 * [WAGON-514](https://issues.apache.org/jira/browse/WAGON-514) - Upgrade HttpCore to 4.4.9
 * [WAGON-515](https://issues.apache.org/jira/browse/WAGON-515) - Upgrade JSoup to 1.11.2
 * [WAGON-516](https://issues.apache.org/jira/browse/WAGON-516) - Upgrade Jackrabbit WebDAV to 2.14.4
 * [WAGON-519](https://issues.apache.org/jira/browse/WAGON-519) - Upgrade to SCM 1.10.0


Enjoy,

-The Apache Maven team

