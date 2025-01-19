---
title: "Apache Maven GPG Plugin - Release 1.5"
date: 2014-02-25T23:35:00
lastmod: 2014-02-25T23:35:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven GPG Plugin, version 1.5](http://maven.apache.org/plugins/maven-gpg-plugin/)

This plugin signs all of the project's attached artifacts with GnuPG.


You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-gpg-plugin</artifactId>
  <version>1.5</version>
</plugin>
```

Release Notes - Maven GPG Plugin - Version 1.5

Bugs:

 * [MGPG-41](https://issues.apache.org/jira/browse/MGPG-41) - Passphrase revealed when backspacing at prompt

Improvements:

 * [MGPG-48](https://issues.apache.org/jira/browse/MGPG-48) - useAgent=true by default
 * [MGPG-49](https://issues.apache.org/jira/browse/MGPG-49) - Add support for --lock-* command line options

Task:

 * [MGPG-39](https://issues.apache.org/jira/browse/MGPG-39) - use maven-plugin-tools' java 5 annotations


Enjoy,

-The Apache Maven team


