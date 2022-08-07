---
title: "Apache Maven SCM Version 1.9.5 Released"
date: 2016-07-06T20:05:00
lastmod: 2016-07-06T20:05
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven SCM, version 1.9.5](https://maven.apache.org/scm/).

Maven SCM supports Maven 2.x plugins (e.g. maven-release-plugin) and other
tools (e.g. Continuum) by providing them with a common API for doing SCM
operations. You can look at the list of SCMs for more information on using
Maven SCM with your favorite SCM tool.

<!-- more -->

[Release Notes - Maven SCM Version 1.9.5](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317828&version=12331366)


Bugs:

 * [SCM-682](https://issues.apache.org/jira/browse/SCM-682) - Maven release fails when releasing from a named branch
 * [SCM-734](https://issues.apache.org/jira/browse/SCM-734) - SVN branching fails with svn+ssh://username@host URL
 * [SCM-772](https://issues.apache.org/jira/browse/SCM-772) - GitStatusConsumer does not properly handle quoted paths output from GitStatusCommand
 * [SCM-795](https://issues.apache.org/jira/browse/SCM-795) - scm output parsing is too aggressive on stderr
 * [SCM-806](https://issues.apache.org/jira/browse/SCM-806) - JGit impl should look for repositories in parent directories
 * [SCM-812](https://issues.apache.org/jira/browse/SCM-812) - Jazz SCM Alias Id's roll over to zero, not 1000 as advertised.
 * [SCM-813](https://issues.apache.org/jira/browse/SCM-813) - SVN fails when trying to create a branch with nested directories
 * [SCM-816](https://issues.apache.org/jira/browse/SCM-816) - Can't bootstrap or checkout project with child module
 * [SCM-817](https://issues.apache.org/jira/browse/SCM-817) - Jgit provider exposes password if it contains special characters
 * [SCM-819](https://issues.apache.org/jira/browse/SCM-819) - Integrity blame command fixes.
 * [SCM-820](https://issues.apache.org/jira/browse/SCM-820) - Correctly strip quotes in GitStatusConsumer
 * [SCM-822](https://issues.apache.org/jira/browse/SCM-822) - Fixed SVN branching with svn+ssh://username@host URL.
 * [SCM-825](https://issues.apache.org/jira/browse/SCM-825) - provide JGitInfoCommand
 * [SCM-827](https://issues.apache.org/jira/browse/SCM-827) - Scm tests fail on Windows because Subversion crashes on loading tck.dump
 * [SCM-828](https://issues.apache.org/jira/browse/SCM-828) - support @ in username of scm url

Improvements:

 * [SCM-775](https://issues.apache.org/jira/browse/SCM-775) - Add workItem and changeset associate support for scm deliver
 * [SCM-781](https://issues.apache.org/jira/browse/SCM-781) - Add a goal to recursively validate SCM url
 * [SCM-803](https://issues.apache.org/jira/browse/SCM-803) - Upgrade maven-parent to version 27
 * [SCM-808](https://issues.apache.org/jira/browse/SCM-808) - JGit impl should be included in standard providers
 * [SCM-809](https://issues.apache.org/jira/browse/SCM-809) - Make git executable name a config option
 * [SCM-811](https://issues.apache.org/jira/browse/SCM-811) - m2 release plugin shows SCM git password if fatal occured during git push
 * [SCM-830](https://issues.apache.org/jira/browse/SCM-830) - Upgrade maven parent to version 30
 * [SCM-831](https://issues.apache.org/jira/browse/SCM-831) - Using inherited site descriptor from maven-parent

Wish:

 * [SCM-749] - remove "[INFO](https://issues.apache.org/jira/browse/SCM-749] - remove "[INFO) Working directory:" from svnexe output on Linux 




Enjoy,

-The Apache Maven team
