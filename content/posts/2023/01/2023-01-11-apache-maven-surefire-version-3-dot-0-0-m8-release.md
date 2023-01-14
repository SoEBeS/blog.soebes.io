---
title: "Apache Maven Surefire Plugin Version 3.0.0-M8 Released"
date: 2023-01-11T22:01:02
lastmod: 2023-01-11T22:01:02
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Surefire Plugin, version 3.0.0-M8](https://maven.apache.org/plugins/maven-surefire-plugin/).

The release contains 18 fixes and enhancements.
Again we received contributions from the community in form of bug reports
and bug fixes. Thank you and keep them coming!

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-plugin</artifactId>
  <version>3.0.0-M8</version>
</plugin>
```

or for failsafe:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-failsafe-plugin</artifactId>
  <version>3.0.0-M8</version>
</plugin>
```

or for surefire-report:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-report-plugin</artifactId>
  <version>3.0.0-M8</version>
</plugin>
```

You can download the appropriate [sources etc. from the download page](https://maven.apache.org/surefire/download.cgi).


[Release Notes - Maven Surefire - Version 3.0.0-M8](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317927&version=12351809)

* Bugs:
 
  * [SUREFIRE-2032](https://issues.apache.org/jira/browse/SUREFIRE-2032) - When declare the @Disabled annotation at the class level, skip displayed in other test class
  * [SUREFIRE-2082](https://issues.apache.org/jira/browse/SUREFIRE-2082) - Huge test sets may open too many files
  * [SUREFIRE-2090](https://issues.apache.org/jira/browse/SUREFIRE-2090) - Xref link to source code with specified line number doesn't work. Missing "L" in anchor
  * [SUREFIRE-2101](https://issues.apache.org/jira/browse/SUREFIRE-2101) - Phrased test names with missing @DisplayName result in a "null" test name
  * [SUREFIRE-2109](https://issues.apache.org/jira/browse/SUREFIRE-2109) - User cannot write temporary file to surefire/ temp directory
  * [SUREFIRE-2117](https://issues.apache.org/jira/browse/SUREFIRE-2117) - XML report omits package and outer class name for tests in @Nested inner class if testset reporter is configured to use phrased naming
  * [SUREFIRE-2135](https://issues.apache.org/jira/browse/SUREFIRE-2135) - On Unix-like OS and JDK 18+ Surefire kills the forked JVM if PpidChecker is active and argLine is set to -Dfile.encoding=UTF-16


* New Feature

* [SUREFIRE-2139](https://issues.apache.org/jira/browse/SUREFIRE-2139) - Fully support Java 19 byte code


* Improvements:

  * [SUREFIRE-1654](https://issues.apache.org/jira/browse/SUREFIRE-1654) - Remove deprecated parameter 'forkMode' and use only 'forkCount'
  * [SUREFIRE-1962](https://issues.apache.org/jira/browse/SUREFIRE-1962) - Unit test for ProviderInfo#isApplicable
  * [SUREFIRE-2100](https://issues.apache.org/jira/browse/SUREFIRE-2100) - Improve behaviour for surefire-report goal with aggregate parameter
  * [SUREFIRE-2133](https://issues.apache.org/jira/browse/SUREFIRE-2133) - Make anchors start *before* the headings
  * [SUREFIRE-2136](https://issues.apache.org/jira/browse/SUREFIRE-2136) - UmlautDirIT: Revert special paths with colon in it to regular ones after test
  * [SUREFIRE-2138](https://issues.apache.org/jira/browse/SUREFIRE-2138) - Update JUnit versions used in docs/ITs


* Tasks:
 
  * [SUREFIRE-2122](https://issues.apache.org/jira/browse/SUREFIRE-2122) - Document how to develop on Surefire using IntelliJ
  * [SUREFIRE-2126](https://issues.apache.org/jira/browse/SUREFIRE-2126) - Use the latest surefire version 3.0.0-M7 with self testing
  * [SUREFIRE-2137](https://issues.apache.org/jira/browse/SUREFIRE-2137) - Run junit jupiter platform ITs with latest 5.8.x and 5.9.x as well


* Dependency upgrade
 
  * [SUREFIRE-2129](https://issues.apache.org/jira/browse/SUREFIRE-2129) - Upgrade Maven Reporting API to 3.1.1/Maven Reporting Impl to 3.2.0

Enjoy,

-The Apache Maven team
