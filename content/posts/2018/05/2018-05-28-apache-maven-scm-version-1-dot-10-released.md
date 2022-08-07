---
title: "Apache Maven SCM Version 1.10.0 Released"
date: 2018-05-28T18:15:33
lastmod: 2018-05-28T18:15:33
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven SCM, version 1.10.0](https://maven.apache.org/scm/).

Maven SCM supports Maven 2.x plugins (e.g. maven-release-plugin) and other
tools (e.g. Continuum) by providing them with a common API for doing SCM
operations. You can look at the list of SCMs for more information on using
Maven SCM with your favorite SCM tool.

<!-- more -->

[Release Notes - Maven SCM Version 1.10.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317828&version=12335750)

Bugs:

 * [SCM-763](https://issues.apache.org/jira/browse/SCM-763) - Password masking for svnexe does not handle all cases
 * [SCM-797](https://issues.apache.org/jira/browse/SCM-797) - gitexe checkIn() fails due to Windows command line length limitation
 * [SCM-814](https://issues.apache.org/jira/browse/SCM-814) - Dead links on Maven SCM plugin usage page and Maven SCM Providers Matrix page
 * [SCM-818](https://issues.apache.org/jira/browse/SCM-818) - Updating doesn't work when in detached HEAD
 * [SCM-821](https://issues.apache.org/jira/browse/SCM-821) - fix incorrect resolving of branch name from HG outgoing changes && NPE in HgUtils.differentOutgoingBranchFound
 * [SCM-829](https://issues.apache.org/jira/browse/SCM-829) - CommandParameter incorrectly removed from parameter list
 * [SCM-836](https://issues.apache.org/jira/browse/SCM-836) - scm:bootstrap throws NPE
 * [SCM-846](https://issues.apache.org/jira/browse/SCM-846) - userInfo in Git HTTP URLs not escaped according to RFC 3986
 * [SCM-862](https://issues.apache.org/jira/browse/SCM-862) - apache-rat complains about Eclipse .checkstyle files
 * [SCM-863](https://issues.apache.org/jira/browse/SCM-863) - NPE in GlobalOptions.setCVSRoot(null) with newer cvsclient
 * [SCM-865](https://issues.apache.org/jira/browse/SCM-865) - cvsnt: rls: invalid option -- d
 * [SCM-866](https://issues.apache.org/jira/browse/SCM-866) - Cvs ScmProvider.list() does not return correct entries
 * [SCM-867](https://issues.apache.org/jira/browse/SCM-867) - ScmWagon has no way to work with CVS and SVN in binary mode
 * [SCM-868](https://issues.apache.org/jira/browse/SCM-868) - gitexe add() does not return added files when invoked in subdir
 * [SCM-869](https://issues.apache.org/jira/browse/SCM-869) - gitexe list() implemented incorrectly
 * [SCM-874](https://issues.apache.org/jira/browse/SCM-874) - ScmResult output password masking does not handle multiline text
 * [SCM-875](https://issues.apache.org/jira/browse/SCM-875) - GitUpdateCommand assumes master branch by default
 * [SCM-878](https://issues.apache.org/jira/browse/SCM-878) - AbstractConsumer#parseDate() logs wrong locale in case of a ParseException
 * [SCM-879](https://issues.apache.org/jira/browse/SCM-879) - JazzChangeLogCommandTest#testListChangesetConsumerWithTimeOnly() fails with NPE on Java 10
 * [SCM-881](https://issues.apache.org/jira/browse/SCM-881) - ScmWagon has no way to work with SVN in binary mode
 * [SCM-882](https://issues.apache.org/jira/browse/SCM-882) - ScmWagon has no way to work with GIT in binary mode
 * [SCM-886](https://issues.apache.org/jira/browse/SCM-886) - Tests with checkin rely on global git config
 * [SCM-887](https://issues.apache.org/jira/browse/SCM-887) - Plexus Utils 3.0.24 makes some tests fail
 * [SCM-888](https://issues.apache.org/jira/browse/SCM-888) - Changelog generation fails on Windows with Mercurial SCM

Improvements:

 * [SCM-739](https://issues.apache.org/jira/browse/SCM-739) - Release Plugin: Use "git --depth 1" When Checking Out
 * [SCM-748](https://issues.apache.org/jira/browse/SCM-748) - Automatically create parent dirs with 'svn --parents'
 * [SCM-855](https://issues.apache.org/jira/browse/SCM-855) - Upgrade to Java 7
 * [SCM-873](https://issues.apache.org/jira/browse/SCM-873) - Improve documentation on svn-settings.xml and git-settings.xml
 * [SCM-884](https://issues.apache.org/jira/browse/SCM-884) - Upgrade jgit to last version of java 7 release (4.5.0.201609210915-r)
 * [SCM-885](https://issues.apache.org/jira/browse/SCM-885) - Extend GitChangeLogCommand by using revision only

Task:

 * [SCM-876](https://issues.apache.org/jira/browse/SCM-876) - switch from Git-WIP to Gitbox

Dependency upgrade:

 * [SCM-824](https://issues.apache.org/jira/browse/SCM-824) - Upgrade Plexus Utils to 3.0.24


Enjoy,

-The Apache Maven team
