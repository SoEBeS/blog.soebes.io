---
title: "Apache Maven Assembly Plugin Version 2.4.1 Released"
date: 2014-08-03T21:08:00
lastmod: 2014-08-03T21:08:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Assembly Plugin, version 2.4.1](http://maven.apache.org/plugins/maven-assembly-plugin).

The Assembly Plugin for Maven is primarily intended to allow users to aggregate
the project output along with its dependencies, modules, site documentation,
and other files into a single distributable archive.

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-assembly-plugin</artifactId>
  <version>2.4.1</version>
</plugin>
```
<!-- more -->

[Release Notes - Maven Assembly Plugin Version 2.4.1](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11126&version=20438)

Bugs:

 * [MASSEMBLY-637](https://issues.apache.org/jira/browse/MASSEMBLY-637) - fileSet <lineEnding>unix</lineEnding> strips last newline of file
 * [MASSEMBLY-651](https://issues.apache.org/jira/browse/MASSEMBLY-651) - REOPEN - OutOfMemory when running maven-assembly-plugin
 * [MASSEMBLY-652](https://issues.apache.org/jira/browse/MASSEMBLY-652) - Resource filtering does not work if line contains single @
 * [MASSEMBLY-696](https://issues.apache.org/jira/browse/MASSEMBLY-696) - Internal Regexp Error with Windows Paths

Improvements:

 * [MASSEMBLY-639](https://issues.apache.org/jira/browse/MASSEMBLY-639) - Change default for recompressZippedFIles back to true
 * [MASSEMBLY-682](https://issues.apache.org/jira/browse/MASSEMBLY-682) - Make a link to the MavenArchiver documentation
 * [MASSEMBLY-686](https://issues.apache.org/jira/browse/MASSEMBLY-686) - Update version of maven-filtering to 1.2
 * [MASSEMBLY-687](https://issues.apache.org/jira/browse/MASSEMBLY-687) - Change the prefered location for assembly descriptors and filter files
 * [MASSEMBLY-690](https://issues.apache.org/jira/browse/MASSEMBLY-690) - Think about WARNING for module dependencies
 * [MASSEMBLY-693](https://issues.apache.org/jira/browse/MASSEMBLY-693) - Update XSD Versions in examples
 * [MASSEMBLY-694](https://issues.apache.org/jira/browse/MASSEMBLY-694) - Generation of the site does not work with Maven 3.2.1

Enjoy,

-The Apache Maven team

Karl-Heinz Marbaise
