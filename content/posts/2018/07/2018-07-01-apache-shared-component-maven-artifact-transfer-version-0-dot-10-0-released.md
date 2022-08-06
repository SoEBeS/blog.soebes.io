---
title: "Apache Shared Component: Maven Artifact Transfer Version 0.10.0 Released"
date: 2018-07-05T19:20:12
lastmod: 2018-07-05T19:20:12
categories:
  - Maven
  - Maven-Shared
---
The Apache Maven team is pleased to announce the release of the 
[Apache Shared Component: Apache Maven Artifact Transfer Version 0.10.0](https://maven.apache.org/shared/maven-artifact-transfer/)

An API to install, deploy and resolving artifacts with Maven3

```xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-artifact-transfer</artifactId>
  <version>0.10.0</version>
</dependency>
```

<!-- more -->

[Release Notes Apache Shared Componet Maven Artifact Transfer 0.10.0](https://issues.apache.org/jira/projects/MSHARED/versions/12338168)

Bugs:

 * [MSHARED-641](https://issues.apache.org/jira/browse/MSHARED-641) - NoSuchMethodException using DependencyResolver with Maven 3.0
 * [MSHARED-724](https://issues.apache.org/jira/browse/MSHARED-724) - Upgrade mave-surefire/failsafe-plugin 2.21.0

Improvements:

 * [MSHARED-655](https://issues.apache.org/jira/browse/MSHARED-655) - ArtifactInstaller check for integrity of parameters null, empty collection, being a directory
 * [MSHARED-656](https://issues.apache.org/jira/browse/MSHARED-656) - Make integration testing for different Maven versions possible
 * [MSHARED-658](https://issues.apache.org/jira/browse/MSHARED-658) - ArtifactDeployer check for integrity of parameters null, empty collection, being a directory
 * [MSHARED-677](https://issues.apache.org/jira/browse/MSHARED-677) - Add null checks for ArtifactResolver interface.
 * [MSHARED-678](https://issues.apache.org/jira/browse/MSHARED-678) - Add null check for ProjectInstaller Interface
 * [MSHARED-679](https://issues.apache.org/jira/browse/MSHARED-679) - Make all classes package private in internal package
 * [MSHARED-695](https://issues.apache.org/jira/browse/MSHARED-695) - Move checksum creation from install part to deploy part
 * [MSHARED-696](https://issues.apache.org/jira/browse/MSHARED-696) - Add missing Maven Version 3.5.2 to ArtifactDeployerTest
 * [MSHARED-697](https://issues.apache.org/jira/browse/MSHARED-697) - Add Maven Version 3.5.3 to all Integration tests after releasing Maven 3.5.3
 * [MSHARED-701](https://issues.apache.org/jira/browse/MSHARED-701) - Remove installation of pom checksum - IT's do not fail
 * [MSHARED-705](https://issues.apache.org/jira/browse/MSHARED-705) - Remove updateReleaseInfo from ProjectInstallerRequest

Tasks:

 * [MSHARED-698](https://issues.apache.org/jira/browse/MSHARED-698) - Change the package to org.apache.maven.shared.transfer.*
 * [MSHARED-703](https://issues.apache.org/jira/browse/MSHARED-703) - Try to identify why IT's not running with Maven 3.0.5
 * [MSHARED-742](https://issues.apache.org/jira/browse/MSHARED-742) - Add null check for DependencyResolver Interface

Dependency upgrades:

 * [MSHARED-651](https://issues.apache.org/jira/browse/MSHARED-651) - Upgrade plexus-utils to version 3.1.0
 * [MSHARED-652](https://issues.apache.org/jira/browse/MSHARED-652) - Upgrade to maven-shade-plugin to version 3.0.0
 * [MSHARED-682](https://issues.apache.org/jira/browse/MSHARED-682) - Upgrade maven-shared-components parent to version 31
 * [MSHARED-693](https://issues.apache.org/jira/browse/MSHARED-693) - Upgrade JUnit from 4.11 to 4.12
 * [MSHARED-699](https://issues.apache.org/jira/browse/MSHARED-699) - Upgrade parent to 31 in IT example project
 * [MSHARED-737](https://issues.apache.org/jira/browse/MSHARED-737) - Upgrade mockito-core to 2.18.3 JDK 10 support
 * [MSHARED-741](https://issues.apache.org/jira/browse/MSHARED-741) - Upgrade commons-codec to 1.11

Enjoy,

-The Maven team

Karl-Heinz Marbaise
