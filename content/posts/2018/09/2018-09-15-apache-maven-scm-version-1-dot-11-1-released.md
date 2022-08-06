---
title: "Apache Maven SCM Version 1.11.1 Released"
date: 2018-09-15T07:45:00
lastmod: 2018-09-15T07:45
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven SCM, version 1.11.1](https://maven.apache.org/scm/).

Maven SCM supports Maven 2.x plugins (e.g. maven-release-plugin) and other
tools (e.g. Continuum) by providing them with a common API for doing SCM
operations. You can look at the list of SCMs for more information on using
Maven SCM with your favorite SCM tool.

<!-- more -->

[Release Notes - Maven SCM Version 1.11.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317828&version=12343394)


Bugs:

 * [SCM-518](https://issues.apache.org/jira/browse/SCM-518) - wrong model in vss-settings.mdo works only with a bug in Modello 1.0-alpha-21 but not with Modello 1.0+
 * [SCM-628](https://issues.apache.org/jira/browse/SCM-628) - scm:checkout parsing URL for clone does not match what is passed in with -DconnectionUrl
 * [SCM-745](https://issues.apache.org/jira/browse/SCM-745) - Perforce blame result parsing too greedy
 * [SCM-791](https://issues.apache.org/jira/browse/SCM-791) - GitExe Provider does not work properly in Cygwin
 * [SCM-815](https://issues.apache.org/jira/browse/SCM-815) - GitExe Provider does not commit files in Cygwin
 * [SCM-834](https://issues.apache.org/jira/browse/SCM-834) - Commit encoding is platform-dependent instead of UTF-8
 * [SCM-835](https://issues.apache.org/jira/browse/SCM-835) - includes directive doesn't work correctly when other files in directory changes
 * [SCM-857](https://issues.apache.org/jira/browse/SCM-857) - AnnotateConsumer fails to parse author name if name contains dot
 * [SCM-859](https://issues.apache.org/jira/browse/SCM-859) - Subversion commands don't work if path or URL contains '@'
 * [SCM-889](https://issues.apache.org/jira/browse/SCM-889) - Jazz tag command creates snapshot in wrong workspace
 * [SCM-892](https://issues.apache.org/jira/browse/SCM-892) - URLs aren't set where URLs are expected
 * [SCM-895](https://issues.apache.org/jira/browse/SCM-895) - Starteam tag command inverts logic of tagging subsets of directories
 * [SCM-896](https://issues.apache.org/jira/browse/SCM-896) - Subversion config file path incorrectly calculated on Windows
 * [SCM-905](https://issues.apache.org/jira/browse/SCM-905) - Tests with checkin rely on global Git config (2)
 * [SCM-906](https://issues.apache.org/jira/browse/SCM-906) - JGit provider tests miss SLF4J binding
 * [SCM-911](https://issues.apache.org/jira/browse/SCM-911) - Skip tests if Git executable is not in PATH

New Feature:

 * [SCM-486](https://issues.apache.org/jira/browse/SCM-486) - Support signed tags for Git

Improvements:

 * [SCM-805](https://issues.apache.org/jira/browse/SCM-805) - Add SVN --pin-externals option to copy command (branch/tag)
 * [SCM-891](https://issues.apache.org/jira/browse/SCM-891) - Remove duplicate code in tests
 * [SCM-912](https://issues.apache.org/jira/browse/SCM-912) - Unify messages if SCM system command is not available

Task:

 * [SCM-894](https://issues.apache.org/jira/browse/SCM-894) - Upgrade parent to 32

Sub-tasks:

 * [SCM-908](https://issues.apache.org/jira/browse/SCM-908) - GitScmProviderRepository#parseUrl(): skip parsing of user info for file:// URLs
 * [SCM-910](https://issues.apache.org/jira/browse/SCM-910) - SvnScmProviderRepository#parseUrl(): skip parsing of user info for file:// URLs

Dependency upgrades:

 * [SCM-893](https://issues.apache.org/jira/browse/SCM-893) - Upgrade Modello to 1.9.1
 * [SCM-898](https://issues.apache.org/jira/browse/SCM-898) - Upgrade Extra Enforcer Rules to 1.0-beta-9
 * [SCM-899](https://issues.apache.org/jira/browse/SCM-899) - Upgrade Commons IO to 2.6
 * [SCM-900](https://issues.apache.org/jira/browse/SCM-900) - Upgrade Plexus Utils to 3.1.0
 * [SCM-901](https://issues.apache.org/jira/browse/SCM-901) - Upgrade JUnit to 4.12
 * [SCM-902](https://issues.apache.org/jira/browse/SCM-902) - Upgrade Mockito Core to 1.10.19
 * [SCM-903](https://issues.apache.org/jira/browse/SCM-903) - Upgrade Plexus Security Dispatcher to 1.4
 * [SCM-904](https://issues.apache.org/jira/browse/SCM-904) - Upgrade JGit to 4.5.4.201711221230-r

Enjoy,

-The Apache Maven team
