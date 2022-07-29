---
title: "Apache Maven Shared Component: Maven Common Artifact Filters 3.3.1 Released"
date: 2022-07-20T11:21:21
lastmod: 2022-07-20T11:21:21
categories:
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven Common Artifact Filters Version 3.3.1](https://maven.apache.org/shared/maven-common-artifact-filters/).

A collection of ready-made filters to control inclusion/exclusion of artifacts
during dependency resolution.
 
You should specify the version in your project's plugin configuration:

``` xml 
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-common-artifact-filters</artifactId>
  <version>3.3.1</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page](http://maven.apache.org/shared/maven-common-artifact-filters/download.cgi).

[Release Notes Maven Common Artifact Filters 3.3.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12352094)

* Bug:
 
  * [MSHARED-1104](https://issues.apache.org/jira/browse/MSHARED-1104) - Pattern w/ 4 elements may be GATV or GATC
 
Enjoy,
 
-The Apache Maven team
