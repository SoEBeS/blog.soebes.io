---
title: "Apache Doxia base and Doxia Site Tools Version 1.6 Released"
date: 2014-07-01T22:49:00
lastmod: 2014-07-01T22:49:00
categories:
  - Maven
  - Maven-Components
---
The Apache Maven team is pleased to announce the release of the 
[Apache Doxia base](http://maven.apache.org/doxia/doxia/)
 and [Doxia Site Tools](http://maven.apache.org/doxia/doxia-sitetools/) Version 1.6, 
Released

Doxia is a content generation framework that provides powerful techniques for 
generating static and dynamic content, supporting a variety of markup 
languages.

Doxia Site Tools is an extension of base Doxia component that generates either 
sites, consisting of decoration and content that was generated by Doxia, or 
documents like RTF or PDF.

<!-- more -->

[Release Notes - Maven Doxia base - Version 1.6](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=10780&styleName=Html&version=19820)

Bugs:

 * [DOXIA-386](https://issues.apache.org/jira/browse/DOXIA-386) - Snippet Macro:  Reference file does not support UTF-8 file format to generate the page garbage
 * [DOXIA-503](https://issues.apache.org/jira/browse/DOXIA-503) - Plexus components cannot be abstract classes
 * [DOXIA-509](https://issues.apache.org/jira/browse/DOXIA-509) - Multi-markdown metadata is too greedy
 * [DOXIA-515](https://issues.apache.org/jira/browse/DOXIA-515) - <div> elements in markdown html block content are silently swallowed 

Improvement:

 * [DOXIA-510](https://issues.apache.org/jira/browse/DOXIA-510) - create parser.module equivalent to module.site

Task:

 * [DOXIA-514](https://issues.apache.org/jira/browse/DOXIA-514) - Prepare unittests for JDK8


[Release Notes - Maven Doxia Sitetools - Version 1.6 ](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11624&styleName=Html&version=19925)

Bugs:

 * [DOXIASITETOOLS-76](https://issues.apache.org/jira/browse/DOXIASITETOOLS-76) - Missing inheritance of 'googleAdSenseClient', 'googleAdSenseSlot' and 'googleAnalyticsAccountId' elements.
 * [DOXIASITETOOLS-87](https://issues.apache.org/jira/browse/DOXIASITETOOLS-87) - inconsistent newlines between template content 
from skin and generated content
 * [DOXIASITETOOLS-91](https://issues.apache.org/jira/browse/DOXIASITETOOLS-91) - Section title anchors are not at a good place in generated HTML

Improvements:

 * [DOXIASITETOOLS-84](https://issues.apache.org/jira/browse/DOXIASITETOOLS-84) - move o.a.m.doxia.sink.render.RenderingContext from Doxia core to Doxia Site Renderer
 * [DOXIASITETOOLS-85](https://issues.apache.org/jira/browse/DOXIASITETOOLS-85) - move RenderingContext from o.a.m.doxia.sink.render package to o.a.m.doxia.siterenderer
 * [DOXIASITETOOLS-86](https://issues.apache.org/jira/browse/DOXIASITETOOLS-86) - Use a linguisticly proper separator between project name and doc title in HTML title

New Feature:

 * [DOXIASITETOOLS-90](https://issues.apache.org/jira/browse/DOXIASITETOOLS-90) - site inheritance controllable

Enjoy,

-The Apache Maven team
