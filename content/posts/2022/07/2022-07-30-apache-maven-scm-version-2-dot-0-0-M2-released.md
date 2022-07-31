---
title: "Apache Maven SCM Version 2.0.0-M2 Released"
date: 2022-07-30T20:18:18
lastmod: 2022-07-30T20:18:18
categories:
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven SCM, version 2.0.0-M2](https://maven.apache.org/scm/).

Maven SCM supports Maven plugins (for example maven-release-plugin) and other tools by providing
them with a common API for source code management operations. You can look at the list of SCMs for
more information on using Maven SCM with your favorite SCM tool.


[Release Notes - Maven SCM Version 2.0.0-M2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317828&version=12351598)

* Bugs:

  * [SCM-807](https://issues.apache.org/jira/browse/SCM-807) - JGit impl check-in fails unless the Maven project is in the working copy root
  * [SCM-913](https://issues.apache.org/jira/browse/SCM-913) - NPE on ChangeSet.toString() when no mergedRevisions are set
  * [SCM-945](https://issues.apache.org/jira/browse/SCM-945) - Support OpenSSH private keys with maven-scm-provider-jgit
  * [SCM-976](https://issues.apache.org/jira/browse/SCM-976) - GitExe changelog does not work in if the user has defined a custom format
  * [SCM-981](https://issues.apache.org/jira/browse/SCM-981) - Several integration tests are never run and fail if you do
  * [SCM-986](https://issues.apache.org/jira/browse/SCM-986) - SvnExe's SvnRemoteInfoCommand incorrectly implemented
  * [SCM-991](https://issues.apache.org/jira/browse/SCM-991) - GitDiffConsumer cannot parse moved files

* New Feature:
 
  * [SCM-977](https://issues.apache.org/jira/browse/SCM-977) - Support for retrieving tags from the changelog

* Improvements:
 
  * [SCM-925](https://issues.apache.org/jira/browse/SCM-925) - Implement RemoveCommand in maven-scm-provider-jgit with TCK test for all providers
  * [SCM-942](https://issues.apache.org/jira/browse/SCM-942) - No run-its, tck-local and tck-hg profiles
  * [SCM-943](https://issues.apache.org/jira/browse/SCM-943) - scm:check-local-modification does not support excludes
  * [SCM-992](https://issues.apache.org/jira/browse/SCM-992) - Support explicitly configured SSH private key for gitexe provider
  * [SCM-993](https://issues.apache.org/jira/browse/SCM-993) - Add tests for SSH private key-based authentication during checkout (clone)
  * [SCM-994](https://issues.apache.org/jira/browse/SCM-994) - Add JGit CredentialsProvider based on Plexus Interactivity API
  * [SCM-999](https://issues.apache.org/jira/browse/SCM-999) - Document provider IDs

* Test:
 
  * [SCM-989](https://issues.apache.org/jira/browse/SCM-989) - Tests fail if svn and/or git are not installed

* Tasks:
 
  * [SCM-979](https://issues.apache.org/jira/browse/SCM-979) - Replace Plexus Container Default with Sisu Plexus Shim
  * [SCM-980](https://issues.apache.org/jira/browse/SCM-980) - Remove code duplication in ListMojo
  * [SCM-983](https://issues.apache.org/jira/browse/SCM-983) - Drop SCM Logger in favor of SLF4J
  * [SCM-984](https://issues.apache.org/jira/browse/SCM-984) - Replace use of JUnit 3 PlexusTestCase with Junit 4
  * [SCM-985](https://issues.apache.org/jira/browse/SCM-985) - Drop/replace usage of Commons Lang 2
  * [SCM-995](https://issues.apache.org/jira/browse/SCM-995) - Upgrade JGit to 5.13.1 and leverage Apache Mina SSHD instead of JSch
  
* Dependency upgrades:
 
  * [SCM-978](https://issues.apache.org/jira/browse/SCM-978) - Upgrade Maven prerequisite to 3.2.5
  * [SCM-982](https://issues.apache.org/jira/browse/SCM-982) - Upgrade to Java 8


Enjoy,

-The Apache Maven team
