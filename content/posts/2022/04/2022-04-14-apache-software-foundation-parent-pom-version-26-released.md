---
title: "Apache Software Foundation Parent POM Version 26 Released"
date: 2022-04-14T01:48:48
lastmod: 2022-04-14T01:48:48
categories:
  - asf-poms
  - parent-poms
---
The Apache Maven team is pleased to announce the release of the 
[Apache Software Foundation Parent POM Version 26](https://maven.apache.org/pom/asf/).

You should specify the version in your project as parent like the following:

```xml
<parent>
   <groupId>org.apache</groupId>
   <artifactId>apache</artifactId>
   <version>26</version>
</parent>
```
You can download the appropriate sources etc. from the download page:

https://maven.apache.org/pom/asf/download.html


<!-- more -->

Release Notes - Maven POMs - Version ASF-26

* Improvement:
 
  * [MPOM-310](https://issues.apache.org/jira/browse/MPOM-310) - Replace Google Analytics with ASF Matomo in documentation

* Task:
 
  * [MPOM-305](https://issues.apache.org/jira/browse/MPOM-305) - Set minimum enforced Maven version to 3.2.5

* Dependency upgrades:
 
  * [MPOM-304](https://issues.apache.org/jira/browse/MPOM-304) - Upgrade Maven Project Info Reports Plugin from 3.1.2 to 3.2.2
  * [MPOM-306](https://issues.apache.org/jira/browse/MPOM-306) - Upgrade Maven Compiler Plugin from 3.10.0 to 3.10.1
  * [MPOM-307](https://issues.apache.org/jira/browse/MPOM-307) - Upgrade Maven Dependency Plugin from 3.2.0 to 3.3.0
  * [MPOM-312](https://issues.apache.org/jira/browse/MPOM-312) - Upgrade Maven Shade Plugin from 3.2.4 to 3.3.0
  * [MPOM-315](https://issues.apache.org/jira/browse/MPOM-315) - Upgrade Maven Clean Plugin from 3.1.0 to 3.2.0

Enjoy,
    
-The Apache Maven team
