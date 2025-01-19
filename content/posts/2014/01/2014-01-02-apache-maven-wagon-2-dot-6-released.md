---
title: "Apache Maven Wagon Version 2.6 Released"
date: 2014-01-02T19:44:00
lastmod: 2014-01-02T19:44:00
categories:
  - Maven
  - Maven-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Wagon, Version 2.6](http://maven.apache.org/wagon/)

The Wagon component provides communications between Maven and repositories.

Typically, to use a particular version of Wagon, you would add an
'extension' to your POM, such as:

```xml
<extensions>
    <extension>
        <groupId>org.apache.maven.wagon</groupId>
        <artifactId>wagon-ssh</artifactId>
        <version>2.6</version>
    </extension>
</extensions>
```

<!-- more -->

[Release Notes - Apache Maven Wagon - Version 2.6](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=10335&version=19578)

There have been solved 3 issues:

Improvement:

 * [WAGON-401](https://issues.apache.org/jira/browse/WAGON-401) - Access Denied due to missing User-Agent
 * [WAGON-402](https://issues.apache.org/jira/browse/WAGON-402) - Upgrade Apache HttpClient based wagon provider to HttpClient 4.3
 * [WAGON-403](https://issues.apache.org/jira/browse/WAGON-403) - SSH agent support for wagon-ssh

