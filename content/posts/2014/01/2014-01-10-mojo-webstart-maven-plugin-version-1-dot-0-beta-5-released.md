---
title: "Mojo Webstart Maven Plugin - Version 1.0-beta-5 Released"
date: 2014-01-10T18:50:00
lastmod: 2014-01-10T18:50
categories:
  - BM
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The Mojo team is pleased to announce the release of the [Webstart
Maven Plugin version 1.0-beta-5](http://mojo.codehaus.org/webstart/webstart-maven-plugin)

The Webstart Maven Plugin generates application bundles that can be
deployed via Web Start. The plugin can be used to prepare standalone
Web Start applications or Web Start applications bundled in WAR files
(with or without Sun´s Download Servlet). It handles the generation of
JNLP files and optional version.xml files, using Velocity templates. It
also handles the selection and preparation of the dependencies,
performing signing, unsigning and Pack200 compression when required.


If you are updating from a previous version you will find help in the 
[upgrade guide](http://mojo.codehaus.org/webstart/webstart-maven-plugin/upgrade.html).

<!-- more -->

To get this update, simply specify the version in your project´s
plugin configuration:


```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>webstart-maven-plugin</artifactId>
  <version>1.0-beta-5</version>
</plugin>
``` 


Some links:

[Release Notes - Mojo's Webstart Maven Plugin - Version 1.0-beta-5](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11362&version=19637)

Fixed Bug´s:

* [MWEBSTART-123](https://issues.apache.org/jira/browse/MWEBSTART-123) - NPE in processDependencies
* [MWEBSTART-184](https://issues.apache.org/jira/browse/MWEBSTART-184) - Adding outputJarVersions does not work correctly
* [MWEBSTART-202](https://issues.apache.org/jira/browse/MWEBSTART-202) - Transitive dependency resultion is wrong 
* [MWEBSTART-210](https://issues.apache.org/jira/browse/MWEBSTART-210) - Dependency list in jnlp is expanded using unix line breaks (could be customisable)
* [MWEBSTART-214](https://issues.apache.org/jira/browse/MWEBSTART-214) - Webstart Maven Plugin does not respond to Classifier
* [MWEBSTART-216](https://issues.apache.org/jira/browse/MWEBSTART-216) - webstart-maven-plugin is not well-behaved in multi-module project
* [MWEBSTART-223](https://issues.apache.org/jira/browse/MWEBSTART-223) - Default Template Location Is Broken
* [MWEBSTART-224](https://issues.apache.org/jira/browse/MWEBSTART-224) - updateManifestEntries disrupts application
* [MWEBSTART-228](https://issues.apache.org/jira/browse/MWEBSTART-228) - verify and verifyjar ignored when signing
* [MWEBSTART-229](https://issues.apache.org/jira/browse/MWEBSTART-229) - Plugin ignores errors from jarsigner
* [MWEBSTART-231](https://issues.apache.org/jira/browse/MWEBSTART-231) - transitive dependencies will not be resolved in multi module maven project
* [MWEBSTART-232](https://issues.apache.org/jira/browse/MWEBSTART-232) - dependencies in jnlp file must be ordered
* [MWEBSTART-234](https://issues.apache.org/jira/browse/MWEBSTART-234) - Unable to parse configuration of mojo org.codehaus.mojo:webstart-maven-plugin:1.0-beta-4:jnlp for parameter pack200: Cannot configure instance of org.codehaus.mojo.webstart.Pack200Config from true
* [MWEBSTART-235](https://issues.apache.org/jira/browse/MWEBSTART-235) - Upgrade from beta-1 to beta-4 breaks dependency resolution
* [MWEBSTART-237](https://issues.apache.org/jira/browse/MWEBSTART-237) - Wrong artifact resolved if project contains a module with the same artifactId.
* [MWEBSTART-239](https://issues.apache.org/jira/browse/MWEBSTART-239) - Can't verify some jars (Invalid SHA-1)
* [MWEBSTART-240](https://issues.apache.org/jira/browse/MWEBSTART-240) - Jar unsigner removes the complete content from the manifest

Improvements:

* [MWEBSTART-116](https://issues.apache.org/jira/browse/MWEBSTART-116) - jnlp-download-servlet should use dependencyManagement
* [MWEBSTART-153](https://issues.apache.org/jira/browse/MWEBSTART-153) - jnlp-download-servlet should apply outputJarVersion transitively
* [MWEBSTART-167](https://issues.apache.org/jira/browse/MWEBSTART-167) - Dependencies should allow per-group directory or groupId to be added to filename
* [MWEBSTART-189](https://issues.apache.org/jira/browse/MWEBSTART-189) - Fix documentation
* [MWEBSTART-199](https://issues.apache.org/jira/browse/MWEBSTART-199) - clarify the documentation - difference between 'jnlp' and 'jnlp-inline' goals
* [MWEBSTART-221](https://issues.apache.org/jira/browse/MWEBSTART-221) - Avoiding Unnecessary Update Checks
* [MWEBSTART-222](https://issues.apache.org/jira/browse/MWEBSTART-222) - Add support for  -tsa during signing (Trusted Timestamping) in webstart plugin
* [MWEBSTART-225](https://issues.apache.org/jira/browse/MWEBSTART-225) - Normalize input template override for servlet mojo
* [MWEBSTART-241](https://issues.apache.org/jira/browse/MWEBSTART-241) - Performance improvement for update manifest step
* [MWEBSTART-242](https://issues.apache.org/jira/browse/MWEBSTART-242) - Be able to configure simple parameters by properties

New Features:

* [MWEBSTART-24](https://issues.apache.org/jira/browse/MWEBSTART-24) - A Mojo for running the application could be useful
* [MWEBSTART-25](https://issues.apache.org/jira/browse/MWEBSTART-25) - A Mojo for deploying/dist'ing the application could be useful
* [MWEBSTART-122](https://issues.apache.org/jira/browse/MWEBSTART-122) - Creating war instead of zip
* [MWEBSTART-128](https://issues.apache.org/jira/browse/MWEBSTART-128) - Generate versioned JARs 
* [MWEBSTART-195](https://issues.apache.org/jira/browse/MWEBSTART-195) - Support same artifactId for different groups

Tasks:

* [MWEBSTART-226](https://issues.apache.org/jira/browse/MWEBSTART-226) - Updates to maven-jarsigner 1.3.1
* [MWEBSTART-227](https://issues.apache.org/jira/browse/MWEBSTART-227) - Updates to keytool 1.4
* [MWEBSTART-230](https://issues.apache.org/jira/browse/MWEBSTART-230) - use java 5 plexus annotations
* [MWEBSTART-236](https://issues.apache.org/jira/browse/MWEBSTART-236) - Updates to maven-share-utils 0.5
* [MWEBSTART-238](https://issues.apache.org/jira/browse/MWEBSTART-238) - Remove verifyjar parameter


Have Fun!
