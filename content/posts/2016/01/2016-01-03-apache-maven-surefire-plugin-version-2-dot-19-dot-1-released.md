---
title: "Apache Maven Surefire Plugin Version 2.19.1 Released"
date: 2016-01-03T20:45:33
lastmod: 2016-01-03T20:45:33
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Surefire Plugin, version 2.19.1](http://maven.apache.org/plugins/maven-surefire-plugin/).

The release contains a number of bug fixes.
Again we received contributions from the community in form of bug reports
and bug fixes.

Thank you and keep them coming!

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-plugin</artifactId>
  <version>2.19.1</version>
</plugin>
```

or for failsafe:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-failsafe-plugin</artifactId>
  <version>2.19.1</version>
</plugin>
```

or for surefire-report:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-report-plugin</artifactId>
  <version>2.19.1</version>
</plugin>
```


<!-- more -->

[Release Notes - Maven Surefire - Version 2.19.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317927&amp;version=12333959)

Bugs:

 * [SUREFIRE-1185](https://issues.apache.org/jira/browse/SUREFIRE-1185) -  single method test spews status of every single other test
 * [SUREFIRE-1187](https://issues.apache.org/jira/browse/SUREFIRE-1187) -  JUnit4 Provider created unnecessary Runner instance
 * [SUREFIRE-1189](https://issues.apache.org/jira/browse/SUREFIRE-1189) -  Prevent from I/O leakage. Thus close streams in finally block.
 * [SUREFIRE-1192](https://issues.apache.org/jira/browse/SUREFIRE-1192) -  Fixed Sonar and FindBug issues
 * [SUREFIRE-1193](https://issues.apache.org/jira/browse/SUREFIRE-1193) -  Surefire 2.19 hangs in the log4j build
 * [SUREFIRE-1194](https://issues.apache.org/jira/browse/SUREFIRE-1194) -  reporter argument does not work for TestNG
 * [SUREFIRE-1197](https://issues.apache.org/jira/browse/SUREFIRE-1197) -  Surefire 2.19 breaks tests under Windows due to fork problem
 * [SUREFIRE-1200](https://issues.apache.org/jira/browse/SUREFIRE-1200) -  Could not run single test by full name
 * [SUREFIRE-1203](https://issues.apache.org/jira/browse/SUREFIRE-1203) -  Surefire hangs after Test Execution
 * [SUREFIRE-1204](https://issues.apache.org/jira/browse/SUREFIRE-1204) -  -Dtest= option is broken in 2.19
 * [SUREFIRE-1208](https://issues.apache.org/jira/browse/SUREFIRE-1208) -  Start stream capture before loading tests
 * [SUREFIRE-1209](https://issues.apache.org/jira/browse/SUREFIRE-1209) -  rerunFailingTestsCount does not run failed tests if forkCount and surefire-junit47 is used
 * [SUREFIRE-1211](https://issues.apache.org/jira/browse/SUREFIRE-1211) -  surefire-testng runs JUnit tests
 * [SUREFIRE-1215](https://issues.apache.org/jira/browse/SUREFIRE-1215) -  refs/tags/surefire-2.19.1_vote-1 slows down the Maven build in 20 seconds

Improvements:

 * [SUREFIRE-1135](https://issues.apache.org/jira/browse/SUREFIRE-1135) -  Improve ignore message for TestNG
 * [SUREFIRE-1191](https://issues.apache.org/jira/browse/SUREFIRE-1191) -  Run Single Test with Package Name Doesn't work
 * [SUREFIRE-1202](https://issues.apache.org/jira/browse/SUREFIRE-1202) -  Allow rerunFailingTestsCount, skipAfterFailureCount together

Enjoy,

-The Apache Maven team

