---
title: "Apache Maven Deploy Plugin Version 2.8.2 Released"
date: 2014-08-31T16:38:00
lastmod: 2014-08-31T16:38:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Deploy Plugin, version 2.8.2](http://maven.apache.org/plugins/maven-deploy-plugin/).

The deploy plugin is primarily used during the deploy phase, to add your
artifact(s) to a remote repository for sharing with other developers and
projects. This is usually done in an integration or release environment. It can
also be used to deploy a particular artifact (e.g. a third party jar like Sun's
non redistributable reference implementations).

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-deploy-plugin</artifactId>
  <version>2.8.2</version>
</plugin>
```
<!-- more -->

[Release Notes - Maven Deploy Plugin Version 2.8.2](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11131&version=19617)

Bugs:

 * [MDEPLOY-172](https://issues.apache.org/jira/browse/MDEPLOY-172) - Concurrency problem with deployAtEnd in parallel builds
 * [MDEPLOY-174](https://issues.apache.org/jira/browse/MDEPLOY-174) - [REGRESSION] url not required anymore, causing a NullPointerException

Improvements:

 * [MDEPLOY-185](https://issues.apache.org/jira/browse/MDEPLOY-185) - MavenProject/MavenSession Injection as a paremeter instead as a component.
 * [MDEPLOY-186](https://issues.apache.org/jira/browse/MDEPLOY-186) - Upgrade to Maven 2.2.1 compatiblity


Enjoy,

-The Apache Maven team

Karl-Heinz Marbaise
