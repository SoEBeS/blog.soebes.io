---
title: "Mojo's Webstart Maven Plugin version 1.0-beta-4 Released"
date: 2013-11-06T19:47:00
lastmod: 2013-11-06T19:47
categories:
  - Maven
  - Maven-Plugins
  - Maven-Plugin-Releases
---
The mojo Team has released a new release of the 
[Webstart Maven Plugin](http://mojo.codehaus.org/webstart/webstart-maven-plugin/upgrade.html)

This new version permits you to generate some [jnlp files acceptable with jdk >= 1.7u45](http://jira.codehaus.org/browse/MWEBSTART-213), 

You can also now use a [keystore from any url](http://jira.codehaus.org/browse/MWEBSTART-39).

<!-- more -->

To get this update, simply specify the version in your project`s
plugin configuration:

```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>webstart-maven-plugin</artifactId>
  <version>1.0-beta-4</version>
</plugin>
```

Roadmap:

Next release (1.0-beta-5) will appear soon, the issue [MWEBSTART-221](https://issues.apache.org/jira/browse/MWEBSTART-221) has 
been fixed to make possible usage of versionned resources. 

I expect to do this new release in the folowing weeks.


The following bugs have been fixed:

 * [MWEBSTART-127](https://issues.apache.org/jira/browse/MWEBSTART-127) - unsignAlreadySignedJars sometimes removes manifest information
 * [MWEBSTART-132](https://issues.apache.org/jira/browse/MWEBSTART-132) - Unsigning already signed jars doesn`t work when libPath used
 * [MWEBSTART-138](https://issues.apache.org/jira/browse/MWEBSTART-138) - The number of signed artifacts differ from the number of modified artifacts
 * [MWEBSTART-144](https://issues.apache.org/jira/browse/MWEBSTART-144) - Jar Unsigning Does Not Work
 * [MWEBSTART-152](https://issues.apache.org/jira/browse/MWEBSTART-152) - Jar unsign does not remove certificate : comparison is case sensitive against "DSA", "RSA" and "SF" file extensions
 * [MWEBSTART-186](https://issues.apache.org/jira/browse/MWEBSTART-186) - While parsing JNLPConf default value of templateDirectory is wrong
 * [MWEBSTART-196](https://issues.apache.org/jira/browse/MWEBSTART-196) - Jar signing fails if path contains parentheses
 * [MWEBSTART-198](https://issues.apache.org/jira/browse/MWEBSTART-198) - verify via jarsigner not working
 * [MWEBSTART-218](https://issues.apache.org/jira/browse/MWEBSTART-218) - Can`t build project with jdk1.5
 * [MWEBSTART-219](https://issues.apache.org/jira/browse/MWEBSTART-219) - Transitive dependencies not included in generated jnlp files and version.xml

The following improvments:

 * [MWEBSTART-39](https://issues.apache.org/jira/browse/MWEBSTART-39) - Allow keystore to be: a file, classpath resource or remote resource (not only a file)
 * [MWEBSTART-50](https://issues.apache.org/jira/browse/MWEBSTART-50) - AbstractJnlpMojo hardcode`s webstart archive
 * [MWEBSTART-121](https://issues.apache.org/jira/browse/MWEBSTART-121) - The plugin should pick up jars from sister projects 
 * [MWEBSTART-145](https://issues.apache.org/jira/browse/MWEBSTART-145) - Dependencies (jar resources) from the webstart plugin are not resolved using the reactor, so ```mvn clean package``` will not work. Then, ```mvn release:prepare``` will not work either.
 * [MWEBSTART-200](https://issues.apache.org/jira/browse/MWEBSTART-200) - Allow to pass arbitrary properties into velocity template for JNLP file
 * [MWEBSTART-206](https://issues.apache.org/jira/browse/MWEBSTART-206) - Upgrade code to java 5
 * [MWEBSTART-207](https://issues.apache.org/jira/browse/MWEBSTART-207) - Source code formatting
 * [MWEBSTART-212](https://issues.apache.org/jira/browse/MWEBSTART-212) - support for --pass-file=<file_name> (of the pack200 command)
 * [MWEBSTART-213](https://issues.apache.org/jira/browse/MWEBSTART-213) - Enable Manipulation of the manifest from dependend jars
 * [MWEBSTART-220](https://issues.apache.org/jira/browse/MWEBSTART-220) - Allow to pass arbitrary properties into velocity template for jnlp-download-servlet mojo JNLP file

and the following task have been fixed:

* [MWEBSTART-20](https://issues.apache.org/jira/browse/MWEBSTART-20) - sort out potential licensing issue of the pack200 tasks
* [MWEBSTART-217](https://issues.apache.org/jira/browse/MWEBSTART-217) - Use java 5 maven plugin annotations

