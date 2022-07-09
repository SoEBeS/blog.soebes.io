---
title: "Mojo's RPM Maven Plugin Version 2.1-alpha-4 Released"
date: 2014-05-01T10:41:00
lastmod: 2014-05-01T10:41
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
Hi,

The Mojo team is pleased to announce the release of the
[rpm-maven-plugin version 2.1-alpha-4](http://mojo.codehaus.org/rpm-maven-plugin/).

The RPM Maven Plugin allows artifacts from one or more projects to be
packaged in an RPM for distribution. In addition to project artifacts, the
RPM can contain other resources to be installed with the artifacts and
scripts to be run while the package is being installed and removed. This
plugin does not support the full range of features available to RPMs. In
particular, source RPMs can not be generated and the spec files which are
used do not do any build process (the plugin collects the files and
"installs" them for packaging).


To get this update, simply specify the version in your project's plugin
configuration:

```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>rpm-maven-plugin</artifactId>
  <version>2.1-alpha-4</version>
</plugin>
```

<!-- more -->

[Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11970&version=19640).

Bugs:

* [MRPM-79](https://issues.apache.org/jira/browse/MRPM-79) - BuildArch is not included in generated .spec file
* [MRPM-96](https://issues.apache.org/jira/browse/MRPM-96) - %install script uses -e instead of -d in test expression
* [MRPM-112](https://issues.apache.org/jira/browse/MRPM-112) - Build should fail if keyName or keyPassphrase configuration elements specify invalid values
* [MRPM-119](https://issues.apache.org/jira/browse/MRPM-119) - Wrong detection of system architecture
* [MRPM-148](https://issues.apache.org/jira/browse/MRPM-148) - Large RPM files cannot be signed
* [MRPM-153](https://issues.apache.org/jira/browse/MRPM-153) - Site generation and dependency:tree fails with Maven 3.1

Improvements:

 * [MRPM-92](https://issues.apache.org/jira/browse/MRPM-92) - Skip empty requires
 * [MRPM-101](https://issues.apache.org/jira/browse/MRPM-101) - implement @threadSafe for Maven3
 * [MRPM-106](https://issues.apache.org/jira/browse/MRPM-106) - Using build time from maven session instead new Date()
 * [MRPM-130](https://issues.apache.org/jira/browse/MRPM-130) - Support multiple prefixes
 * [MRPM-133](https://issues.apache.org/jira/browse/MRPM-133) - Confusing parameter 'copyright'
 * [MRPM-135](https://issues.apache.org/jira/browse/MRPM-135) - brp-repack-jars should be disabled by default
 * [MRPM-136](https://issues.apache.org/jira/browse/MRPM-136) - Char encoding of scripts should default to project.build.sourceEncoding
 * [MRPM-140](https://issues.apache.org/jira/browse/MRPM-140) - Upgraded Mojo RPM Plugin to use Maven 2.2.1 and Java annotations
 * [MRPM-141](https://issues.apache.org/jira/browse/MRPM-141) - Simplify Integration Tests and remove their dependency of org.codehaus.mojo.unix:unix.rpm
 * [MRPM-151](https://issues.apache.org/jira/browse/MRPM-151) - Running IT's requires Maven 2.2.1 and Java 1.6

New Feature

 * [MRPM-88](https://issues.apache.org/jira/browse/MRPM-88) - Create a Meta RPM which contains only dependencies on RPM level

Tasks:

 * [MRPM-137](https://issues.apache.org/jira/browse/MRPM-137) - Integration Test rpm-1 fails on Mac OS X
 * [MRPM-152](https://issues.apache.org/jira/browse/MRPM-152) - Add vagrant setup to simplify testing and development

Enjoy,

The Mojo team.

Rickard von Essen


