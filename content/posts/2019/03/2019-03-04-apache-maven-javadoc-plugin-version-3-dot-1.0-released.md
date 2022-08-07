---
title: "Apache Maven JavaDoc Plugin Version 3.1.0 Released"
date: 2019-03-04T22:45:00
lastmod: 2019-03-04T22:45
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JavaDoc Plugin, version 3.1.0](https://maven.apache.org/plugins/maven-javadoc-plugin).

The Javadoc Plugin uses the Javadoc tool to generate javadocs for the
specified project. 


```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-javadoc-plugin</artifactId>
  <version>3.1.0</version>
</plugin>
```

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-javadoc-plugin/download.cgi

<!-- more -->

[Release Notes - Apache Maven JavaDoc Plugin - Version 3.1.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317529&version=12343313)

Sub-task:

 * [MJAVADOC-551](https://issues.apache.org/jira/browse/MJAVADOC-551) - Error if path to project contains a spaces
 * [MJAVADOC-552](https://issues.apache.org/jira/browse/MJAVADOC-552) - Author tag is removed, even though it should be excluded using the fixTags-setting

Bugs:

 * [MJAVADOC-420](https://issues.apache.org/jira/browse/MJAVADOC-420) - javadoc:fix duplicates lines
 * [MJAVADOC-445](https://issues.apache.org/jira/browse/MJAVADOC-445) - JavadocOptionsXpp3Reader doesn't deserialize the placement element in Tag
 * [MJAVADOC-449](https://issues.apache.org/jira/browse/MJAVADOC-449) - javadoc:aggregate fails with JDK 9
 * [MJAVADOC-469](https://issues.apache.org/jira/browse/MJAVADOC-469) - <additionalOption> input isn't escaped for double backslashes in argument file
 * [MJAVADOC-495](https://issues.apache.org/jira/browse/MJAVADOC-495) - links option ignored in offline mode, even for local links
 * [MJAVADOC-506](https://issues.apache.org/jira/browse/MJAVADOC-506) - Javadoc plugin broken on Java 8 when module-info.java present
 * [MJAVADOC-514](https://issues.apache.org/jira/browse/MJAVADOC-514) - Maven Javadoc Plugin can't get dependency from third party maven repository
 * [MJAVADOC-526](https://issues.apache.org/jira/browse/MJAVADOC-526) - aggregate goal doesn't respect managed dependencies
 * [MJAVADOC-527](https://issues.apache.org/jira/browse/MJAVADOC-527) - detectLinks may pass invalid URLs to javadoc(1)
 * [MJAVADOC-528](https://issues.apache.org/jira/browse/MJAVADOC-528) - Invalid 'expires' attribute
 * [MJAVADOC-532](https://issues.apache.org/jira/browse/MJAVADOC-532) - <link> entries that do not redirect are ignored
 * [MJAVADOC-533](https://issues.apache.org/jira/browse/MJAVADOC-533) - <link> entries that point to a resource that requires an Accept header may be ignored
 * [MJAVADOC-537](https://issues.apache.org/jira/browse/MJAVADOC-537) - warning when javadoc is invoked for dependency
 * [MJAVADOC-538](https://issues.apache.org/jira/browse/MJAVADOC-538) - JVM "JAVA_TOOL_OPTIONS" or "_JAVA_OPTIONS" message detected as javadoc warning, triggers failure
 * [MJAVADOC-542](https://issues.apache.org/jira/browse/MJAVADOC-542) - Unsupported class file major version 55
 * [MJAVADOC-543](https://issues.apache.org/jira/browse/MJAVADOC-543) - Archiving to jar is very slow
 * [MJAVADOC-544](https://issues.apache.org/jira/browse/MJAVADOC-544) - Changed behaviour of Javadoc for temporary files encoding (options, argfile, ...)
 * [MJAVADOC-548](https://issues.apache.org/jira/browse/MJAVADOC-548) - Directoryname mixed up with excludePackageNames
 * [MJAVADOC-549](https://issues.apache.org/jira/browse/MJAVADOC-549) - Version tag comes and goes on several javadoc:fix goal runs
 * [MJAVADOC-554](https://issues.apache.org/jira/browse/MJAVADOC-554) - Running javadoc:aggregate twice throws MavenReportException
 * [MJAVADOC-555](https://issues.apache.org/jira/browse/MJAVADOC-555) - Javadoc:aggregate, Javadoc:jar fail if one of the modules does not contain module-info.java
 * [MJAVADOC-556](https://issues.apache.org/jira/browse/MJAVADOC-556) - javadoc:aggregate fails with "No source files for package" for packages that are not exported
 * [MJAVADOC-563](https://issues.apache.org/jira/browse/MJAVADOC-563) - Javadoc generation fails if module name contains restricted keyword in non-terminal position
 * [MJAVADOC-567](https://issues.apache.org/jira/browse/MJAVADOC-567) - "Not in a module on the module source path" when using JDK 12
 * [MJAVADOC-568](https://issues.apache.org/jira/browse/MJAVADOC-568) - javadoc:jar fails when project has Automatic-Module-Name and (implicit) uses offlinelinks with element-list
 * [MJAVADOC-570](https://issues.apache.org/jira/browse/MJAVADOC-570) - --add-modules expects comma-separated arguments
 * [MJAVADOC-575](https://issues.apache.org/jira/browse/MJAVADOC-575) - <source>8</source> fails when module-info.java exists
 * [MJAVADOC-580](https://issues.apache.org/jira/browse/MJAVADOC-580) - javadoc:javadoc detects wrong java API link when running on openjdk 11.0.2

New Feature:

 * [MJAVADOC-134](https://issues.apache.org/jira/browse/MJAVADOC-134) - Support aggregated reports at each level in the multi-module hierarchy

Improvements:

 * [MJAVADOC-444](https://issues.apache.org/jira/browse/MJAVADOC-444) - Add an 'aggregated-no-fork' goal
 * [MJAVADOC-447](https://issues.apache.org/jira/browse/MJAVADOC-447) - Command line dump reveals proxy user/password in case of errors
 * [MJAVADOC-499](https://issues.apache.org/jira/browse/MJAVADOC-499) - Ignore module-info.java on earlier Java versions
 * [MJAVADOC-513](https://issues.apache.org/jira/browse/MJAVADOC-513) - Aggregate: make order of classpath entries predictable
 * [MJAVADOC-530](https://issues.apache.org/jira/browse/MJAVADOC-530) - Clean up additionalparam documentation
 * [MJAVADOC-534](https://issues.apache.org/jira/browse/MJAVADOC-534) - Support element-list links from java10 dependencies
 * [MJAVADOC-546](https://issues.apache.org/jira/browse/MJAVADOC-546) - Allow to generate report in Spanish locale
 * [MJAVADOC-558](https://issues.apache.org/jira/browse/MJAVADOC-558) - Change default value for removeUnknownThrows to true
 * [MJAVADOC-562](https://issues.apache.org/jira/browse/MJAVADOC-562) - Ability to pass --release to Javadoc tool
 * [MJAVADOC-565](https://issues.apache.org/jira/browse/MJAVADOC-565) - Make proxy configuration properly work for both HTTP and HTTPS
 * [MJAVADOC-566](https://issues.apache.org/jira/browse/MJAVADOC-566) - Use patterns for defaultJavadocApiLinks
 * [MJAVADOC-577](https://issues.apache.org/jira/browse/MJAVADOC-577) - Fixed typos in User Guide.
 * [MJAVADOC-578](https://issues.apache.org/jira/browse/MJAVADOC-578) - Groups parameter is not compatibile with Surefire

Task:

 * [MJAVADOC-557](https://issues.apache.org/jira/browse/MJAVADOC-557) - Deprecate parameter includeTransitiveDependencySources

Dependency upgrade:

 * [MJAVADOC-535](https://issues.apache.org/jira/browse/MJAVADOC-535) - Upgrade to parent pom 32



Enjoy,

-The Apache Maven team 
