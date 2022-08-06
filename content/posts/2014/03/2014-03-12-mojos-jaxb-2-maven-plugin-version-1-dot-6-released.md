---
title: "Mojo's JAXB-2 Maven Plugin Version 1.6 - Released"
date: 2014-03-12T20:54:00
lastmod: 2014-03-12T20:54
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
Hi,

The Mojo team is pleased to announce the release of 
[Mojo's JAXB-2 Maven Plugin version 1.6](http://mojo.codehaus.org/jaxb2-maven-plugin/).


Significant updates in this relase is the upgrade to JAXB 2.2 and support for JDK 8. 
Please also note that the plugin now requires Maven 2.2.1+ and Java 6+ for execution.


To get this update, simply specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>jaxb2-maven-plugin</artifactId>
  <version>1.6</version>
</plugin>
```

[Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11699&version=18747)

<!-- more -->


Bugs:

 * [MJAXB-8](https://issues.apache.org/jira/browse/MJAXB-8) - When having multiple executions the jaxb plugin uses same staleFile for both runs
 * [MJAXB-79](https://issues.apache.org/jira/browse/MJAXB-79) - JAXB-2 Maven Plugin don't include the license file
 * [MJAXB-80](https://issues.apache.org/jira/browse/MJAXB-80) - Schemagen has namespace prefix problem
 * [MJAXB-83](https://issues.apache.org/jira/browse/MJAXB-83) - Provide support for JDK8

Improvements:

 * [MJAXB-61](https://issues.apache.org/jira/browse/MJAXB-61) - Upgrade to JAXB 2.2
 * [MJAXB-81](https://issues.apache.org/jira/browse/MJAXB-81) - transformSchema should also replace prefix in "type" attribute
 * [MJAXB-85](https://issues.apache.org/jira/browse/MJAXB-85) - Upgrade dependency to Java 6
 * [MJAXB-86](https://issues.apache.org/jira/browse/MJAXB-86) - Upgrade requirement to Maven 2.2.1

Task

 * [MJAXB-45](https://issues.apache.org/jira/browse/MJAXB-45) - Add verify scripts for integration tests
 * [MJAXB-84](https://issues.apache.org/jira/browse/MJAXB-84) - Convert to Mojo Java 5 annotations
 * [MJAXB-88](https://issues.apache.org/jira/browse/MJAXB-88) - Random Unit test failure


Enjoy,

The Mojo team.
