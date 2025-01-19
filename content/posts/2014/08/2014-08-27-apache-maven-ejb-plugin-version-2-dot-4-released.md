---
title: "Apache Maven EJB Plugin Version 2.4 Released"
date: 2014-08-27T19:58:00
lastmod: 2014-08-27T19:58:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven EJB Plugin, version 2.4](http://maven.apache.org/plugins/maven-ejb-plugin).

This plugin generates J2EE Enterprise Javabean (EJB) file as well as the
associated client jar.

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-ejb-plugin</artifactId>
  <version>2.4</version>
</plugin>
```
<!-- more -->

[Release Notes - Maven EJB Version 2.4](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11134&version=15475)

Bugs:

 * [MEJB-28](https://issues.apache.org/jira/browse/MEJB-28) - outputDirectory is not created before packaging
 * [MEJB-50](https://issues.apache.org/jira/browse/MEJB-50) - Empty src/main/java causes ejb plugin to fail
 * [MEJB-52](https://issues.apache.org/jira/browse/MEJB-52) - need to update dependency of maven-archiver to 2.5

Improvements:

 * [MEJB-56](https://issues.apache.org/jira/browse/MEJB-56) - Add Maven version used to Created-By entry in manifest
 * [MEJB-58](https://issues.apache.org/jira/browse/MEJB-58) - Documentation fails to mention where and how the plugin gets ejb-jar.xml from
 * [MEJB-64](https://issues.apache.org/jira/browse/MEJB-64) - Upgrade to Maven 2.2.1 compatiblity
 * [MEJB-65](https://issues.apache.org/jira/browse/MEJB-65) - Upgrade maven-filtering to 1.2
 * [MEJB-66](https://issues.apache.org/jira/browse/MEJB-66) - Upgrade plexus-archiver to 2.4.4
 * [MEJB-68](https://issues.apache.org/jira/browse/MEJB-68) - MavenProject/MavenSession Injection as a paremeter instead as a component.

Tasks:

 * [MEJB-59](https://issues.apache.org/jira/browse/MEJB-59) - use maven-plugin-tools' java 5 annotations
 * [MEJB-62](https://issues.apache.org/jira/browse/MEJB-62) - "This version of the EJB Plugin uses Maven Archiver 2.4" hardcoded in Javadoc

Enjoy,

-The Apache Maven team

Karl-Heinz Marbaise
