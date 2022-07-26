---
title: "Apache Maven Surefire Plugin Version 2.20 Released"
date: 2017-04-12T19:30:23
lastmod: 2017-04-12T19:30:23
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Surefire Plugin, version 2.20](https://maven.apache.org/plugins/maven-surefire-plugin/).

The release contains 70 bug fixes.
Again we received contributions from the community in form of bug reports
and bug fixes.

Thank you and keep them coming!

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-plugin</artifactId>
  <version>2.20</version>
</plugin>
```

or for failsafe:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-failsafe-plugin</artifactId>
  <version>2.20</version>
</plugin>
```

or for surefire-report:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-report-plugin</artifactId>
  <version>2.20</version>
</plugin>
```


<!-- more -->

[Release Notes - Maven Surefire - Version 2.20](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317927&amp;version=12334636)

Bugs:

  * [SUREFIRE-725](https://issues.apache.org/jira/browse/SUREFIRE-725) - Test result output ist sent to System.out instead of using logger
  * [SUREFIRE-1198](https://issues.apache.org/jira/browse/SUREFIRE-1198) - Failsafe does not allow to configure the jar file to use
  * [SUREFIRE-1216](https://issues.apache.org/jira/browse/SUREFIRE-1216) - TEST-*.xml files generated by Surefire are invalid
  * [SUREFIRE-1217](https://issues.apache.org/jira/browse/SUREFIRE-1217) - Differentiate XML schema for failsafe and surefire
  * [SUREFIRE-1239](https://issues.apache.org/jira/browse/SUREFIRE-1239) - ExecutionException java.lang.RuntimeException: org.apache.maven.surefire.report.ReporterException: When writing xml report stdout/stderr (No such file or directory)
  * [SUREFIRE-1244](https://issues.apache.org/jira/browse/SUREFIRE-1244) - NumberFormatException in parallel test run with runOrder = failedFirst
  * [SUREFIRE-1250](https://issues.apache.org/jira/browse/SUREFIRE-1250) - Regex testcase filtering: exception when hashmark is regex-quoted
  * [SUREFIRE-1252](https://issues.apache.org/jira/browse/SUREFIRE-1252) - Tests not being run when using XML suite file with TestNG
  * [SUREFIRE-1268](https://issues.apache.org/jira/browse/SUREFIRE-1268) - With JUnit listener, redirectTestOutputToFile is ignored
  * [SUREFIRE-1278](https://issues.apache.org/jira/browse/SUREFIRE-1278) - TestNG tests are run with group name that ends with specified group
  * [SUREFIRE-1284](https://issues.apache.org/jira/browse/SUREFIRE-1284) - Statistics file should not be determined as (directory of surefire-reports).getParentFile().getParentFile(). It is a problem if report directory is customized. Statistics file should be located in project dir.
  * [SUREFIRE-1289](https://issues.apache.org/jira/browse/SUREFIRE-1289) - forkedProcessTimeoutInSeconds should not use ping timer of 10 seconds but 0.1 sec period timer
  * [SUREFIRE-1290](https://issues.apache.org/jira/browse/SUREFIRE-1290) - Orphan Fork JVMs should be killed after any previous finished with fatal error
  * [SUREFIRE-1295](https://issues.apache.org/jira/browse/SUREFIRE-1295) - JVM crashes in forks do not log the name of the failing test
  * [SUREFIRE-1296](https://issues.apache.org/jira/browse/SUREFIRE-1296) - The project build directory should not be determined as (directory of surefire-reports).getParentFile(). It is a problem if report directory is customized.
  * [SUREFIRE-1305](https://issues.apache.org/jira/browse/SUREFIRE-1305) - surefire fails on parallel tests when newline character is in test description
  * [SUREFIRE-1312](https://issues.apache.org/jira/browse/SUREFIRE-1312) - Classpath containing url special characters with Reflections not working
  * [SUREFIRE-1313](https://issues.apache.org/jira/browse/SUREFIRE-1313) - Unify console report result in SurefirePlugin and VerifyMojo
  * [SUREFIRE-1315](https://issues.apache.org/jira/browse/SUREFIRE-1315) - Fix stylistic errors in DefaultReporterFactory
  * [SUREFIRE-1322](https://issues.apache.org/jira/browse/SUREFIRE-1322) - Surefire and Failsafe should dump critical errors in dump file and console
  * [SUREFIRE-1324](https://issues.apache.org/jira/browse/SUREFIRE-1324) - Surefire incorrectly suppresses exceptions when closing resources.
  * [SUREFIRE-1333](https://issues.apache.org/jira/browse/SUREFIRE-1333) - Process pending events from forked process after exited and then finish forked Thread.
  * [SUREFIRE-1341](https://issues.apache.org/jira/browse/SUREFIRE-1341) - Documentation of configuration parameters in Failsafe should mention IT instead or Test.java
  * [SUREFIRE-1342](https://issues.apache.org/jira/browse/SUREFIRE-1342) - Acknowledge normal exit of JVM and drain shared memory between processes
  * [SUREFIRE-1349](https://issues.apache.org/jira/browse/SUREFIRE-1349) - FreeBSD cross process communication needs to commit stdout data in forked JVM within a synchronized block
  * [SUREFIRE-1352](https://issues.apache.org/jira/browse/SUREFIRE-1352) - Dump file [date]-jvmRun[N] - where N should be real fork number
  * [SUREFIRE-1354](https://issues.apache.org/jira/browse/SUREFIRE-1354) - Sometimes BYE_ACK command is lost
  * [SUREFIRE-1357](https://issues.apache.org/jira/browse/SUREFIRE-1357) - PING scheduler kills JVM in debug mode
  * [SUREFIRE-1358](https://issues.apache.org/jira/browse/SUREFIRE-1358) - Directory in Class-Path in manifest of forked jvm ends with two slashes //

Documentation:

  * [SUREFIRE-1218](https://issues.apache.org/jira/browse/SUREFIRE-1218) - Improve fork-options-and-parallel-execution.html upon Stackoverflow users pitfalls
  * [SUREFIRE-1221](https://issues.apache.org/jira/browse/SUREFIRE-1221) - skipTests parameter example is incorrect
  * [SUREFIRE-1240](https://issues.apache.org/jira/browse/SUREFIRE-1240) - failsafe documentation on skipping tests by property does not use property
  * [SUREFIRE-1249](https://issues.apache.org/jira/browse/SUREFIRE-1249) - Typo in regex examples
  * [SUREFIRE-1257](https://issues.apache.org/jira/browse/SUREFIRE-1257) - incorrect XML for JUnit provider
  * [SUREFIRE-1276](https://issues.apache.org/jira/browse/SUREFIRE-1276) - Document handling of multiline exception messages
  * [SUREFIRE-1280](https://issues.apache.org/jira/browse/SUREFIRE-1280) - Replace "http://jira.codehaus.org" with "https://issues.apache.org/jira"
  * [SUREFIRE-1301](https://issues.apache.org/jira/browse/SUREFIRE-1301) - baseDir system-property gets overridden by other builder threads if forking is disabled
  * [SUREFIRE-1309](https://issues.apache.org/jira/browse/SUREFIRE-1309) - Clarify %regex
  * [SUREFIRE-1348](https://issues.apache.org/jira/browse/SUREFIRE-1348) - Documentation of parameter "argLine" for goal "surefire:test" lacks mention of a key change made in v2.17
  * [SUREFIRE-1355](https://issues.apache.org/jira/browse/SUREFIRE-1355) - Close reportSets tag

Improvements:

  * [SUREFIRE-1224](https://issues.apache.org/jira/browse/SUREFIRE-1224) - Improve Code Quality After Sonar Report
  * [SUREFIRE-1246](https://issues.apache.org/jira/browse/SUREFIRE-1246) - Surefire + Cobertura: Shutdown of Forked JVM timeouts before all thread ends
  * [SUREFIRE-1254](https://issues.apache.org/jira/browse/SUREFIRE-1254) - add color messages
  * [SUREFIRE-1260](https://issues.apache.org/jira/browse/SUREFIRE-1260) - Add **/*Tests.java as one of the default include patterns
  * [SUREFIRE-1272](https://issues.apache.org/jira/browse/SUREFIRE-1272) - Create better report for AssumptionFailure
  * [SUREFIRE-1275](https://issues.apache.org/jira/browse/SUREFIRE-1275) - Test regex patterns should be cached
  * [SUREFIRE-1293](https://issues.apache.org/jira/browse/SUREFIRE-1293) - Simplify org.apache.maven.plugin.surefire.report.TestSetRunListener by using the null object pattern
  * [SUREFIRE-1310](https://issues.apache.org/jira/browse/SUREFIRE-1310) - ForkClient should handle only one channel-id
  * [SUREFIRE-1317](https://issues.apache.org/jira/browse/SUREFIRE-1317) - Refactoring
  * [SUREFIRE-1350](https://issues.apache.org/jira/browse/SUREFIRE-1350) - Upgrade Version of maven-invoker-plugin to 2.0.0
  * [SUREFIRE-1356](https://issues.apache.org/jira/browse/SUREFIRE-1356) - ForkClient should distinguish between internal and stream errors

Tasks:

  * [SUREFIRE-1223](https://issues.apache.org/jira/browse/SUREFIRE-1223) - Cannot run invoker ITs on Windows with Maven 3.3.1+
  * [SUREFIRE-1270](https://issues.apache.org/jira/browse/SUREFIRE-1270) - Upgrade JaCoCo Version to 0.7.7
  * [SUREFIRE-1281](https://issues.apache.org/jira/browse/SUREFIRE-1281) - Fix permanently failing Surefire Windows Build
  * [SUREFIRE-1282](https://issues.apache.org/jira/browse/SUREFIRE-1282) - Use assumeJavaVersion() in integration tests
  * [SUREFIRE-1291](https://issues.apache.org/jira/browse/SUREFIRE-1291) - enable unit tests in surefire-integration-tests and rename Surefire1028UnableToRunSingleTest to *IT
  * [SUREFIRE-1311](https://issues.apache.org/jira/browse/SUREFIRE-1311) - JUnit47 provider should not internally parse JUnit Description
  * [SUREFIRE-1316](https://issues.apache.org/jira/browse/SUREFIRE-1316) - MVN 3.1.0 minimum in build time
  * [SUREFIRE-1318](https://issues.apache.org/jira/browse/SUREFIRE-1318) - Upgrade JaCoCo Version to 0.7.8
  * [SUREFIRE-1319](https://issues.apache.org/jira/browse/SUREFIRE-1319) - Upgrade RAT Plugin Version to 0.12
  * [SUREFIRE-1320](https://issues.apache.org/jira/browse/SUREFIRE-1320) - Upgrade Sniffer Plugin Version to 1.15
  * [SUREFIRE-1321](https://issues.apache.org/jira/browse/SUREFIRE-1321) - Integration tests should be cleaned up before running. Add goal=clean in maven-invoker-plugin.
  * [SUREFIRE-1326](https://issues.apache.org/jira/browse/SUREFIRE-1326) - Upgrade maven-shared-utils to 3.2.0.

Tests:

  * [SUREFIRE-1306](https://issues.apache.org/jira/browse/SUREFIRE-1306) - JUnit4RerunFailingTestsIT does not execute with the JUnit version configured in the test
  * [SUREFIRE-1308](https://issues.apache.org/jira/browse/SUREFIRE-1308) - Move Surefire1179IT to jiras package
  * [SUREFIRE-1332](https://issues.apache.org/jira/browse/SUREFIRE-1332) - SurefireLauncher duplicates functions and breaks build with Maven 3.5.0
  * [SUREFIRE-1338](https://issues.apache.org/jira/browse/SUREFIRE-1338) - Integration Tests should avoid using duplicated system properties.
  * [SUREFIRE-1351](https://issues.apache.org/jira/browse/SUREFIRE-1351) - Performance unit tests should GC to free limited memory size.
  * [SUREFIRE-1353](https://issues.apache.org/jira/browse/SUREFIRE-1353) - Integration tests testing jvm forks should use subprocess and not embedded mode

Wish:

  * [SUREFIRE-1297](https://issues.apache.org/jira/browse/SUREFIRE-1297) - Specify surefire temp directory for run in multiple processes


Enjoy,

-The Apache Maven team

