---
title: "Apache Maven Shared Component - Maven Verifier Version 2.0.0-M1 Released"
date: 2022-09-26T12:41:41
lastmod: 2022-09-26T12:41:41
categories:
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Maven Verifier, version 2.0.0-M1](https://maven.apache.org/shared/maven-verifier/).

This library provides a test harness for Maven integration tests.

You should specify the version in your project's dependency configuration:

```xml
<dependency>
    <groupId>org.apache.maven.shared</groupId>
    <artifactId>maven-verifier</artifactId>
    <version>2.0.0-M1</version>
</dependency>
```

You can download the appropriate sources etc. from the [download page][download-page].
 
[Release Notes - Maven Verifier - Version 2.0.0-M1][release-notes]

* Improvements:
   
  * [MSHARED-690](https://issues.apache.org/jira/browse/MSHARED-690) - Change package from org.apache.maven.it to org.apache.maven.shared.verifier
  * [MSHARED-1124](https://issues.apache.org/jira/browse/MSHARED-1124) - Add new version of methods filterFile and newDefaultFilterMap
  * [MSHARED-1125](https://issues.apache.org/jira/browse/MSHARED-1125) - Require Maven args to be provided one by one
  * [MSHARED-1127](https://issues.apache.org/jira/browse/MSHARED-1127) - Remove main method from Verifier
  * [MSHARED-1128](https://issues.apache.org/jira/browse/MSHARED-1128) - Deprecate all executeGoal(s) methods
  * [MSHARED-1129](https://issues.apache.org/jira/browse/MSHARED-1129) - Replace CLI options with CLI args
  * [MSHARED-1134](https://issues.apache.org/jira/browse/MSHARED-1134) - Remove / deprecate internal debug mode in Verifier
  * [MSHARED-1135](https://issues.apache.org/jira/browse/MSHARED-1135) - Deprecate Verifier#setMavenDebug(boolean) for removal
  * [MSHARED-1137](https://issues.apache.org/jira/browse/MSHARED-1137) - Revise Verifier#getDefaultMavenHome()/#getExecutable()
  * [MSHARED-1142](https://issues.apache.org/jira/browse/MSHARED-1142) - Remove e.getMessage() duplication when e is passed as object
  
* Dependency upgrades:
 
  * [MSHARED-1075](https://issues.apache.org/jira/browse/MSHARED-1075) - Upgrade Parent to 36
  * [MSHARED-1089](https://issues.apache.org/jira/browse/MSHARED-1089) - Update maven-verifier to JDK 8 / Junit 5
  * [MSHARED-1126](https://issues.apache.org/jira/browse/MSHARED-1126) - Bump maven-shared-components from 36 to 37
  * [MSHARED-1148](https://issues.apache.org/jira/browse/MSHARED-1148) - Bump junit-jupiter from 5.9.0 to 5.9.1

 
Enjoy,

-The Apache Maven team

[download-page]: https://maven.apache.org/shared/maven-verifier/download.html
[release-notes]: https://issues.apache.org/jira/secure/ReleaseNote.jspa?version=12351428&styleName=Text&projectId=12317922

