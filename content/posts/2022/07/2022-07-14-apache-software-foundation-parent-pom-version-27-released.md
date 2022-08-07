---
title: "Apache Software Foundation Parent POM Version 27 Released"
date: 2022-07-14T14:54:54
lastmod: 2022-07-14T14:54:54
categories:
  - asf-poms
  - parent-poms
---
The Apache Maven team is pleased to announce the release of the 
[Apache Software Foundation Parent POM Version 27](https://maven.apache.org/pom/asf/).

You should specify the version in your project as parent like the following:

```xml
<parent>
   <groupId>org.apache</groupId>
   <artifactId>apache</artifactId>
   <version>27</version>
</parent>
```
You can download the appropriate sources etc. from the download page:

https://maven.apache.org/pom/asf/download.html


Release Notes - Maven POMs - Version ASF-27

* New Feature:
 
  * [MPOM-322](https://issues.apache.org/jira/browse/MPOM-322) - Add link to ASF privacy policy

* Improvement:
 
  * [MPOM-333](https://issues.apache.org/jira/browse/MPOM-333) - Remove definition for outdated maven-docck-plugin

* Dependency upgrades:
 
  * [MPOM-318](https://issues.apache.org/jira/browse/MPOM-318) - Bump maven-site-plugin from 3.11.0 to 3.12.0
  * [MPOM-319](https://issues.apache.org/jira/browse/MPOM-319) - Bump maven-javadoc-plugin from 3.3.2 to 3.4.0
  * [MPOM-320](https://issues.apache.org/jira/browse/MPOM-320) - Bump maven-antrun-plugin from 3.0.0 to 3.1.0
  * [MPOM-321](https://issues.apache.org/jira/browse/MPOM-321) - Bump maven-project-info-reports-plugin from 3.2.2 to 3.3.0
  * [MPOM-323](https://issues.apache.org/jira/browse/MPOM-323) - Upgrade fluido skin to 1.11.0
  * [MPOM-325](https://issues.apache.org/jira/browse/MPOM-325) - Bump maven-invoker-plugin from 3.2.2 to 3.3.0
  * [MPOM-326](https://issues.apache.org/jira/browse/MPOM-326) - Bump maven-scm-plugin from 1.12.2 to 1.13.0
  * [MPOM-327](https://issues.apache.org/jira/browse/MPOM-327) - Bump maven-release-plugin from 3.0.0-M5 to 3.0.0-M6
  * [MPOM-329](https://issues.apache.org/jira/browse/MPOM-329) - Bump maven-enforcer-plugin from 3.0.0 to 3.1.0
  * [MPOM-330](https://issues.apache.org/jira/browse/MPOM-330) - Bump apache-rat-plugin from 0.13 to 0.14
  * [MPOM-334](https://issues.apache.org/jira/browse/MPOM-334) - Upgrade fluido skin to 1.11.1
  * [MPOM-335](https://issues.apache.org/jira/browse/MPOM-335) - Bump maven-assembly-plugin from 3.3.0 to 3.4.1

Enjoy,
    
-The Apache Maven team
