---
title: "Apache Maven Surefire Plugin Version 3.0.0-M6 Released"
date: 2022-04-04T17:33:33
lastmod: 2022-04-04T17:33:33
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Surefire Plugin, version 3.0.0-M6](https://maven.apache.org/plugins/maven-surefire-plugin/).

The release contains 111 bug fixes.
Again we received contributions from the community in form of bug reports
and bug fixes. Thank you and keep them coming!

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-plugin</artifactId>
  <version>3.0.0-M6</version>
</plugin>
```

or for failsafe:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-failsafe-plugin</artifactId>
  <version>3.0.0-M6</version>
</plugin>
```

or for surefire-report:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-report-plugin</artifactId>
  <version>3.0.0-M6</version>
</plugin>
```

You can download the appropriate [sources etc. from the download page](https://maven.apache.org/surefire/download.cgi).


<!-- more -->

[Release Notes - Maven Surefire - Version 3.0.0-M6](https://issues.apache.org/jira/secure/ReleaseNote.jspa?version=12344613&styleName=Text&projectId=12317927)

* Bugs:
 
  * [SUREFIRE-1398](https://issues.apache.org/jira/browse/SUREFIRE-1398) - TestNG test fails when both JUnitCore provider and TestNG provider are on classpath
  * [SUREFIRE-1426](https://issues.apache.org/jira/browse/SUREFIRE-1426) - Fork crash doesn't fail build with -Dmaven.test.failure.ignore=true
  * [SUREFIRE-1432](https://issues.apache.org/jira/browse/SUREFIRE-1432) - trimStackTrace = false by default
  * [SUREFIRE-1556](https://issues.apache.org/jira/browse/SUREFIRE-1556) - Test XML file is not valid when rerun "fails" with an assumption
  * [SUREFIRE-1659](https://issues.apache.org/jira/browse/SUREFIRE-1659) - Log4j logger in TestExecutionListener corrupts Surefire's STDOUT.
  * [SUREFIRE-1800](https://issues.apache.org/jira/browse/SUREFIRE-1800) - SurefireForkChannel binds to wrong IP
  * [SUREFIRE-1806](https://issues.apache.org/jira/browse/SUREFIRE-1806) - Site: Link to "TCP/IP Communication between Forks" is broken
  * [SUREFIRE-1809](https://issues.apache.org/jira/browse/SUREFIRE-1809) - Differences between Oracle JDK and AdoptOpenJDK caused by JPMS
  * [SUREFIRE-1815](https://issues.apache.org/jira/browse/SUREFIRE-1815) - Thread interrupted state cleared on any console output
  * [SUREFIRE-1820](https://issues.apache.org/jira/browse/SUREFIRE-1820) - Using SurefireForkNodeFactory with JDK8 results in NoSuchMethodError
  * [SUREFIRE-1840](https://issues.apache.org/jira/browse/SUREFIRE-1840) - Why sudo docker?
  * [SUREFIRE-1842](https://issues.apache.org/jira/browse/SUREFIRE-1842) - Surefire - NPE at end of successful test run
  * [SUREFIRE-1844](https://issues.apache.org/jira/browse/SUREFIRE-1844) - Trademarks / privacy policy footer displays broken
  * [SUREFIRE-1851](https://issues.apache.org/jira/browse/SUREFIRE-1851) - NPE in SmartStackTraceParser causes false positive test results
  * [SUREFIRE-1857](https://issues.apache.org/jira/browse/SUREFIRE-1857) - JUnit 5 report does not contain assertion failure message
  * [SUREFIRE-1865](https://issues.apache.org/jira/browse/SUREFIRE-1865) - ChecksumCalculator getSha1 does not compute checksums correctly
  * [SUREFIRE-1869](https://issues.apache.org/jira/browse/SUREFIRE-1869) - Classloader.getResource() doesn't encode blanks with forkCount=0
  * [SUREFIRE-1881](https://issues.apache.org/jira/browse/SUREFIRE-1881) - Java agent printing to native console makes build block when using SurefireForkNodeFactory
  * [SUREFIRE-1882](https://issues.apache.org/jira/browse/SUREFIRE-1882) - Fix failures when compiled on Java 9+ and run on Java 8
  * [SUREFIRE-1890](https://issues.apache.org/jira/browse/SUREFIRE-1890) - Not compatible with TestNG 7.4.0
  * [SUREFIRE-1894](https://issues.apache.org/jira/browse/SUREFIRE-1894) - Surefire report XML schema is incomplete (attribute version not allowed in testsuite)
  * [SUREFIRE-1909](https://issues.apache.org/jira/browse/SUREFIRE-1909) - Support JUnit 5 reflection access by changing add-exports to add-opens
  * [SUREFIRE-1910](https://issues.apache.org/jira/browse/SUREFIRE-1910) - Missleading error message when using -Dtest=....
  * [SUREFIRE-1912](https://issues.apache.org/jira/browse/SUREFIRE-1912) - user.dir should not be set lazily within the surefire fork JVM
  * [SUREFIRE-1913](https://issues.apache.org/jira/browse/SUREFIRE-1913) - system properties should be restored after the in-process tests have been executed
  * [SUREFIRE-1914](https://issues.apache.org/jira/browse/SUREFIRE-1914) - XML report omits method signature / display name of Junit 5 parameterized tests if testset reporter is configured to use phrased naming
  * [SUREFIRE-1926](https://issues.apache.org/jira/browse/SUREFIRE-1926) - Console logs should be synchronized
  * [SUREFIRE-1935](https://issues.apache.org/jira/browse/SUREFIRE-1935) - Upgrade to JUnit Platform 1.8, start Launcher via LauncherSession
  * [SUREFIRE-1945](https://issues.apache.org/jira/browse/SUREFIRE-1945) - crashed tests - unit tests with large logging output does not produce surefire report
  * [SUREFIRE-1967](https://issues.apache.org/jira/browse/SUREFIRE-1967) - High resource consumption when executing TestNG tests in parallel mode with a suite file
  * [SUREFIRE-1975](https://issues.apache.org/jira/browse/SUREFIRE-1975) - JDK18 - The Security Manager is deprecated and will be removed in a future release
  * [SUREFIRE-1982](https://issues.apache.org/jira/browse/SUREFIRE-1982) - Fix failures (java.nio.ChartBuffer) when compiled on Java 9+ and run on Java 8
  * [SUREFIRE-1983](https://issues.apache.org/jira/browse/SUREFIRE-1983) - Corrupted STDOUT by directly writing to native stream in forked JVM 1. [setupJunitLogger() should be called AFTER startCapture()]
  * [SUREFIRE-1990](https://issues.apache.org/jira/browse/SUREFIRE-1990) - The previous XML report should be deleted before new run or re-run
  * [SUREFIRE-1993](https://issues.apache.org/jira/browse/SUREFIRE-1993) - Failsafe fails to detect module dependencies
  * [SUREFIRE-2002](https://issues.apache.org/jira/browse/SUREFIRE-2002) - TCP client throws WritePendingException
  * [SUREFIRE-2006](https://issues.apache.org/jira/browse/SUREFIRE-2006) - Don't use Services Transformer in shadefire
  * [SUREFIRE-2023](https://issues.apache.org/jira/browse/SUREFIRE-2023) - The integration test Surefire946KillMainProcessInReusableForkIT hanged and timed out because SIGTERM happened before the first test has started. The plugin should be able to terminate itself whenever after SIGTERM.
  * [SUREFIRE-2036](https://issues.apache.org/jira/browse/SUREFIRE-2036) - Regression: 3.0.0-M5 fails with configured JUnit 5 provider
  * [SUREFIRE-2040](https://issues.apache.org/jira/browse/SUREFIRE-2040) - No tests executed with junit-platform-suite and -Dtest=TestSuite

* New Features:

  * [SUREFIRE-756](https://issues.apache.org/jira/browse/SUREFIRE-756) - Allow ability to capture executed random runOrder for re-play purposes
  * [SUREFIRE-1854](https://issues.apache.org/jira/browse/SUREFIRE-1854) - Support include/exclude junit test engine
  * [SUREFIRE-1860](https://issues.apache.org/jira/browse/SUREFIRE-1860) - extend ReportEntry interface and SimpleReportEntry with mandatory properties runMode:String, testRunId:long
  * [SUREFIRE-1878](https://issues.apache.org/jira/browse/SUREFIRE-1878) - Add failOnFlakeCount option
  * [SUREFIRE-1893](https://issues.apache.org/jira/browse/SUREFIRE-1893) - New maven-surefire JUnit5 extension by Fabricio Yamamoto
  * [SUREFIRE-1964](https://issues.apache.org/jira/browse/SUREFIRE-1964) - Method filtering support on excludes and includes file

* Improvements:
 
  * [SUREFIRE-1824](https://issues.apache.org/jira/browse/SUREFIRE-1824) - failsafe-summary.xml should properly use UTF-8
  * [SUREFIRE-1825](https://issues.apache.org/jira/browse/SUREFIRE-1825) - Unable to zip the Cucumber TXT report file on Linux and MacOS
  * [SUREFIRE-1826](https://issues.apache.org/jira/browse/SUREFIRE-1826) - Improved performance of ThreadedStreamConsumer
  * [SUREFIRE-1827](https://issues.apache.org/jira/browse/SUREFIRE-1827) - The console output is not flushed
  * [SUREFIRE-1845](https://issues.apache.org/jira/browse/SUREFIRE-1845) - Fixed the performance of Utf8RecodingDeferredFileOutputStream as a bottleneck for the tests with logs
  * [SUREFIRE-1846](https://issues.apache.org/jira/browse/SUREFIRE-1846) - Remove Base64 in the Encoder/Decoder and gain the performance for the communication flow: Fork to Plugin
  * [SUREFIRE-1847](https://issues.apache.org/jira/browse/SUREFIRE-1847) - Remove Base64 in the Encoder/Decoder and gain the performance for the communication flow: Plugin to Fork
  * [SUREFIRE-1853](https://issues.apache.org/jira/browse/SUREFIRE-1853) - Clarify useModulePath documentation
  * [SUREFIRE-1856](https://issues.apache.org/jira/browse/SUREFIRE-1856) - Updated documentation for the TestNG Provider - may not disable JUnit in suiteXmlFiles
  * [SUREFIRE-1858](https://issues.apache.org/jira/browse/SUREFIRE-1858) - Change default debug options to not use legacy options
  * [SUREFIRE-1954](https://issues.apache.org/jira/browse/SUREFIRE-1954) - move inner class ProviderList to upper level
  * [SUREFIRE-1955](https://issues.apache.org/jira/browse/SUREFIRE-1955) - Switch project to Java 8
  * [SUREFIRE-1957](https://issues.apache.org/jira/browse/SUREFIRE-1957) - Get rid of maven-artifact-transfer
  * [SUREFIRE-1958](https://issues.apache.org/jira/browse/SUREFIRE-1958) - Replace fest-assert by AssertJ
  * [SUREFIRE-1959](https://issues.apache.org/jira/browse/SUREFIRE-1959) - Update plugin (requires Maven 3.2.5+)
  * [SUREFIRE-1965](https://issues.apache.org/jira/browse/SUREFIRE-1965) - Refactor beanshell script in project
  * [SUREFIRE-1972](https://issues.apache.org/jira/browse/SUREFIRE-1972) - Use current version of surefire-shared-utils
  * [SUREFIRE-1987](https://issues.apache.org/jira/browse/SUREFIRE-1987) - Refactor ProviderDetector#autoDetectOneWellKnownProvider
  * [SUREFIRE-1992](https://issues.apache.org/jira/browse/SUREFIRE-1992) - Increase output length of test errors/failures in summary
  * [SUREFIRE-1994](https://issues.apache.org/jira/browse/SUREFIRE-1994) - Upgrade and configure javacc-maven-plugin in module surefire-grouper
  * [SUREFIRE-1995](https://issues.apache.org/jira/browse/SUREFIRE-1995) - Ping and process checker should use isolated schedulers and the errors should be logged
  * [SUREFIRE-1997](https://issues.apache.org/jira/browse/SUREFIRE-1997) - InterruptedIOException and cause:InterruptedException have the same purpose and should be caught in CommandReader
  * [SUREFIRE-1998](https://issues.apache.org/jira/browse/SUREFIRE-1998) - Interrupted PPID Checker should have the same meaning as stopped PPID Checker
  * [SUREFIRE-1999](https://issues.apache.org/jira/browse/SUREFIRE-1999) - PPID checker should redirect the error stream of the checker command to a dump file
  * [SUREFIRE-2005](https://issues.apache.org/jira/browse/SUREFIRE-2005) - Improved dump message "Boot Manifest-JAR contains absolute paths in classpath" with exception message
  * [SUREFIRE-2009](https://issues.apache.org/jira/browse/SUREFIRE-2009) - Refactoring of surefire-junit3. JUnitTestSetExecutor and PojoTestSetExecutor should be stateless.
  * [SUREFIRE-2011](https://issues.apache.org/jira/browse/SUREFIRE-2011) - Updated abstractions which helps associating standard out/err with a test
  * [SUREFIRE-2012](https://issues.apache.org/jira/browse/SUREFIRE-2012) - Use maven-shared-utils instead of surefire-shared-utils in Report Parser. Removed commons-lang in Report Plugin.
  * [SUREFIRE-2014](https://issues.apache.org/jira/browse/SUREFIRE-2014) - Implement testRunId and RunMode in the EventEncoder and EventDecoder
  * [SUREFIRE-2015](https://issues.apache.org/jira/browse/SUREFIRE-2015) - Implement testRunId and RunMode in the SimpleReportEntry
  * [SUREFIRE-2016](https://issues.apache.org/jira/browse/SUREFIRE-2016) - The MOJO parameter testSourceDirectory is used only in the TestNG HTML, and it should be optional. Javadoc and documentation should be fixed.
  * [SUREFIRE-2017](https://issues.apache.org/jira/browse/SUREFIRE-2017) - Unstable build with ParallelParameterized
  * [SUREFIRE-2019](https://issues.apache.org/jira/browse/SUREFIRE-2019) - ThreadedStreamConsumer - use Thread.join() instead of CountDownLatch.await()
  * [SUREFIRE-2020](https://issues.apache.org/jira/browse/SUREFIRE-2020) - Use addShutDownHook() from maven-shared-utils
  * [SUREFIRE-2021](https://issues.apache.org/jira/browse/SUREFIRE-2021) - Commands should be flushed immediately. Use Channels.newChannel() instead of newBufferedChannel(). Delete the old flushing mechanism on forked processes.
  * [SUREFIRE-2024](https://issues.apache.org/jira/browse/SUREFIRE-2024) - Replace testng-junit5 by testng-engine in tests and documentation
  * [SUREFIRE-2025](https://issues.apache.org/jira/browse/SUREFIRE-2025) - Updated abstractions which helps associating systemProperties() with a test context
  * [SUREFIRE-2026](https://issues.apache.org/jira/browse/SUREFIRE-2026) - Improve assertions in Surefire1787JUnit5IT
  * [SUREFIRE-2031](https://issues.apache.org/jira/browse/SUREFIRE-2031) - Both fields/parameters "includes" and "excludes" should be in target MOJO class. User properties should be unique.
  * [SUREFIRE-2042](https://issues.apache.org/jira/browse/SUREFIRE-2042) - Remove unused method TestListResolver#getWildcard
  * [SUREFIRE-2046](https://issues.apache.org/jira/browse/SUREFIRE-2046) - Resolved TODOs. Updated callbacks ForkedProcessPropertyEventListener and ForkedProcessStandardOutErrEventListener.
  * [SUREFIRE-2051](https://issues.apache.org/jira/browse/SUREFIRE-2051) - Propagate `ArtifactResolutionException` while resolving artifacts in `SurefireDependencyResolver`
  * [SUREFIRE-2052](https://issues.apache.org/jira/browse/SUREFIRE-2052) - Handles internal exceptions do not have suppressed exceptions in ThreadedStreamConsumer

* Test:

  * [SUREFIRE-1922](https://issues.apache.org/jira/browse/SUREFIRE-1922) - Fixed internal tests after SUREFIRE-1921

* Wish:
 
  * [SUREFIRE-1908](https://issues.apache.org/jira/browse/SUREFIRE-1908) - Wish by Stackoverflow - Documented strategy with parallel Java packages

* Tasks:

  * [SUREFIRE-1807](https://issues.apache.org/jira/browse/SUREFIRE-1807) - Shadefire should not duplicate entries in Provider SPI
  * [SUREFIRE-1889](https://issues.apache.org/jira/browse/SUREFIRE-1889) - Support Java 16 in Surefire Integration Tests

* Dependency upgrades:
 
  * [SUREFIRE-1785](https://issues.apache.org/jira/browse/SUREFIRE-1785) - Upgrade Maven Artifact Transfer to Version 0.13.1
  * [SUREFIRE-1850](https://issues.apache.org/jira/browse/SUREFIRE-1850) - Unnecessary dependency incorrectly resolved in certain phases
  * [SUREFIRE-1886](https://issues.apache.org/jira/browse/SUREFIRE-1886) - Upgrade plexus-java to Version 1.0.6
  * [SUREFIRE-1921](https://issues.apache.org/jira/browse/SUREFIRE-1921) - Upgrade Doxia to Version 1.10
  * [SUREFIRE-1924](https://issues.apache.org/jira/browse/SUREFIRE-1924) - Upgrade plexus-java to Version 1.0.7
  * [SUREFIRE-1937](https://issues.apache.org/jira/browse/SUREFIRE-1937) - Upgrade Apache commons-io to Version 2.11.0
  * [SUREFIRE-1938](https://issues.apache.org/jira/browse/SUREFIRE-1938) - Upgrade Apache commons-compress to Version 1.21
  * [SUREFIRE-1968](https://issues.apache.org/jira/browse/SUREFIRE-1968) - Bump maven Plugin Tools to 3.6.2
  * [SUREFIRE-1974](https://issues.apache.org/jira/browse/SUREFIRE-1974) - Upgrade plexus-java to Version 1.1.0
  * [SUREFIRE-1977](https://issues.apache.org/jira/browse/SUREFIRE-1977) - Upgrade com.google.code.findbugs:jsr305 from 2.0.3 to 3.0.2
  * [SUREFIRE-1979](https://issues.apache.org/jira/browse/SUREFIRE-1979) - Upgrade doxiaSitetoolsVersion from 1.9.2 to 1.11.1
  * [SUREFIRE-1980](https://issues.apache.org/jira/browse/SUREFIRE-1980) - Upgrade Apache commons-lang3 to 3.12.0
  * [SUREFIRE-1981](https://issues.apache.org/jira/browse/SUREFIRE-1981) - Upgrade Apache maven-shared-utils to 3.3.4
  * [SUREFIRE-1989](https://issues.apache.org/jira/browse/SUREFIRE-1989) - Update maven-common-artifact-filters to Version 3.1.1
  * [SUREFIRE-1996](https://issues.apache.org/jira/browse/SUREFIRE-1996) - Upgrade plexus-java to Version 1.1.1
  * [SUREFIRE-2003](https://issues.apache.org/jira/browse/SUREFIRE-2003) - Upgrade Maven Reporting to 3.1.0
  * [SUREFIRE-2008](https://issues.apache.org/jira/browse/SUREFIRE-2008) - Upgrade animal-sniffer-maven-plugin to 1.21
  * [SUREFIRE-2038](https://issues.apache.org/jira/browse/SUREFIRE-2038) - Upgrade Maven Parent to 35

Enjoy,

-The Apache Maven team
