---
title: "Mojo RPM Maven Plugin Version 2.1.2 Released"
date: 2015-01-24T22:09:00
lastmod: 2015-01-24T22:09
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
Hi,

The Mojo team is pleased to announce the release of the 
[RPM Maven Plugin version 2.1.2](http://mojo.codehaus.org/rpm-maven-plugin/).

The RPM Maven Plugin allows artifacts from one or more projects to be packaged
in an RPM for distribution. In addition to project artifacts, the RPM can
contain other resources to be installed with the artifacts and scripts to be
run while the package is being installed and removed. This plugin does not
support the full range of features available to RPMs. In particular, source
RPMs can not be generated and the spec files which are used do not do any build
process (the plugin collects the files and "installs" them for packaging).


To get this update, simply specify the version in your project's plugin
configuration:

```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>rpm-maven-plugin</artifactId>
  <version>2.1.2</version>
</plugin>
```
<!-- more -->

[Release Notes RPM Maven Plugin Version 2.1.2](https://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11970&version=20824)

Bugs:

 * [MRPM-171](https://issues.apache.org/jira/browse/MRPM-171) - noDefaultExcludes does not pick up .svn directories
 * [MRPM-173](https://issues.apache.org/jira/browse/MRPM-173) - files listed twice in spec file and remain after package removal
 * [MRPM-176](https://issues.apache.org/jira/browse/MRPM-176) - RPMs are not always signed
 * [MRPM-179](https://issues.apache.org/jira/browse/MRPM-179) - RPM no longer relocatable

Improvements:

 * [MRPM-81](https://issues.apache.org/jira/browse/MRPM-81) - Add documentation on how to override project settings
 * [MRPM-172](https://issues.apache.org/jira/browse/MRPM-172) - failIfNotExists option for sources
 * [MRPM-174](https://issues.apache.org/jira/browse/MRPM-174) - Add ability to load PGP passphase under settings.xml
 * [MRPM-175](https://issues.apache.org/jira/browse/MRPM-175) - Upgrade plexus-archiver to 2.9.1
 * [MRPM-177](https://issues.apache.org/jira/browse/MRPM-177) - Add ability to configure gpg home directory needed for rpm sign IT test
 * [MRPM-178](https://issues.apache.org/jira/browse/MRPM-178) - Set m2e's ignore under lifecycleMappingMetadata


Enjoy,

The Mojo team.

