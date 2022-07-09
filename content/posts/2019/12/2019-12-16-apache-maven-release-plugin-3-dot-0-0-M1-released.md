---
title: "Apache Maven Release Plugin Version 3.0.0-M1 Released"
date: 2019-12-16T10:35:59
lastmod: 2019-12-16T10:35:59
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Release, version 3.0.0-M1](https://maven.apache.org/maven-release/).

This plugin is used to release a project with Maven, saving a lot of
repetitive, manual work. Releasing a project is made in two steps: prepare and
perform.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-release-plugin</artifactId>
  <version>3.0.0-M1</version>
</plugin>
```

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/maven-release/download.cgi

<!-- more -->

[Release Notes - Apache Maven Release Plugin - Version 3.0.0-M1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317824&version=12331214)

* Bugs:

  * [MRELEASE-229](https://issues.apache.org/jira/browse/MRELEASE-229) - release:rollback is missing remove tag implementation
  * [MRELEASE-601](https://issues.apache.org/jira/browse/MRELEASE-601) - The Maven 2 release plugin modifies CDATA elements in pom.xml files.
  * [MRELEASE-694](https://issues.apache.org/jira/browse/MRELEASE-694) - -SNAPSHOT is unexpectedly appended to version in branched pom.xml
  * [MRELEASE-908](https://issues.apache.org/jira/browse/MRELEASE-908) - Git HTTP authentication failing if there are spaces in the password
  * [MRELEASE-928](https://issues.apache.org/jira/browse/MRELEASE-928) - exposing the password for SCM URL if build failed to commit files to SCM
  * [MRELEASE-947](https://issues.apache.org/jira/browse/MRELEASE-947) - Wiki page URL for maven-release-plugin is wrong - post Codehaus termination
  * [MRELEASE-964](https://issues.apache.org/jira/browse/MRELEASE-964) - Error injecting: org.apache.maven.shared.release.phase.RewritePomsForReleasePhase
  * [MRELEASE-966](https://issues.apache.org/jira/browse/MRELEASE-966) - release plugin does not respect "mvn -f"
  * [MRELEASE-968](https://issues.apache.org/jira/browse/MRELEASE-968) - Maven release plugin missing plexus-cipher dependency
  * [MRELEASE-975](https://issues.apache.org/jira/browse/MRELEASE-975) - NPE when using an unknown project versionpolicy id
  * [MRELEASE-997](https://issues.apache.org/jira/browse/MRELEASE-997) - Unable to release:perform on windows if a file name contains spaces on windows
  * [MRELEASE-1009](https://issues.apache.org/jira/browse/MRELEASE-1009) - Compilation failure when using Java 10
  * [MRELEASE-1034](https://issues.apache.org/jira/browse/MRELEASE-1034) - Remove SCM tag blocks rollback in some situations

* New Features:

  * [MRELEASE-956](https://issues.apache.org/jira/browse/MRELEASE-956) - Release Strategy Interface
  * [MRELEASE-980](https://issues.apache.org/jira/browse/MRELEASE-980) - Provide the ability to control commit messages
  * [MRELEASE-985](https://issues.apache.org/jira/browse/MRELEASE-985) - Override SNAPSHOT dependencies from command line
  * [MRELEASE-998](https://issues.apache.org/jira/browse/MRELEASE-998) - Add ability to create custom phases
  * [MRELEASE-1029](https://issues.apache.org/jira/browse/MRELEASE-1029) - update project.build.outputTimestamp property on prepare
  * [MRELEASE-1031](https://issues.apache.org/jira/browse/MRELEASE-1031) - display release phases to give insight on what's going on during release

* Improvements:

  * [MRELEASE-703](https://issues.apache.org/jira/browse/MRELEASE-703) - [PATCH] Migration from obsolete plexus-maven-plugin to plexus-containers-component-metadata
  * [MRELEASE-873](https://issues.apache.org/jira/browse/MRELEASE-873) - Remove possibly confusing non-standard goals from example
  * [MRELEASE-896](https://issues.apache.org/jira/browse/MRELEASE-896) - Disable by default and deprecate useReleaseProfile parameter
  * [MRELEASE-909](https://issues.apache.org/jira/browse/MRELEASE-909) - Add workItem/task support for scm deliver
  * [MRELEASE-958](https://issues.apache.org/jira/browse/MRELEASE-958) - Using three digit version number (semver)
  * [MRELEASE-976](https://issues.apache.org/jira/browse/MRELEASE-976) - release:branch should also support project version policies
  * [MRELEASE-977](https://issues.apache.org/jira/browse/MRELEASE-977) - release:branch should prompt for branch name if none is given
  * [MRELEASE-979](https://issues.apache.org/jira/browse/MRELEASE-979) - Support NamingPolicies to manage Branch and Tag names
  * [MRELEASE-992](https://issues.apache.org/jira/browse/MRELEASE-992) - Deprecated maven flag --no-plugin-updates shows warnings in the console output
  * [MRELEASE-993](https://issues.apache.org/jira/browse/MRELEASE-993) - Use shallow checkout per default (git scm)
  * [MRELEASE-994](https://issues.apache.org/jira/browse/MRELEASE-994) - Drop Maven2 support
  * [MRELEASE-1005](https://issues.apache.org/jira/browse/MRELEASE-1005) - Extract ResourceGenerator from ReleasePhase
  * [MRELEASE-1007](https://issues.apache.org/jira/browse/MRELEASE-1007) - Rework usage workingDirectory and commonBasedir
  * [MRELEASE-1023](https://issues.apache.org/jira/browse/MRELEASE-1023) - Minor code cleanups
  * [MRELEASE-1032](https://issues.apache.org/jira/browse/MRELEASE-1032) - add https://m.a.o/xsd/maven-4.0.0.xsd schema instead of http://m.a.o/maven-v4_0_0.xsd

* Tasks:

  * [MRELEASE-356](https://issues.apache.org/jira/browse/MRELEASE-356) - Deprecate the automated release profile
  * [MRELEASE-990](https://issues.apache.org/jira/browse/MRELEASE-990) - switch to Git
  * [MRELEASE-1027](https://issues.apache.org/jira/browse/MRELEASE-1027) - New Release
  * [MRELEASE-1033](https://issues.apache.org/jira/browse/MRELEASE-1033) - Site: Dead link to wiki

* Dependency upgrades:

  * [MRELEASE-952](https://issues.apache.org/jira/browse/MRELEASE-952) - Replace JDom as XML transformer
  * [MRELEASE-1010](https://issues.apache.org/jira/browse/MRELEASE-1010) - Upgrade maven-plugins parent to version 32
  * [MRELEASE-1024](https://issues.apache.org/jira/browse/MRELEASE-1024) - Upgrade to SCM 1.11.2
 
Enjoy,
 
-The Apache Maven team
