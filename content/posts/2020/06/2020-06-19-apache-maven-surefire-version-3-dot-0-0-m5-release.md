---
title: "Apache Maven Surefire Plugin Version 3.0.0-M5 Released"
date: 2020-06-19T18:23:41
lastmod: 2020-06-19T18:23:41
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Surefire Plugin, version 3.0.0-M5](https://maven.apache.org/plugins/maven-surefire-plugin/).

The release contains 40 bug fixes.
Again we received contributions from the community in form of bug reports
and bug fixes. Thank you and keep them coming!

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-plugin</artifactId>
  <version>3.0.0-M5</version>
</plugin>
```

or for failsafe:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-failsafe-plugin</artifactId>
  <version>3.0.0-M5</version>
</plugin>
```

or for surefire-report:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-report-plugin</artifactId>
  <version>3.0.0-M5</version>
</plugin>
```

You can download the appropriate [sources etc. from the download page](https://maven.apache.org/surefire/download.cgi).


<!-- more -->

[Release Notes - Maven Surefire - Version 3.0.0-M5](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317927&version=12344612)

* Bugs:

  * [SUREFIRE-1570](https://issues.apache.org/jira/browse/SUREFIRE-1570) - Maven-fail-safe doesn't put testing JPMS module on module path
  * [SUREFIRE-1695](https://issues.apache.org/jira/browse/SUREFIRE-1695) - Support multiple inheritance of @Categories
  * [SUREFIRE-1719](https://issues.apache.org/jira/browse/SUREFIRE-1719) - Race condition results in "VM crash or System.exit called?" failure
  * [SUREFIRE-1721](https://issues.apache.org/jira/browse/SUREFIRE-1721) - fixed typo in JavaDoc for Failsafe: mvn test -Dsurefire.enableProcessChecker=all
  * [SUREFIRE-1725](https://issues.apache.org/jira/browse/SUREFIRE-1725) - Surefire in JUnit Vintage mode distributes tests very unevenly between forks, causing poor parallelism
  * [SUREFIRE-1741](https://issues.apache.org/jira/browse/SUREFIRE-1741) - Exceptions in parameterized test sources are ignored
  * [SUREFIRE-1746](https://issues.apache.org/jira/browse/SUREFIRE-1746) - Dependencies for dynamic provider contain Maven artifacts from the MOJO plugin
  * [SUREFIRE-1748](https://issues.apache.org/jira/browse/SUREFIRE-1748) - JUnit 5 Assertions.fail() breaks reporting
  * [SUREFIRE-1749](https://issues.apache.org/jira/browse/SUREFIRE-1749) - Correct useSystemClassloader used in message
  * [SUREFIRE-1759](https://issues.apache.org/jira/browse/SUREFIRE-1759) - NullPointerException from RunEntryStatisticsMap#serialize when there's a class-level @Ignore annotation
  * [SUREFIRE-1762](https://issues.apache.org/jira/browse/SUREFIRE-1762) - skipAfterFailureCount>0 with testng 7.1.0 resulting in java.lang.NoSuchMethodError: org.testng.TestNG.addListener(Lorg/testng/ITestListener;)V
  * [SUREFIRE-1782](https://issues.apache.org/jira/browse/SUREFIRE-1782) - Configured Environment Variables do not take effect unless also added to excludedEnvironmentVariables
  * [SUREFIRE-1783](https://issues.apache.org/jira/browse/SUREFIRE-1783) - Fork JVM defined by Toolchain should not inherit JAVA_HOME from Maven process
  * [SUREFIRE-1784](https://issues.apache.org/jira/browse/SUREFIRE-1784) - Fork JVM defined by jvm parameter should not inherit JAVA_HOME from Maven process
  * [SUREFIRE-1797](https://issues.apache.org/jira/browse/SUREFIRE-1797) - Surefire report with parameterized tests contain all names of test the same

* New Features:

  * [SUREFIRE-1234](https://issues.apache.org/jira/browse/SUREFIRE-1234) - Allow to configure JVM for tests by referencing a toolchain entry
  * [SUREFIRE-1516](https://issues.apache.org/jira/browse/SUREFIRE-1516) - Should surefire specialize test runner when test isolation (i.e., fork) is needed?
  * [SUREFIRE-1658](https://issues.apache.org/jira/browse/SUREFIRE-1658) - TCP/IP Channel for forked Surefire JVM. Extensions API and SPI. Polymorphism for remote and local process communication.
  * [SUREFIRE-1744](https://issues.apache.org/jira/browse/SUREFIRE-1744) - Enable system-out for successfuly passed tests as well
  * [SUREFIRE-1766](https://issues.apache.org/jira/browse/SUREFIRE-1766) - Surefire does not display TestNG data provider values on command line

* Improvements:

  * [SUREFIRE-1378](https://issues.apache.org/jira/browse/SUREFIRE-1378) - Nice to have systemPropertiesFile configurable by user property
  * [SUREFIRE-1728](https://issues.apache.org/jira/browse/SUREFIRE-1728) - maven.test.failure.ignore: differentiate between test failure and timeout
  * [SUREFIRE-1729](https://issues.apache.org/jira/browse/SUREFIRE-1729) - Run Order / JUnit5 supported in the Feature Matrix + tests
  * [SUREFIRE-1733](https://issues.apache.org/jira/browse/SUREFIRE-1733) - Surefire and Failsafe JPMS additions for JUnit 5.x execution
  * [SUREFIRE-1740](https://issues.apache.org/jira/browse/SUREFIRE-1740) - Prerequisite implementation for SUREFIRE-1658
  * [SUREFIRE-1758](https://issues.apache.org/jira/browse/SUREFIRE-1758) - JUnit Platform provider isn't mentioned in the docu about groups and excludeGroups
  * [SUREFIRE-1770](https://issues.apache.org/jira/browse/SUREFIRE-1770) - make build Reproducible
  * [SUREFIRE-1780](https://issues.apache.org/jira/browse/SUREFIRE-1780) - Print JPMS errors from native stream of the fork JVM
  * [SUREFIRE-1787](https://issues.apache.org/jira/browse/SUREFIRE-1787) - Support multiple runners (JUnit4, TestNG, other) and their API in JUnit5 Provider
  * [SUREFIRE-1793](https://issues.apache.org/jira/browse/SUREFIRE-1793) - Change the Java packge of surefire-api to the distinct package org.apache.maven.surefire.api
  * [SUREFIRE-1796](https://issues.apache.org/jira/browse/SUREFIRE-1796) - The session of TCP channel should be authenticated

* Tasks:

  * [SUREFIRE-1742](https://issues.apache.org/jira/browse/SUREFIRE-1742) - Updated JUnit 4.12 to JUnit 4.13 in the unit/IT tests.
  * [SUREFIRE-1781](https://issues.apache.org/jira/browse/SUREFIRE-1781) - Log a warning if forkCount = 0
  * [SUREFIRE-1788](https://issues.apache.org/jira/browse/SUREFIRE-1788) - Unhandled native logs in SurefireForkChannel
  * [SUREFIRE-1791](https://issues.apache.org/jira/browse/SUREFIRE-1791) - Documentation and the integration test for Spock/Groovy with JUnit5

* Dependency upgrades:

  * [SUREFIRE-1754](https://issues.apache.org/jira/browse/SUREFIRE-1754) - upgrade Doxia Sitetools to 1.9.2 to remove dependency on Struts
  * [SUREFIRE-1769](https://issues.apache.org/jira/browse/SUREFIRE-1769) - Upgrade Plexus Java to 1.0.5
  * [SUREFIRE-1774](https://issues.apache.org/jira/browse/SUREFIRE-1774) - Upgrade Maven Parent to Version 34
  * [SUREFIRE-1775](https://issues.apache.org/jira/browse/SUREFIRE-1775) - Upgrade Commons Compress to Version 1.20
  * [SUREFIRE-1777](https://issues.apache.org/jira/browse/SUREFIRE-1777) - Upgrade Fluido to Version 1.9

Enjoy,

-The Apache Maven team

