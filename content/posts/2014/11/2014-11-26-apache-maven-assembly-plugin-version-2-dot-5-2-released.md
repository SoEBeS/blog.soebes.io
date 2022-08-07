---
title: "Apache Maven Assembly Plugin Version 2.5.2 Released"
date: 2014-11-26T20:03:00
lastmod: 2014-11-26T20:03
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the
[Apache Maven Assembly Plugin, version 2.5.2](http://maven.apache.org/plugins/maven-assembly-plugin/).

The Assembly Plugin for Maven is primarily intended to allow users to aggregate
the project output along with its dependencies, modules, site documentation,
and other files into a single distributable archive.

Most notable for this release are:
Rewritten duplicate handling strategy, revised documentation. Please
note that previously documented strategy was mostly wishful thinking,
the [currently documented strategy is hard reality :)](http://maven.apache.org/plugins/maven-assembly-plugin/advanced-descriptor-topics.html).


You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-assembly-plugin</artifactId>
  <version>2.5.2</version>
</plugin>
```


<!-- more -->

[Release Notes - Maven Assembly Plugin - Version 2.5.2](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11126&version=20750)

Bugs:

 * [MASSEMBLY-478](https://issues.apache.org/jira/browse/MASSEMBLY-478) - allow overwriting newer files with older files contained within fileset
 * [MASSEMBLY-558](https://issues.apache.org/jira/browse/MASSEMBLY-558) - Assembly does not include runtime-dependency if test-dependency with shorter path exists
 * [MASSEMBLY-565](https://issues.apache.org/jira/browse/MASSEMBLY-565) - jar-with-dependencies: class from the source
in project does NOT override the class in jar dependency
 * [MASSEMBLY-569](https://issues.apache.org/jira/browse/MASSEMBLY-569) - The numbering of the items in the FAQ on the site is messed up
 * [MASSEMBLY-580](https://issues.apache.org/jira/browse/MASSEMBLY-580) - dependencySet ignores directoryMode descriptor
 * [MASSEMBLY-583](https://issues.apache.org/jira/browse/MASSEMBLY-583) - DependencySet elements appear not to be able to target the same outputDirectory
 * [MASSEMBLY-597](https://issues.apache.org/jira/browse/MASSEMBLY-597) - Duplicate files added to archive when present in both dependencyset and fileset of the same assembly
 * [MASSEMBLY-601](https://issues.apache.org/jira/browse/MASSEMBLY-601) - http://maven.apache.org/plugins/maven-assembly-plugin/assembly.html seems to have the components of a filter element in the wrong order
 * [MASSEMBLY-609](https://issues.apache.org/jira/browse/MASSEMBLY-609) - Misbehavior on multi-module projects, outputDirectory not being interpolated properly
 * [MASSEMBLY-655](https://issues.apache.org/jira/browse/MASSEMBLY-655) - Archive file resolution does not work as documented
 * [MASSEMBLY-671](https://issues.apache.org/jira/browse/MASSEMBLY-671) - Cryptic debug warning message needs improvement and/or documentation
 * [MASSEMBLY-725](https://issues.apache.org/jira/browse/MASSEMBLY-725) - Fix phase ordering
 * [MASSEMBLY-726](https://issues.apache.org/jira/browse/MASSEMBLY-726) - Fix artifact inclusion/exclusion filtering
 * [MASSEMBLY-728](https://issues.apache.org/jira/browse/MASSEMBLY-728) - Assembly plugin >= 2.5 thinks my group ID is too big
 * [MASSEMBLY-729](https://issues.apache.org/jira/browse/MASSEMBLY-729) - lineEnding ignored when file is not filtered
 * [MASSEMBLY-730](https://issues.apache.org/jira/browse/MASSEMBLY-730) - jar-with-dependencies : a file in a dependency is overridden by the same file in JDK / JRE
 * [MASSEMBLY-731](https://issues.apache.org/jira/browse/MASSEMBLY-731) - Assembly plugin bundles symlinks as emtpy folders when directoryMode is set on fileset
 * [MASSEMBLY-732](https://issues.apache.org/jira/browse/MASSEMBLY-732) - baseDirectory is ignored with files entries

Improvement:

 * [MASSEMBLY-702](https://issues.apache.org/jira/browse/MASSEMBLY-702) - Add default values for directoryMode / fileMode
 * [MASSEMBLY-708](https://issues.apache.org/jira/browse/MASSEMBLY-708) - predefined descriptors lack of permission definition for unix (directoryMode/fileMode)

Enjoy,

-The Apache Maven team 
