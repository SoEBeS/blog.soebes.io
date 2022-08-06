---
title: "Apache Maven Surefire Plugin Version 3.0.0-M4 Released"
date: 2019-11-17T18:20:12
lastmod: 2019-11-17T18:20:12
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Surefire Plugin, version 3.0.0-M4](https://maven.apache.org/plugins/maven-surefire-plugin/).

The release contains 43 bug fixes.
Again we received contributions from the community in form of bug reports
and bug fixes. Thank you and keep them coming!

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-plugin</artifactId>
  <version>3.0.0-M4</version>
</plugin>
```

or for failsafe:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-failsafe-plugin</artifactId>
  <version>3.0.0-M4</version>
</plugin>
```

or for surefire-report:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-report-plugin</artifactId>
  <version>3.0.0-M4</version>
</plugin>
```

You can download the appropriate [sources etc. from the download page](https://maven.apache.org/surefire/download.cgi).


<!-- more -->

[Release Notes - Maven Surefire - Version 3.0.0-M4](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317927&version=12344668)

Bugs:

 * [SUREFIRE-1222](https://issues.apache.org/jira/browse/SUREFIRE-1222) - ForkClient attempts to consume unrelated lines
 * [SUREFIRE-1464](https://issues.apache.org/jira/browse/SUREFIRE-1464) - Failsafe plugin exposes slf4j-jdk14 dependency
 * [SUREFIRE-1534](https://issues.apache.org/jira/browse/SUREFIRE-1534) - Surefire 2.21.0 ClassNotFoundException: org.apache.maven.plugin.surefire.StartupReportConfiguration using reuseForks set to false
 * [SUREFIRE-1546](https://issues.apache.org/jira/browse/SUREFIRE-1546) - JUnit 5 runner does not honor JUnit 5 display names
 * [SUREFIRE-1664](https://issues.apache.org/jira/browse/SUREFIRE-1664) - "plugin's wiki page" points to non-existing web page
 * [SUREFIRE-1669](https://issues.apache.org/jira/browse/SUREFIRE-1669) - POJO tests do not call fixture methods setUp and tearDown and test instances are not new between tests
 * [SUREFIRE-1670](https://issues.apache.org/jira/browse/SUREFIRE-1670) - wrong "Filtering by Test Class Names" in failsafe "Using JUnit 5 Platform" page
 * [SUREFIRE-1675](https://issues.apache.org/jira/browse/SUREFIRE-1675) - Forked JVM terminates with 'halt' when another module's tests fail
 * [SUREFIRE-1679](https://issues.apache.org/jira/browse/SUREFIRE-1679) - Caching of provider classpath with module-specific changes may break test bootstrapping in subsequent modules
 * [SUREFIRE-1684](https://issues.apache.org/jira/browse/SUREFIRE-1684) - The documentation of Maven Surefire Report Plugin contains wrong number of plugin goals
 * [SUREFIRE-1689](https://issues.apache.org/jira/browse/SUREFIRE-1689) - The fast PpidChecker is switched to the slow 30 seconds PING after the subprocess (/bin/ps -o etime= -p ...) failed with exit 1
 * [SUREFIRE-1690](https://issues.apache.org/jira/browse/SUREFIRE-1690) - Typo fixed: classpathDependencyExclude
 * [SUREFIRE-1701](https://issues.apache.org/jira/browse/SUREFIRE-1701) - Surefire / Failsafe rerun failed tests functionality fails with JUnit 5 if using @DisplayName
 * [SUREFIRE-1707](https://issues.apache.org/jira/browse/SUREFIRE-1707) - Forked JVM is killed when GC paused the tests for over 30 seconds
 * [SUREFIRE-1712](https://issues.apache.org/jira/browse/SUREFIRE-1712) - Running tests with JDK13 fails with Unsupported class file major version 57
 * [SUREFIRE-1716](https://issues.apache.org/jira/browse/SUREFIRE-1716) - JUnit5 Parameterized tests and re-run should see unique test runs with different parameters


New Features:

 * [SUREFIRE-1584](https://issues.apache.org/jira/browse/SUREFIRE-1584) - Rerun Failing Tests with JUnit 5
 * [SUREFIRE-1705](https://issues.apache.org/jira/browse/SUREFIRE-1705) - new config parameter Exclude Environment Variables
 * [SUREFIRE-1711](https://issues.apache.org/jira/browse/SUREFIRE-1711) - Support @ParameterizedTest for JUnit 5 test reruns
 * [SUREFIRE-1717](https://issues.apache.org/jira/browse/SUREFIRE-1717) - Enable Process Checkers

Improvements:

* [SUREFIRE-1004](https://issues.apache.org/jira/browse/SUREFIRE-1004) - Enhance pattern/wildcard capabilities for dependenciesToScan to GAVT
* [SUREFIRE-1585](https://issues.apache.org/jira/browse/SUREFIRE-1585) - Align JUnit Platform version at runtime
* [SUREFIRE-1617](https://issues.apache.org/jira/browse/SUREFIRE-1617) - Surefire fails with bad message when path contains colon
* [SUREFIRE-1619](https://issues.apache.org/jira/browse/SUREFIRE-1619) - FileReporter should not use PintWriter because i/o errors are not thrown
* [SUREFIRE-1620](https://issues.apache.org/jira/browse/SUREFIRE-1620) - Replaced deprecated component ArtifactFactory with RepositorySystem
* [SUREFIRE-1634](https://issues.apache.org/jira/browse/SUREFIRE-1634) - Add missing since tags to excludesFile and includesFile
* [SUREFIRE-1635](https://issues.apache.org/jira/browse/SUREFIRE-1635) - Set properties readonly where it doesn't make sense to change values
* [SUREFIRE-1647](https://issues.apache.org/jira/browse/SUREFIRE-1647) - When using junit5, delay loading testClass and use myown classLoader
* [SUREFIRE-1666](https://issues.apache.org/jira/browse/SUREFIRE-1666) - printSummary=false does not completely suppress the summary on the console
* [SUREFIRE-1668](https://issues.apache.org/jira/browse/SUREFIRE-1668) - The stackTrace should use CDATA in XML report.
* [SUREFIRE-1682](https://issues.apache.org/jira/browse/SUREFIRE-1682) - Default value for config parameter 'shutdown' should change from 'testset' to 'exit'
* [SUREFIRE-1702](https://issues.apache.org/jira/browse/SUREFIRE-1702) - \[JDK 11 Alpine Linux\] JAR content is not flushed completely down to drive "Error: Invalid or corrupt jarfile target/surefire/surefirebooter13749914711390838584.jar"
* [SUREFIRE-1703](https://issues.apache.org/jira/browse/SUREFIRE-1703) - \[JDK 11 Alpine Linux\] Surefire handled random order of pid and /procps does not filter pid on busybox distributions
* [SUREFIRE-1704](https://issues.apache.org/jira/browse/SUREFIRE-1704) - \[JDK 11 Alpine Linux\] long etime within hours has format 2h01 on busybox

Tasks:

* [SUREFIRE-1678](https://issues.apache.org/jira/browse/SUREFIRE-1678) - JUnit5 Integration Tests should test wide spectrum of versions
* [SUREFIRE-1683](https://issues.apache.org/jira/browse/SUREFIRE-1683) - Buildfix: TLS 1.2 passed to maven-invoker-plugin via system property
* [SUREFIRE-1706](https://issues.apache.org/jira/browse/SUREFIRE-1706) - Use the checkstyle in tests and set includeTestSourceDirectory=true
* [SUREFIRE-1714](https://issues.apache.org/jira/browse/SUREFIRE-1714) - Created module "surefire-shared-utils" as a required dependency in "surefire-extensions-api" and "maven-surefire-common"


Dependency upgrades:

 * [SUREFIRE-1642](https://issues.apache.org/jira/browse/SUREFIRE-1642) - Upgrade plexus-java to Version 1.0.3
 * [SUREFIRE-1646](https://issues.apache.org/jira/browse/SUREFIRE-1646) - Upgrade maven-artifact-transfer Version 0.11.0
 * [SUREFIRE-1672](https://issues.apache.org/jira/browse/SUREFIRE-1672) - DOXIA updated to version 1.9
 * [SUREFIRE-1674](https://issues.apache.org/jira/browse/SUREFIRE-1674) - DOXIA TOOLS updated to version 1.9.1
 * [SUREFIRE-1685](https://issues.apache.org/jira/browse/SUREFIRE-1685) - Upgrade maven-fluido-skin to 1.8 and maven-site-plugin to 3.8.2


Enjoy,

-The Apache Maven team

