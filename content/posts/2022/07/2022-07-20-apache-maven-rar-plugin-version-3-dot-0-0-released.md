---
title: "Apache Maven RAR Plugin Version 3.0.0 Released"
date: 2022-07-20T10:35:35
lastmod: 2022-07-20T10:35:35
categories:
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven RAR Plugin, Version 3.0.0](http://maven.apache.org/plugins/maven-rar-plugin).

A resource adapter is a system-level software driver that a Java application
uses to connect to an enterprise information system (EIS). The RAR plugin has
the capability to store these resource adapters to an archive (Resource Adapter
Archive or RAR) which can be deployed to a J2EE server.

NOTE:
  * Plugin requires Java 7 at minimum and compatible with Maven 3.3.9+
   
```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-rar-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

[Release Notes - Apache Maven RAR Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317823&version=12334163)


* Bugs:
 
  * [MRAR-41](https://issues.apache.org/jira/browse/MRAR-41) - Update plexus-interpolaton to fix potential thread safety issues
  * [MRAR-45](https://issues.apache.org/jira/browse/MRAR-45) - Usage example errors
  * [MRAR-73](https://issues.apache.org/jira/browse/MRAR-73) - Fix JavaDoc issues which fail the site generation
  * [MRAR-78](https://issues.apache.org/jira/browse/MRAR-78) - IT's failing based on missing TLSv1.2 configuration

* New Feature:
 
  * [MRAR-86](https://issues.apache.org/jira/browse/MRAR-86) -  Reproducible Builds: make entries in output rar files reproducible (order + timestamp)

* Improvements
   
  * [MRAR-46](https://issues.apache.org/jira/browse/MRAR-46) - Upgrade Maven 3.X Only JDK 1.6
  * [MRAR-48](https://issues.apache.org/jira/browse/MRAR-48) - Change package to org.apache.maven.plugins to prevent conflict with Maven Core
  * [MRAR-49](https://issues.apache.org/jira/browse/MRAR-49) - Bump version to 3.0.0-SNAPSHOT
  * [MRAR-51](https://issues.apache.org/jira/browse/MRAR-51) - Moved code into maven-filtering
  * [MRAR-55](https://issues.apache.org/jira/browse/MRAR-55) - Add LifecycleMapping and ArtifactHandler from maven-core to target packaging plugin
  * [MRAR-56](https://issues.apache.org/jira/browse/MRAR-56) - Remove param properties that doesn't make sense for CLI usage
  * [MRAR-67](https://issues.apache.org/jira/browse/MRAR-67) - Upgrade bound plugins to life cycle
  * [MRAR-77](https://issues.apache.org/jira/browse/MRAR-77) - Rename some properties get in line with other maven properties
  * [MRAR-85](https://issues.apache.org/jira/browse/MRAR-85) - make build Reproducible
   
* Task:
 
  * [MRAR-72](https://issues.apache.org/jira/browse/MRAR-72) - Upgrade mave-surefire/failsafe-plugin 2.21.0

* Dependency upgrades:

  * [MRAR-40](https://issues.apache.org/jira/browse/MRAR-40) - Update version of plexus-archiver to 2.7
  * [MRAR-42](https://issues.apache.org/jira/browse/MRAR-42) - Upgrade maven-filtering to 1.3
  * [MRAR-43](https://issues.apache.org/jira/browse/MRAR-43) - Upgrade maven-archiver to 2.6
  * [MRAR-44](https://issues.apache.org/jira/browse/MRAR-44) - Upgrade maven-plugin-testing-harness to 1.3
  * [MRAR-47](https://issues.apache.org/jira/browse/MRAR-47) - Upgrade plexus-archiver from 2.10.3 to 3.0.1
  * [MRAR-50](https://issues.apache.org/jira/browse/MRAR-50) - Upgrade plexus-archiver from 3.0.1 to 3.0.3
  * [MRAR-52](https://issues.apache.org/jira/browse/MRAR-52) - Upgrade plexus-archiver from 3.0.3 to 3.1
  * [MRAR-53](https://issues.apache.org/jira/browse/MRAR-53) - Upgrade maven-archiver to 3.0.1
  * [MRAR-54](https://issues.apache.org/jira/browse/MRAR-54) - Upgrade maven-filtering to 3.1.0
  * [MRAR-57](https://issues.apache.org/jira/browse/MRAR-57) - Upgrade maven-archiver to 3.0.2
  * [MRAR-58](https://issues.apache.org/jira/browse/MRAR-58) - Upgrade maven-plugins to version 30
  * [MRAR-59](https://issues.apache.org/jira/browse/MRAR-59) - Upgrade of 'plexus-archiver' to version 3.3.
  * [MRAR-61](https://issues.apache.org/jira/browse/MRAR-61) - Upgrade plexus-interpolation to 1.22
  * [MRAR-62](https://issues.apache.org/jira/browse/MRAR-62) - Upgrade maven-filtering to 3.1.1
  * [MRAR-63](https://issues.apache.org/jira/browse/MRAR-63) - Upgrade maven-archiver to 3.1.0
  * [MRAR-64](https://issues.apache.org/jira/browse/MRAR-64) - Upgrade of plexus-archiver to 3.4.
  * [MRAR-65](https://issues.apache.org/jira/browse/MRAR-65) - Upgrade of maven-archiver to 3.1.1.
  * [MRAR-66](https://issues.apache.org/jira/browse/MRAR-66) - Upgrade of plexus-interpolation to 1.24.
  * [MRAR-68](https://issues.apache.org/jira/browse/MRAR-68) - Upgrade maven-archiver to 3.2.0
  * [MRAR-69](https://issues.apache.org/jira/browse/MRAR-69) - Upgrade plexus-archiver to 3.5.
  * [MRAR-70](https://issues.apache.org/jira/browse/MRAR-70) - Upgrade plexus-utils 3.1.0
  * [MRAR-71](https://issues.apache.org/jira/browse/MRAR-71) - Upgrade parent to 31
  * [MRAR-74](https://issues.apache.org/jira/browse/MRAR-74) - Upgrade plexus-archiver to 3.6.0
  * [MRAR-76](https://issues.apache.org/jira/browse/MRAR-76) - Upgrade plexus-interpolation to 1.25
  * [MRAR-79](https://issues.apache.org/jira/browse/MRAR-79) - Upgrade maven-plugins parent to version 32
  * [MRAR-80](https://issues.apache.org/jira/browse/MRAR-80) - Upgrade JUnit to 4.13.1
  * [MRAR-82](https://issues.apache.org/jira/browse/MRAR-82) - Upgrade plexus-utils to 3.3.0
  * [MRAR-83](https://issues.apache.org/jira/browse/MRAR-83) - Upgrade plexus-archiver to 4.2.3
  * [MRAR-84](https://issues.apache.org/jira/browse/MRAR-84) - Upgrade maven-archiver to 3.4.0
  * [MRAR-87](https://issues.apache.org/jira/browse/MRAR-87) - Upgrade Maven to 3.3.9

Enjoy,
  
-The Apache Maven team

Karl-Heinz Marbaise
