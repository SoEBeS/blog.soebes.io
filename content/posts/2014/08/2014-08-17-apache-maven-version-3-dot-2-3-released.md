---
title: "Apache Maven Version 3.2.3 Released"
date: 2014-08-17T22:30:00
lastmod: 2014-08-17T22:30:00
categories:
---
Hi!

The Apache Maven Team is pleased to announce the release of 
Apache Maven Version 3.2.3

The release notes can be found here:
http://maven.apache.org/docs/3.2.3/release-notes.html

The release can be downloaded from http://maven.apache.org/download.cgi

<!-- more -->

[The Release Notes](https://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=10500&version=20443):

Bugs:

 * [MNG-5349](https://issues.apache.org/jira/browse/MNG-5349) - NullPointerException if missing id in org.apache.maven.lifecycle.Lifecycle
 * [MNG-5655](https://issues.apache.org/jira/browse/MNG-5655) - WeakMojoExecutionListener callbacks invoked multiple times in some cases
 * [MNG-5658](https://issues.apache.org/jira/browse/MNG-5658) - Syntax error in bin/mvn on Solaris SPARC
 * [MNG-5663](https://issues.apache.org/jira/browse/MNG-5663) - [regression] resolution of import-scoped transitive dependencies ignores additional repositories
 * [MNG-5670](https://issues.apache.org/jira/browse/MNG-5670) - ConcurrentModificationException during DefaultMaven.newRepositorySession
 * [MNG-5677](https://issues.apache.org/jira/browse/MNG-5677) - Fine-grained cache management

Improvements:

 * [MNG-2570](https://issues.apache.org/jira/browse/MNG-2570) - Maven needs to support multiple logging levels
 * [MNG-5672](https://issues.apache.org/jira/browse/MNG-5672) - Switch access to Maven Central to HTTPS

New Feature:

 * [MNG-5656](https://issues.apache.org/jira/browse/MNG-5656) - Update maven-compiler-plugin in the default-bindings.xml
