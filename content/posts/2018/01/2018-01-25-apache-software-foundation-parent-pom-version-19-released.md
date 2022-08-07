---
title: "Apache Software Foundation Parent POM Version 19 Released"
date: 2018-01-25T10:15:00
lastmod: 2018-01-25T10:15
categories:
  - asf-poms
  - parent-poms
---
The Apache Maven team is pleased to announce the release of the 
[Apache Software Foundation Parent POM Version 19](https://maven.apache.org/pom/asf/).

You should specify the version in your project as parent like the following:

```xml
<parent>
   <groupId>org.apache</groupId>
   <artifactId>apache</artifactId>
   <version>19</version>
</parent>
```
You can download the appropriate sources etc. from the download page:

https://maven.apache.org/pom/asf/download.html


<!-- more -->

Release Notes - Maven POMs - Version ASF-19

Improvements:

 * [MPOM-118](https://issues.apache.org/jira/browse/MPOM-118) - Enforce strong GPG signatures by default
 * [MPOM-124](https://issues.apache.org/jira/browse/MPOM-124) - Text about for default compiler version giving 1.4 which is wrong
 * [MPOM-129](https://issues.apache.org/jira/browse/MPOM-129) - Upgrade apache-rat-plugin to 0.12
 * [MPOM-130](https://issues.apache.org/jira/browse/MPOM-130) - Upgrade maven-jar-plugin to version 3.0.2
 * [MPOM-131](https://issues.apache.org/jira/browse/MPOM-131) - Upgrade maven-source-plugin to 3.0.1
 * [MPOM-136](https://issues.apache.org/jira/browse/MPOM-136) - Upgrade maven-resources-plugin to 3.0.1
 * [MPOM-137](https://issues.apache.org/jira/browse/MPOM-137) - Upgrade maven-scm-plugin to 1.9.5
 * [MPOM-164](https://issues.apache.org/jira/browse/MPOM-164) - Require Maven 3.0 to build ASF projects
 * [MPOM-169](https://issues.apache.org/jira/browse/MPOM-169) - Update to latest RAT 0.12

Tasks:

 * [MPOM-132](https://issues.apache.org/jira/browse/MPOM-132) - assembly plugin should use posix, not gnu for tarLongFileMode
 * [MPOM-141](https://issues.apache.org/jira/browse/MPOM-141) - Upgrade maven-assembly-plugin to 3.0.0.
 * [MPOM-142](https://issues.apache.org/jira/browse/MPOM-142) - Upgrade maven-compiler-plugin to 3.6.0.
 * [MPOM-144](https://issues.apache.org/jira/browse/MPOM-144) - Upgrade maven-javadoc-plugin to 2.10.4.
 * [MPOM-146](https://issues.apache.org/jira/browse/MPOM-146) - Upgrade maven-resources-plugin to 3.0.2.
 * [MPOM-147](https://issues.apache.org/jira/browse/MPOM-147) - Upgrade maven-war-plugin to 3.0.0.
 * [MPOM-148](https://issues.apache.org/jira/browse/MPOM-148) - Upgrade clirr-maven-plugin to 2.8.
 * [MPOM-165](https://issues.apache.org/jira/browse/MPOM-165) - upgrade maven-invoker-plugin to 3.0.1
 * [MPOM-166](https://issues.apache.org/jira/browse/MPOM-166) - upgrade maven-plugin-plugin to 3.5
 * [MPOM-170](https://issues.apache.org/jira/browse/MPOM-170) - migrate to Git
 
Dependency upgrade:

 * [MPOM-173](https://issues.apache.org/jira/browse/MPOM-173) - Upgrade mave-surefire/failsafe-plugin 2.20.1

Changes since version 18:

 * GitBox: [Changes since version 18][change-18]
 * GitHub: [Changes since version 18][change-github-18]


Enjoy,
    
-The Apache Maven team

[change-18]: https://gitbox.apache.org/repos/asf?p=maven-apache-parent.git;a=blobdiff;f=pom.xml;hb=apache-19;hpb=apache-18
[change-github-18]: https://github.com/apache/maven-apache-parent/compare/apache-18...apache-19

