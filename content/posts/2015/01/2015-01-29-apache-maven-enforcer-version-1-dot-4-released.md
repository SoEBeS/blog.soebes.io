---
title: "Apache Maven Enforcer Version 1.4 Released"
date: 2015-01-29T21:09:00
lastmod: 2015-01-29T21:09
categories:
  - Neuigkeiten
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Enforcer, version 1.4](http://maven.apache.org/enforcer).

Enforcer is a build rule execution framework.

If you need to force things within your build please use the 
[maven-enforcer-plugin](http://maven.apache.org/enforcer/maven-enforcer-plugin/).

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-enforcer-plugin</artifactId>
  <version>1.4</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Enforcer - Version 1.4](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11530&version=19420).

Bugs:

 * [MENFORCER-143](https://issues.apache.org/jira/browse/MENFORCER-143) - 'All' propery is not handled by RequireActiveProfile rule
 * [MENFORCER-167](https://issues.apache.org/jira/browse/MENFORCER-167) - Documented '*' feature of banned dependencies doesn't work
 * [MENFORCER-175](https://issues.apache.org/jira/browse/MENFORCER-175) - Rule RequirePrerequisite is incorrectly stated as 'requirePrerequisites' in docs
 * [MENFORCER-181](https://issues.apache.org/jira/browse/MENFORCER-181) - Failing Integration Test
 * [MENFORCER-183](https://issues.apache.org/jira/browse/MENFORCER-183) - site fails with Maven 3.1.1
 * [MENFORCER-188](https://issues.apache.org/jira/browse/MENFORCER-188) - ReactorModuleConvergence does not print the message
 * [MENFORCER-205](https://issues.apache.org/jira/browse/MENFORCER-205) - Broken link: 'version' part of 'version - range'

Improvements:

 * [MENFORCER-169](https://issues.apache.org/jira/browse/MENFORCER-169) - No Unit Test for RequireActiveProfile Rule and no documentation
 * [MENFORCER-170](https://issues.apache.org/jira/browse/MENFORCER-170) - Refactored Unit Test Code
 * [MENFORCER-171](https://issues.apache.org/jira/browse/MENFORCER-171) - No documentation for RequireEnvironmentVariable
 * [MENFORCER-177](https://issues.apache.org/jira/browse/MENFORCER-177) - Support packagings for RequirePrerequisite rule, always ignore pom.
 * [MENFORCER-179](https://issues.apache.org/jira/browse/MENFORCER-179) - Improve documentation for the bannedDependencies
 * [MENFORCER-180](https://issues.apache.org/jira/browse/MENFORCER-180) - dependencyConvergence consitenly write the rule name in lower case.
 * [MENFORCER-182](https://issues.apache.org/jira/browse/MENFORCER-182) - Missing documentation for new feature MENFORCER-160
 * [MENFORCER-187](https://issues.apache.org/jira/browse/MENFORCER-187) - Link on the page to version is wrong
 * [MENFORCER-200](https://issues.apache.org/jira/browse/MENFORCER-200) - Make Plugin only 2.2.1 compatible - get rid of Maven 2.0
 * [MENFORCER-201](https://issues.apache.org/jira/browse/MENFORCER-201) - MavenProject Injection as a paremeter instead as a component.
 * [MENFORCER-206](https://issues.apache.org/jira/browse/MENFORCER-206) - Upgrade maven-invoker-plugin version to 1.9
 * [MENFORCER-208](https://issues.apache.org/jira/browse/MENFORCER-208) - Remove deprecated goals.
 * [MENFORCER-209](https://issues.apache.org/jira/browse/MENFORCER-209) - Upgrade plexus-utils to 3.0.20
 * [MENFORCER-210](https://issues.apache.org/jira/browse/MENFORCER-210) - Upgrade to maven-parent version 25
 * [MENFORCER-212](https://issues.apache.org/jira/browse/MENFORCER-212) - Upgrade maven-plugin-plugin from 3.2 to 3.3
 * [MENFORCER-214](https://issues.apache.org/jira/browse/MENFORCER-214) - Add prerequisites to maven-enforcer-plugin
 * [MENFORCER-216](https://issues.apache.org/jira/browse/MENFORCER-216) - Upgrade to maven-parent version 26
 * [MENFORCER-217](https://issues.apache.org/jira/browse/MENFORCER-217) - Upgrade maven-plugin-testing-harness to 1.3
 * [MENFORCER-218](https://issues.apache.org/jira/browse/MENFORCER-218) - Upgrade maven-dependency-tree to 2.2
 * [MENFORCER-219](https://issues.apache.org/jira/browse/MENFORCER-219) - Add m2e mapping
 * [MENFORCER-220](https://issues.apache.org/jira/browse/MENFORCER-220) - Make real MojoExecution available through the EnforcerExpressionEvaluator

New Features:

 * [MENFORCER-160](https://issues.apache.org/jira/browse/MENFORCER-160) - Add levels ERROR and WARN to enforcer rules
 * [MENFORCER-186](https://issues.apache.org/jira/browse/MENFORCER-186) - Create a rule for the reactor (ReactorModuleConvergence)
 * [MENFORCER-193](https://issues.apache.org/jira/browse/MENFORCER-193) - Add new rule: BannedRepositories to ban specified repositories for whole maven session

Tasks:

 * [MENFORCER-161](https://issues.apache.org/jira/browse/MENFORCER-161) - Fix deploySite
 * [MENFORCER-192](https://issues.apache.org/jira/browse/MENFORCER-192) - Update all entries @since with the correct version 1.4
 * [MENFORCER-202](https://issues.apache.org/jira/browse/MENFORCER-202) - Get rid of [WARNING] during build

Enjoy,

-The Apache Maven team
