---
title: "Apache Maven Site Plugin Version 3.5 Released"
date: 2016-02-18T08:01:00
lastmod: 2016-02-18T08:01
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Site Plugin, version 3.5](http://maven.apache.org/plugins/maven-site-plugin/).

The Site Plugin is used to generate a site for the project. The generated site
also includes the project's reports that were configured in the POM.

Attention there are [breaking changes to know when upgrading](http://maven.apache.org/plugins/maven-site-plugin/migrate.html).


```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-site-plugin</artifactId>
  <version>3.5</version>
</plugin>
```
<!-- more -->
[Release Notes - Maven Site Plugin - Version 3.5](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317923&version=12331531&styleName=Text)

Sub-task:

 * [MSITE-762](https://issues.apache.org/jira/browse/MSITE-762) -  Upgrade Velocity from 1.5 to 1.7

Bugs:

 * [MSITE-135](https://issues.apache.org/jira/browse/MSITE-135) -  inherited site.xml files are interpolated with the originating project's model values and not the consumer project's values
 * [MSITE-604](https://issues.apache.org/jira/browse/MSITE-604) -  Properties from settings.xml are not recognized in site distribution management 
 * [MSITE-694](https://issues.apache.org/jira/browse/MSITE-694) -  When maven.site.skip=true, mvn site:jar doesn't skip the generation of the jar
 * [MSITE-702](https://issues.apache.org/jira/browse/MSITE-702) -  Overriding skin resources / Duplicate copying of skin resources
 * [MSITE-724](https://issues.apache.org/jira/browse/MSITE-724) -  An API incompatibility was encountered while executing org.apache.maven.plugins:maven-site-plugin:3.4:jar
 * [MSITE-743](https://issues.apache.org/jira/browse/MSITE-743) -  Automatic breadcrumbs generates URLs inconsistent with menus: should point to index.html
 * [MSITE-744](https://issues.apache.org/jira/browse/MSITE-744) -  Regression in 3.4: File in `generated-site/resources/` ignored unless there is a file in `generated-site/markdown/` too
 * [MSITE-750](https://issues.apache.org/jira/browse/MSITE-750) -  site plugin doesn't override correctly parent distributionManagement site url with another one defined in child project when dav:
 * [MSITE-752](https://issues.apache.org/jira/browse/MSITE-752) -  Cannot use server side includes.
 * [MSITE-754](https://issues.apache.org/jira/browse/MSITE-754) -  ConcurrentModificationException when using site:run
 * [MSITE-760](https://issues.apache.org/jira/browse/MSITE-760) -  when using templateFile, skin is downloaded and info message "Rendering site with skin"

Improvements:

 * [MSITE-696](https://issues.apache.org/jira/browse/MSITE-696) -  site:deploy try to deploy the site of a sub module even if the property maven.site.skip is set to true
 * [MSITE-708](https://issues.apache.org/jira/browse/MSITE-708) -  Doc about filtering incorrect about macros rules
 * [MSITE-723](https://issues.apache.org/jira/browse/MSITE-723) -  "About" report generated even though index.apt is available in "generated-site"
 * [MSITE-727](https://issues.apache.org/jira/browse/MSITE-727) -  MavenProject/MavenSession Injection as a paremeter instead as a component.
 * [MSITE-729](https://issues.apache.org/jira/browse/MSITE-729) -  Update version of plexus-archiver to 2.9
 * [MSITE-740](https://issues.apache.org/jira/browse/MSITE-740) -  Allow multiple extensions for given format
 * [MSITE-746](https://issues.apache.org/jira/browse/MSITE-746) -  FAQ contains inaccurate description regarding the site life cycle
 * [MSITE-755](https://issues.apache.org/jira/browse/MSITE-755) -  Upgrade Doxia Sitetools from 1.6 to 1.7
 * [MSITE-765](https://issues.apache.org/jira/browse/MSITE-765) -  upgrade Doxia from 1.6 to 1.7

New Feature:

 * [MSITE-756](https://issues.apache.org/jira/browse/MSITE-756) -  add an option to dump Velocity processed Doxia files

Tasks:

 * [MSITE-753](https://issues.apache.org/jira/browse/MSITE-753) -  remove deprecated template and templateDirectory parameters
 * [MSITE-759](https://issues.apache.org/jira/browse/MSITE-759) -  Update "Configuring the Site Descriptor" page for Doxia (Sitetools) 1.7
 * [MSITE-763](https://issues.apache.org/jira/browse/MSITE-763) -  Fix issues reported by dependency:analyze
 * [MSITE-766](https://issues.apache.org/jira/browse/MSITE-766) -  Upgrade to Commons Lang 3

Wish:

 * [MSITE-326](https://issues.apache.org/jira/browse/MSITE-326) -  Make input source file encoding default to platform encoding

Enjoy,
 
-The Apache Maven team

