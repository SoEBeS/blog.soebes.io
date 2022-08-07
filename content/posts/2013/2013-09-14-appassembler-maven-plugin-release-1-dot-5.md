---
title: "Appassembler Maven Plugin 1.5 released"
date: 2013-09-14T20:02:00
lastmod: 2013-09-14T20:02
categories:
  - Maven
  - Maven-Plugin-Releases
---
The new release of the [Appassembler Maven Plugin 1.5](http://mojo.codehaus.org/appassembler/appassembler-maven-plugin/)
contains a number of bug fixes, improvements and a new feature.

<!-- more -->
The following bug fixes:

 * [MAPPASM-96](https://issues.apache.org/jira/browse/MAPPASM-96) which solved a problem with deployment failures 
in relationship with maven-deploy-plugin.
 * [MAPPASM-152](https://issues.apache.org/jira/browse/MAPPASM-152) which solved using repositoryName in generate-daemons to give a separate location 
for the repository (JSW)
 * [MAPPASM-190](https://issues.apache.org/jira/browse/MAPPASM-190) wrong JAVA_HOME on moutian lion (Mac OS)
 * [MAPPASM-194](https://issues.apache.org/jira/browse/MAPPASM-194) licenseHeaderFile ignored when generating booter daemons


The following improvements:

 * [MAPPASM-93](https://issues.apache.org/jira/browse/MAPPASM-93) generate-daemon should support setting config dir and repos dir

And the following new feature:

 * [MAPPASM-71](https://issues.apache.org/jira/browse/MAPPASM-71) Support Repo's File Name Mapping

