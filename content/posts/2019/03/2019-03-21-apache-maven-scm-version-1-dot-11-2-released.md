---
title: "Apache Maven SCM Version 1.11.2 Released"
date: 2019-03-21T14:45:35
lastmod: 2019-03-21T14:45:35
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven SCM, version 1.11.2](https://maven.apache.org/scm/).

Maven SCM supports Maven 2.x plugins (e.g. maven-release-plugin) and other
tools (e.g. Continuum) by providing them with a common API for doing SCM
operations. You can look at the list of SCMs for more information on using
Maven SCM with your favorite SCM tool.

You can download the appropriate [sources etc. from the download page](https://maven.apache.org/scm/download.cgi).

<!-- more -->

[Release Notes - Maven SCM Version 1.11.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317828&version=12344638)

Bug:

 * [SCM-777](https://issues.apache.org/jira/browse/SCM-777) - scm:validate ignores scmCheckWorkingDirectoryUrl configuration in favor of system property

New Features:

 * [SCM-318](https://issues.apache.org/jira/browse/SCM-318) - Allow tags to be removed with Git implementation
 * [SCM-832](https://issues.apache.org/jira/browse/SCM-832) - maven-scm-provider-jgit should support SSH public key auth

Improvements:

 * [SCM-917](https://issues.apache.org/jira/browse/SCM-917) - Allow tags to be removed with Subversion implementation
 * [SCM-919](https://issues.apache.org/jira/browse/SCM-919) - Fix codecheck violations in JGit provider

Enjoy,

-The Apache Maven team
