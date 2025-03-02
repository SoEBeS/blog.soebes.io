---
title: "Apache Maven Surefire Plugin Version 2.18.1 Released"
date: 2014-12-28T21:44:00
lastmod: 2014-12-28T21:44:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Surefire Plugin, version 2.18.1](http://maven.apache.org/plugins/maven-surefire-plugin/).

The release contains a number of bug fixes.
Again we received contributions from the community in form of bug reports
and bug fixes.

Thank you and keep them coming!


You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-plugin</artifactId>
  <version>2.18.1</version>
</plugin>
```

or for failsafe:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-failsafe-plugin</artifactId>
  <version>2.18.1</version>
</plugin>
```

or for surefire-report:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-report-plugin</artifactId>
  <version>2.18.1</version>
</plugin>
```


<!-- more -->

[Release Notes - Maven Surefire - Version 2.18.1](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=10541&version=20814)

Bugs:

 * [SUREFIRE-859](https://issues.apache.org/jira/browse/SUREFIRE-859) - Exception in thread "TreadedStreamConsumer" java.lang.RuntimeException during GC
 * [SUREFIRE-1036](https://issues.apache.org/jira/browse/SUREFIRE-1036) - Tests using MockitoJUnitRunner are always run regardless of membership in specified group
 * [SUREFIRE-1112](https://issues.apache.org/jira/browse/SUREFIRE-1112) - Remove uneccessary newlines in console output for test results with no error
 * [SUREFIRE-1114](https://issues.apache.org/jira/browse/SUREFIRE-1114) - NPE in TestSetStats. Concurrency issue with parallel methods on TestNG.
 * [SUREFIRE-1117](https://issues.apache.org/jira/browse/SUREFIRE-1117) - The documentation of re-run parameter should mention limitations with JUnit 4.xprovider
 * [SUREFIRE-1121](https://issues.apache.org/jira/browse/SUREFIRE-1121) - java.lang.NullPointerException org.apache.maven.plugin.surefire.report.DefaultReporterFactory.mergeFromOtherFactories(DefaultReporterFactory.java:82)
 * [SUREFIRE-1122](https://issues.apache.org/jira/browse/SUREFIRE-1122) - When running failsafe with -Dfailsafe.rerunFailingTestsCount and parallel all, the reports are not
generated correctly

Improvements:

 * [SUREFIRE-987](https://issues.apache.org/jira/browse/SUREFIRE-987) - Provide user property for suiteXmlFile so that it can be passed from Maven Command line
 * [SUREFIRE-995](https://issues.apache.org/jira/browse/SUREFIRE-995) - Support searching superclass for JUnit @Category
 * [SUREFIRE-1109](https://issues.apache.org/jira/browse/SUREFIRE-1109) - runOrder should have a user property
 * [SUREFIRE-1110](https://issues.apache.org/jira/browse/SUREFIRE-1110) - Document the memory requirements to run unit- and integration tests for a release test
 * [SUREFIRE-1116](https://issues.apache.org/jira/browse/SUREFIRE-1116) - Parallel Computer should use ConsoleLogger interface
 * [SUREFIRE-1120](https://issues.apache.org/jira/browse/SUREFIRE-1120) - Improved warning message "File encoding has not been set, ..."

Enjoy,

-The Apache Maven team

