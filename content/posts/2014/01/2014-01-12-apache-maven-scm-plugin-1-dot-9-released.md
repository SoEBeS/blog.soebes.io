---
title: "Apache Maven SCM Plugin 1.9 Released"
date: 2014-01-12T16:09:00
lastmod: 2014-01-12T16:09
categories:
  - News
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven SCM Plugin, version 1.9](http://maven.apache.org/scm/maven-scm-plugin/).

The SCM Plugin offers vendor independent access to common scm commands by offering a 
set of command mappings for the configured scm.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-scm-plugin</artifactId>
  <version>1.9</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven SCM Plugin - Version 1.9](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=10527&version=18783)

Fixed Bugs:

 * [SCM-435](https://issues.apache.org/jira/browse/SCM-435) - can not work with local copy
 * [SCM-503](https://issues.apache.org/jira/browse/SCM-503) - create a native Java GIT provider using JGit
 * [SCM-650](https://issues.apache.org/jira/browse/SCM-650) - HgChangeLogConsumer generates phantom 'null' changeset at the end
 * [SCM-681](https://issues.apache.org/jira/browse/SCM-681) - Git blame fails to report line authors on windows with core.autocrlf = true
 * [SCM-702](https://issues.apache.org/jira/browse/SCM-702) - Incorrect documentation for parameter "skip" of goal "check-local-modification" of the plugin
 * [SCM-705](https://issues.apache.org/jira/browse/SCM-705) - Git pushes tag ambigiously
 * [SCM-709](https://issues.apache.org/jira/browse/SCM-709) - REGRESSION: git status doesn't work if repository root is not the working directory
 * [SCM-733](https://issues.apache.org/jira/browse/SCM-733) - Bugfixes to mercurial changelog
 * [SCM-737](https://issues.apache.org/jira/browse/SCM-737) - can't build CVS provider from source release zip file due to missing CVS test repository

Improvements:

 * [SCM-487](https://issues.apache.org/jira/browse/SCM-487) - support --parents option for svn copy (tag commands) (svn 1.5 required)
 * [SCM-565](https://issues.apache.org/jira/browse/SCM-565) - scm:validate should not fork the build
 * [SCM-636](https://issues.apache.org/jira/browse/SCM-636) - Provide documentation about connection and developerConnection
 * [SCM-736](https://issues.apache.org/jira/browse/SCM-736) - update plugin to use plugin-tools java 5 annotations

New Feature:

 * [SCM-727](https://issues.apache.org/jira/browse/SCM-727) - integrate scm-provider based on jgit


Enjoy,

The Apache Maven team
