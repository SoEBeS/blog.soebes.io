---
title: "Mojo's RPM Maven Plugin Version 2.1 Released"
date: 2014-11-03T20:19:00
lastmod: 2014-11-03T20:19:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Mojo team is pleased to announce the release of the 
[RPM Maven Plugin version 2.1](http://mojo.codehaus.org/rpm-maven-plugin/).

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
  <version>2.1</version>
</plugin>
```

<!-- more -->

[Release Notes Mojo RPM Maven Plugin Version 2.1](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11970&version=20367)

Bugs:

 * [MRPM-91](https://issues.apache.org/jira/browse/MRPM-91) - Absolute Windows / Cygwin paths do not work anymore since SVN version 11965
 * [MRPM-160](https://issues.apache.org/jira/browse/MRPM-160) - Build should not fail at install phase when 'disabled' is active and packaging is rpm

Tasks:

 * [MRPM-125](https://issues.apache.org/jira/browse/MRPM-125) - RPM site: Mailing lists links return 404
 * [MRPM-161](https://issues.apache.org/jira/browse/MRPM-161) - Remove deprecated configuration in 2.0 versions
 * [MRPM-163](https://issues.apache.org/jira/browse/MRPM-163) - Pickup mojo-parent-34, remove duplicate configuration, and remove JIRA report
 * [MRPM-164](https://issues.apache.org/jira/browse/MRPM-164) - Upgrade plexus-utils to 3.0.18, plexus-archive-2.7.1, plexus-interpolation-1.21, and maven-filtering-1.3


Enjoy,

The Mojo team.

Dan Tran
