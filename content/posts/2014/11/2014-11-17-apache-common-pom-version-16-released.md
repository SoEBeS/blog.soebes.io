---
title: "Apache Common POM Version 16 Released"
date: 2014-11-17T21:00:00
lastmod: 2014-11-17T21:00
categories:
  - Maven
  - parent-poms
---
The Apache Maven team is pleased to announce the release of the 
[Apache Common POM, version 16](http://maven.apache.org/poms/asf).

This POM (org.apache:apache) configures common Maven settings for
projects to use ASF infrastructure.

To use this parent, you should specify the version in your project's
plugin configuration:

```xml
<parent>
  <groupId>org.apache</groupId>
  <artifactId>apache</artifactId>
  <version>16</version>
</parent>
```

Changes since previous release:

http://svn.apache.org/viewvc/maven/pom/tags/apache-16/pom.xml?view=markup

Enjoy,

-The Apache Maven team
