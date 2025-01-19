---
title: "Apache Software Foundation Parent POM Version 20 Released"
date: 2018-07-08T10:00:00
lastmod: 2018-07-08T10:00:00
categories:
  - asf-poms
  - parent-poms
---
The Apache Maven team is pleased to announce the release of the 
[Apache Software Foundation Parent POM Version 20](https://maven.apache.org/pom/asf/).

You should specify the version in your project as parent like the following:

```xml
<parent>
   <groupId>org.apache</groupId>
   <artifactId>apache</artifactId>
   <version>20</version>
</parent>
```
You can download the appropriate sources etc. from the download page:

https://maven.apache.org/pom/asf/download.html


<!-- more -->

Release Notes - Maven POMs - Version ASF-20

Improvements:

 * [MPOM-186](https://issues.apache.org/jira/browse/MPOM-186) - Upgrade several plugins to most recent versions for JDK9/10 Support
 * [MPOM-191](https://issues.apache.org/jira/browse/MPOM-191) - Add maven-ear-plugin version

Wishes:

 * [MPOM-194](https://issues.apache.org/jira/browse/MPOM-194) - upgrade compiler target to 1.7 (instead of 1.6)
 * [MPOM-195](https://issues.apache.org/jira/browse/MPOM-195) - update m-project-info-reports-p to 3.0.0 with its new report names

Dependency upgrades:

 * [MPOM-184](https://issues.apache.org/jira/browse/MPOM-184) - Upgrade maven-surefie/failsafe to 2.21.0 based on JDK 10 issues
 * [MPOM-192](https://issues.apache.org/jira/browse/MPOM-192) - Add maven-help-plugin


Changes since version 18:

 * GitBox: [Changes since version 19][change-20]
 * GitHub: [Changes since version 19][change-github-20]


Enjoy,
    
-The Apache Maven team

[change-20]: https://gitbox.apache.org/repos/asf?p=maven-apache-parent.git;a=blobdiff;f=pom.xml;hb=apache-20;hpb=apache-19
[change-github-20]: https://github.com/apache/maven-apache-parent/compare/apache-19...apache-20

