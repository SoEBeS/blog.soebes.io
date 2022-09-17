---
title: "Apache Maven Shared Component: Maven Common Artifact Filters 3.3.2 Released"
date: 2022-09-16T07:16:16
lastmod: 2022-09-16T07:16:16
categories:
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven Common Artifact Filters Version 3.3.2](https://maven.apache.org/shared/maven-common-artifact-filters/).

A collection of ready-made filters to control inclusion/exclusion of artifacts
during dependency resolution.
 
You should specify the version in your project's plugin configuration:

``` xml 
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-common-artifact-filters</artifactId>
  <version>3.3.2</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page](http://maven.apache.org/shared/maven-common-artifact-filters/download.cgi).

[Release Notes Maven Common Artifact Filters 3.3.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12352116)

* Bug
 
  * [MSHARED-1130](https://issues.apache.org/jira/browse/MSHARED-1130) - PatternIncludesArtifactFilters raising NPE for patterns w/ wildcards and artifactoid w/ null on any coordinate

* Dependency upgrade
 
  * [MSHARED-1131](https://issues.apache.org/jira/browse/MSHARED-1131) - Upgrade Parent to 37 and cleanup
 
Enjoy,
 
-The Apache Maven team
