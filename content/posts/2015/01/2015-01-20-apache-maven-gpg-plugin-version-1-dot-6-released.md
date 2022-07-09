---
title: "Apache Maven GPG Plugin Version 1.6 Released"
date: 2015-01-20T19:34:00
lastmod: 2015-01-20T19:34
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Maven team is pleased to announce the release of the 
[Apache Maven GPG Plugin, version 1.6](http://maven.apache.org/plugins/maven-gpg-plugin/).

Signs the project artifacts with GnuPG.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-gpg-plugin</artifactId>
  <version>1.6</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven GPG Plugin - Version 1.6](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317521&version=12330780)

Improvements:

 * [MGPG-52](https://issues.apache.org/jira/browse/MGPG-52) Upgrade to maven-plugins parent version 27
 * [MGPG-51](https://issues.apache.org/jira/browse/MGPG-51) Make Plugin only 2.2.1 compatible - get rid of Maven 2.0
 * [MGPG-50](https://issues.apache.org/jira/browse/MGPG-50) MavenProject/MavenSession Injection as a paremeter instead as a component.
 * [MGPG-31](https://issues.apache.org/jira/browse/MGPG-31) Integrate w/ Maven password encryption to avoid need to type passphrase


Enjoy,

-The Maven team

