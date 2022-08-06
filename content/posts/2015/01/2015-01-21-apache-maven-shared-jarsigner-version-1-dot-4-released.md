---
title: "Apache Maven Shared JarSigner Version 1.4 Released"
date: 2015-01-21T21:01:00
lastmod: 2015-01-21T21:01
categories:
  - Maven
  - Maven-Plugins
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven JarSigner Version 1.4](http://maven.apache.org/shared/maven-jarsigner/).

This component provides some utilities to sign/verify jars/files in your Mojos.

You should specify the version in your project's plugin configuration:

```xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-jarsigner</artifactId>
  <version>1.4</version>
</dependency>
```

<!-- more -->

[Release Notes - Maven JarSigner Version 1.4](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317528&version=12330855)

Improvements:

 * [MSHARED-371](https://issues.apache.org/jira/browse/MSHARED-371) - Increase chance of java8 compliance by updating to plexus-component-* 1.6
 * [MSHARED-395](https://issues.apache.org/jira/browse/MSHARED-395) - Upgrade to Maven 2.2.1 compatiblity
 * [MSHARED-397](https://issues.apache.org/jira/browse/MSHARED-397) - Upgrade maven-shared-utils to 0.7
 * [MSHARED-398](https://issues.apache.org/jira/browse/MSHARED-398) - Removed dependency plexus-container-default:1.0-alpha-9-stable-1

Enjoy,

-The Apache Maven team

Karl Heinz Marbaise
