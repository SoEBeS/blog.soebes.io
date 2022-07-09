---
title: "Apache Maven Shared Component: Maven Common Artifact Filters 3.0.0 Released"
date: 2015-12-02T08:00:00
lastmod: 2015-12-02T08:00
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven Common Artifact Filters Version 3.0.0](http://maven.apache.org/shared/maven-common-artifact-filters/).

A collection of ready-made filters to control inclusion/exclusion of artifacts
during dependency resolution.
 
Important Notes:

 * Maven 3.X only
 * JDK 6 minimum requirement

You should specify the version in your project's plugin configuration:

``` xml 
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-common-artifact-filters</artifactId>
  <version>3.0.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page](http://maven.apache.org/shared/maven-common-artifact-filters/download.cgi).

<!-- more -->
 
[Release Notes Maven Common Artifact Filters 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12331499)

Bug:

 * [MSHARED-466](https://issues.apache.org/jira/browse/MSHARED-466) -  Filtering dependencies does not retain the order of the unfiltered list

Improvements:

 * [MSHARED-403](https://issues.apache.org/jira/browse/MSHARED-403) -  Upgrade to Maven 2.2.1 compatiblity
 * [MSHARED-404](https://issues.apache.org/jira/browse/MSHARED-404) -  Upgrade maven-shared-utils to 0.7
 * [MSHARED-423](https://issues.apache.org/jira/browse/MSHARED-423) -  Change JDK + Maven requirements
 * [MSHARED-424](https://issues.apache.org/jira/browse/MSHARED-424) -  Add Filter mechanism which can be passed to Sonatype/Eclipse Aether
 * [MSHARED-425](https://issues.apache.org/jira/browse/MSHARED-425) -  Change construct-method signatures of ArtifactTransitivityFilter; don't use deprecated M2 code
 * [MSHARED-450](https://issues.apache.org/jira/browse/MSHARED-450) -  Upgrade maven-shared-utils to 3.0.0
 * [MSHARED-458](https://issues.apache.org/jira/browse/MSHARED-458) -  Upgrade maven-shared-components parent to version 22
 * [MSHARED-468](https://issues.apache.org/jira/browse/MSHARED-468) -  Remove @Deprecated marked code

 
Enjoy,
 
-The Apache Maven team
