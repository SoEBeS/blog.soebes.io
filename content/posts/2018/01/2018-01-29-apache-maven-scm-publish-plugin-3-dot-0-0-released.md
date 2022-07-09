---
title: "Apache Maven SCM Publish Plugin 3.0.0 Released"
date: 2018-01-29T23:30:00
lastmod: 2018-01-29T23:30
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven SCM Publish Plugin, version 3.0.0](https://maven.apache.org/plugins/maven-scm-publish-plugin/)

The maven-scm-publish-plugin is a utility plugin to allow publishing Maven 
website to any supported SCM. The primary goal was to have an utility plugin 
to allow Apache projects to publish Maven websites via the ASF svnpubsub 
system.

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-scm-publish-plugin/download.cgi


You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-scm-publish-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven SCM Publish Plugin - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317920&version=12331371)

Bugs:

 * [MSCMPUB-19](https://issues.apache.org/jira/browse/MSCMPUB-19) - Plugin fails to publish to SCMs whose working copies don't have any kind of private storage
 * [MSCMPUB-29](https://issues.apache.org/jira/browse/MSCMPUB-29) - Website still points to jira.codehaus.org

Improvements:

 * [MSCMPUB-16](https://issues.apache.org/jira/browse/MSCMPUB-16) - MavenProject/MavenSession Injection as a parameter instead as a component.
 * [MSCMPUB-21](https://issues.apache.org/jira/browse/MSCMPUB-21) - Upgrade maven-scm to 1.9.4
 * [MSCMPUB-22](https://issues.apache.org/jira/browse/MSCMPUB-22) - Upgrade maven-shared-components parent to version 30
 * [MSCMPUB-23](https://issues.apache.org/jira/browse/MSCMPUB-23) - Bump version to 3.0.0-SNAPSHOT
 * [MSCMPUB-24](https://issues.apache.org/jira/browse/MSCMPUB-24) - Upgrade maven-release-manager to 2.5.3
 * [MSCMPUB-25](https://issues.apache.org/jira/browse/MSCMPUB-25) - Upgrade Maven SCM to 1.9.5
 * [MSCMPUB-26](https://issues.apache.org/jira/browse/MSCMPUB-26) - Change scope of maven-plugin-annotations to provided
 * [MSCMPUB-32](https://issues.apache.org/jira/browse/MSCMPUB-32) - improve doc for GitHub gh-pages use in orphan Git branch
 * [MSCMPUB-33](https://issues.apache.org/jira/browse/MSCMPUB-33) - add color output to improve UX
 * [MSCMPUB-35](https://issues.apache.org/jira/browse/MSCMPUB-35) - add support for symbolic links

Task:

 * [MSCMPUB-34](https://issues.apache.org/jira/browse/MSCMPUB-34) - switch to Git

Enjoy,

-The Apache Maven team
