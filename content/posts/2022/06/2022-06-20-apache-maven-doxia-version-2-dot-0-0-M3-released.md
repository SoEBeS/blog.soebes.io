---
title: "Apache Maven Doxia Version 2.0.0-M3 Released"
date: 2022-06-20T12:53:53
lastmod: 2022-06-20T12:53:53
categories:
  - Maven
  - Maven-Components
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Doxia](https://maven.apache.org/doxia/) Version 2.0.0-M3, 
Released

Doxia is a content generation framework which aims to provide its users with powerful techniques for
generating static and dynamic content: Doxia can be used in web-based publishing context to generate
static sites, in addition to being incorporated into dynamic content generation systems like blogs,
wikis and content management systems.

<!-- more -->

[Release Notes - Maven Doxia base - Version 2.0.0-M3](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317230&version=12351358)

 
You can download the [appropriate sources etc. from the download page.][download]
 
Release Notes - Maven Doxia - Version 2.0.0-M3

* Bugs:
 
  * [DOXIA-590](https://issues.apache.org/jira/browse/DOXIA-590) - Either provided element class or default class gets ignored
  * [DOXIA-619](https://issues.apache.org/jira/browse/DOXIA-619) - Sink.sectionTitle1() creates <h2> instead of <h1>
  * [DOXIA-649](https://issues.apache.org/jira/browse/DOXIA-649) - Plexus to Sisu migration missed singleton annotation

* New Feature
 
  * [DOXIA-660](https://issues.apache.org/jira/browse/DOXIA-660) - Add ability to hide table rows via CSS

* Tasks:
 
  * [DOXIA-650](https://issues.apache.org/jira/browse/DOXIA-650) - Make MarkdownParser to be a text parser with text markup
  * [DOXIA-652](https://issues.apache.org/jira/browse/DOXIA-652) - Drop build-info.properties in favor of default pom.properties
  * [DOXIA-656](https://issues.apache.org/jira/browse/DOXIA-656) - Make XHTML5 default implementation of HTML
  * [DOXIA-657](https://issues.apache.org/jira/browse/DOXIA-657) - Deprecate XHML(4) module

* Dependency upgrades:
 
  * [DOXIA-651](https://issues.apache.org/jira/browse/DOXIA-651) - Upgrade Flexmark to 0.50.50
  * [DOXIA-653](https://issues.apache.org/jira/browse/DOXIA-653) - Upgrade Plexus Utils to 3.4.2
  * [DOXIA-654](https://issues.apache.org/jira/browse/DOXIA-654) - Upgrade XML Unit to 2.9.0
  * [DOXIA-655](https://issues.apache.org/jira/browse/DOXIA-655) - Upgrade SLF4J to 1.7.36
  * [DOXIA-658](https://issues.apache.org/jira/browse/DOXIA-658) - Upgrade test dependencies
  * [DOXIA-659](https://issues.apache.org/jira/browse/DOXIA-659) - Upgrade Parent to 36
  * [DOXIA-661](https://issues.apache.org/jira/browse/DOXIA-661) - Upgrade Commons Text to 1.9

Enjoy,

-The Apache Maven team

[download]: https://maven.apache.org/doxia/downloads.html
