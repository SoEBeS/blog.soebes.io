---
title: "Apache Shared Component: Maven Artifact Transfer Version 0.13.1 Released"
date: 2020-12-26T19:35:05
lastmod: 2020-12-26T19:35:05
categories:
  - BM
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Shared Component: Apache Maven Artifact Transfer Version 0.13.1](https://maven.apache.org/shared/maven-artifact-transfer/)

An API to install, deploy and resolving artifacts with Maven3

```xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-artifact-transfer</artifactId>
  <version>0.13.1</version>
</dependency>
```

<!-- more -->

[Release Notes Apache Shared Componet Maven Artifact Transfer 0.13.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12348387)

* Bugs:

  * [MSHARED-863](https://issues.apache.org/jira/browse/MSHARED-863) - Possible NPEx in Maven30DependencyResolver.resolveDependencies
  * [MSHARED-874](https://issues.apache.org/jira/browse/MSHARED-874) - NPE with maven-dependency-plugin
  * [MSHARED-913](https://issues.apache.org/jira/browse/MSHARED-913) - Missing component annotations for maven3 and maven31 dependency collectors
  * [MSHARED-920](https://issues.apache.org/jira/browse/MSHARED-920) - NPE in DefaultArtifactInstaller.install - missing injection of RepositoryManager

* New Feature:

  * [MSHARED-843](https://issues.apache.org/jira/browse/MSHARED-843) - Provide artifacts in CollectorResult when collectDependencies

* Improvements:

  * [MSHARED-864](https://issues.apache.org/jira/browse/MSHARED-864) - Refactor and simplify code
  * [MSHARED-865](https://issues.apache.org/jira/browse/MSHARED-865) - Line up all IT's with Maven versions
  * [MSHARED-869](https://issues.apache.org/jira/browse/MSHARED-869) - Reduce duplication in DefaultDependencyCollector-s
  * [MSHARED-875](https://issues.apache.org/jira/browse/MSHARED-875) - Remove enforcer for bytecode enforcement
  * [MSHARED-879](https://issues.apache.org/jira/browse/MSHARED-879) - make build Reproducible
  * [MSHARED-889](https://issues.apache.org/jira/browse/MSHARED-889) - Remove explicit version for maven-shade-plugin
  * [MSHARED-922](https://issues.apache.org/jira/browse/MSHARED-922) - Remove checksum creation from DefaultProjectDeployer

* Tasks:

  * [MSHARED-877](https://issues.apache.org/jira/browse/MSHARED-877) - Remove hard coded version for maven-invoker-plugin
  * [MSHARED-878](https://issues.apache.org/jira/browse/MSHARED-878) - Add automatic module name

* Dependency upgrades:

  * [MSHARED-845](https://issues.apache.org/jira/browse/MSHARED-845) - Upgrade plexus-utils 3.3.0
  * [MSHARED-846](https://issues.apache.org/jira/browse/MSHARED-846) - Upgrade commons-codec - 1.13
  * [MSHARED-857](https://issues.apache.org/jira/browse/MSHARED-857) - Upgrade commons-codec 1.14
  * [MSHARED-858](https://issues.apache.org/jira/browse/MSHARED-858) - Upgrade maven-shared-component parent to 34
  * [MSHARED-859](https://issues.apache.org/jira/browse/MSHARED-859) - Upgrade maven-common-artifact-filters 3.1.0
  * [MSHARED-876](https://issues.apache.org/jira/browse/MSHARED-876) - Upgrade in IT all maven-plugin parents to version 34
  * [MSHARED-883](https://issues.apache.org/jira/browse/MSHARED-883) - Upgrade groovy from 2.4.10 to 3.0.3 for maven-invoker-plugin

Enjoy,

-The Maven team

Karl-Heinz Marbaise
