---
title: "Apache Maven Project Info Reports Plugin Version 3.2.1 Released"
date: 2022-02-05T11:50:50
lastmod: 2022-02-05T11:50:50
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Maven Project Info Reports Plugin version 3.2.1](https://maven.apache.org/plugins/maven-project-info-reports-plugin/)

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-project-info-reports-plugin</artifactId>
  <version>3.2.1</version>
</plugin>
```

You can download the appropriate sources etc. from the 
[download page](https://maven.apache.org/plugins/maven-project-info-reports-plugin/download.cgi).

<!-- more --> 

[Release Notes - Maven Project Info Reports Plugin - Version 3.2.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317821&version=12351375)


* Bugs:
  * [MPIR-403](https://issues.apache.org/jira/browse/MPIR-403) - Travis link should point to travis-ci.com instead of travis-ci.org
  * [MPIR-404](https://issues.apache.org/jira/browse/MPIR-404) - Warn and accept invalid mailing list links
  * [MPIR-405](https://issues.apache.org/jira/browse/MPIR-405) - Regression in Maven site rendering due to Doxia change to HTML5
  * [MPIR-412](https://issues.apache.org/jira/browse/MPIR-412) - Dependency report generates non-well-formed output if the POM of a depdendency cannot be parsed

* Improvement:
 
  * [MPIR-408](https://issues.apache.org/jira/browse/MPIR-408) - Add some i18n properties for zh_CH

* Dependency upgrades:
 
  * [MPIR-409](https://issues.apache.org/jira/browse/MPIR-409) - Upgrade Maven Site Plugin to 3.10.0
  * [MPIR-410](https://issues.apache.org/jira/browse/MPIR-410) - Upgrade Maven SCM to 1.12.2
  * [MPIR-411](https://issues.apache.org/jira/browse/MPIR-411) - Upgrade Doxia to 1.11.1 and Doxia Sitetools to 1.11.1


Enjoy,

-The Apache Maven team 
