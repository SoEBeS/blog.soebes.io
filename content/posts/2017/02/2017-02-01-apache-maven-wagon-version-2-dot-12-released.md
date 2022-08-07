---
title: "Apache Maven Wagon Version 2.12 Released"
date: 2017-02-01T09:30:00
lastmod: 2017-02-01T09:30
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of 
[Apache Maven Wagon 2.12](https://maven.apache.org/wagon/).

Apache Maven Wagon is a transport abstraction that is used in Maven's
artifact and repository handling code.

[Release Notes - Maven Wagon - Version 2.12](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318122&version=12338924).

Bugs:

 * [WAGON-408](https://issues.apache.org/jira/browse/WAGON-408) - ITs for #testSecuredGet() fail with Windows
 * [WAGON-426](https://issues.apache.org/jira/browse/WAGON-426) - Fingerprints loss in known_hosts
 * [WAGON-439](https://issues.apache.org/jira/browse/WAGON-439) - Jsch issue in java 1.7 and Kerberos-enabled ssh servers
 * [WAGON-449](https://issues.apache.org/jira/browse/WAGON-449) - CLIENT not changed after setting PoolingHttpClientConnectionManager
 * [WAGON-469](https://issues.apache.org/jira/browse/WAGON-469) - wagon-http does not enable Expect-Continue by default
 * [WAGON-475](https://issues.apache.org/jira/browse/WAGON-475) - TransferEvent GET used instead of PUT and vice versa
 * [WAGON-476](https://issues.apache.org/jira/browse/WAGON-476) - HTTP Provider follows redirects on PUT and may change request method
 * [WAGON-479](https://issues.apache.org/jira/browse/WAGON-479) - Preemptive auth with HTTP Provider may fail because BasicScheme is added as completed=true to the AuthCache
 * [WAGON-480](https://issues.apache.org/jira/browse/WAGON-480) - Non-threadsafe HttpClientContext is shared between threaded use of HttpClientWagon
 * [WAGON-481](https://issues.apache.org/jira/browse/WAGON-481) - Sensitive (auth) information is not cleared when HttpClientWagon is disconnected
 * [WAGON-485](https://issues.apache.org/jira/browse/WAGON-485) - ScpWagon parses file size to int causing overflow for large files

Improvements:

 * [WAGON-455](https://issues.apache.org/jira/browse/WAGON-455) - Upgrade of 'plexus-utils' to version 3.0.23.
 * [WAGON-458](https://issues.apache.org/jira/browse/WAGON-458) - Implementation for FTPS
 * [WAGON-460](https://issues.apache.org/jira/browse/WAGON-460) - Upgrade plexus-utils to 3.0.24
 * [WAGON-464](https://issues.apache.org/jira/browse/WAGON-464) - Upgrade jsch dependency to 0.1.51 or newer to support ECDSA host key typess
 * [WAGON-465](https://issues.apache.org/jira/browse/WAGON-465) - wagon-ssh: add API option to check for remote exit code
 * [WAGON-466](https://issues.apache.org/jira/browse/WAGON-466) - wagon-ssh: Better error message when ssh account is locked
 * [WAGON-467](https://issues.apache.org/jira/browse/WAGON-467) - wagon-ssh: options to configure hostKeyChecking and PreferredAuthentications
 * [WAGON-472](https://issues.apache.org/jira/browse/WAGON-472) - Upgrade Commons IO to 2.5
 * [WAGON-484](https://issues.apache.org/jira/browse/WAGON-484) - Update WebDAV Provider naming

Tasks:

 * [WAGON-389](https://issues.apache.org/jira/browse/WAGON-389) - Incorrect versions on gh-pages
 * [WAGON-447](https://issues.apache.org/jira/browse/WAGON-447) - Remove Commons Lang 2 for a few cases
 * [WAGON-457](https://issues.apache.org/jira/browse/WAGON-457) - Wagon tests fail on Windows because Subversion crashes on a test repo
 * [WAGON-470](https://issues.apache.org/jira/browse/WAGON-470) - Update TLS certificates for HTTPS tests
 * [WAGON-471](https://issues.apache.org/jira/browse/WAGON-471) - Clean up dependency mess (reported by dependency:analyze)
 * [WAGON-473](https://issues.apache.org/jira/browse/WAGON-473) - Don't abuse IllegalArgumentException to intercept null input
 * [WAGON-474](https://issues.apache.org/jira/browse/WAGON-474) - Upgrade and revise all tests for Jetty 8
 * [WAGON-483](https://issues.apache.org/jira/browse/WAGON-483) - Upgrade SLF4J to 1.7.22


Enjoy,

-The Apache Maven team

