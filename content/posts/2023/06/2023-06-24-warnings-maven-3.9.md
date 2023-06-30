---
title: "WARNINGs with Maven 3.9+"
date: 2023-06-24T18:20:30
lastmod: 2023-06-24T18:20:30
categories:
  - maven
  - maven-plugins
---
You might be surprised that all of a sudden that some WARNINGs are being emitted by your Maven
build (at the end; Starting with Maven 3.9.1 and 3.9.2) like the following:
```
...
[INFO] Finished at: 2023-06-24T20:14:18+02:00
[INFO] ------------------------------------------------------------------------
[WARNING] 
[WARNING] Plugin validation issues were detected in 3 plugin(s)
[WARNING] 
[WARNING]  * org.jacoco:jacoco-maven-plugin:0.8.10
[WARNING]  * org.apache.maven.plugins:maven-site-plugin:3.12.1
[WARNING]  * org.codehaus.mojo:exec-maven-plugin:3.0.0
[WARNING] 
[WARNING] For more or less details, use 'maven.plugin.validation' property with one of the values (case insensitive): [BRIEF, DEFAULT, VERBOSE]
[WARNING] 
```
Those WARNINGs which are emitted, are **not** for you as user of those plugins. They
are intended for the plugin maintainers/authors, because that means those plugins
are using old API's or out-of-date artifacts or missing other things. The reason
for that is that those old API's etc. are not supported in future Apache Maven Versions.
This means starting with Maven 4 those plugins will not work anymore. Currently only
[alpha versions are available](https://maven.apache.org/docs/history.html#maven-4-0), but
that would mean those plugins will not continue to work.

To reassure you as a user, the maintainers and authors of the plugins are required to bring 
their plugins up-to-date. You might help here as a user because some maintainers might not be 
aware of such issues. In such cases it could be helpful to report it to them.

If you like to know more about the details, as a user, you can simply rerun the previous
command line execution with the supplemental parameters:
```
mvn clean package -Dmaven.plugin.validation=VERBOSE
```
That will print out much more details like the following:
```text
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  0.724 s
[INFO] Finished at: 2023-06-24T18:25:20+02:00
[INFO] ------------------------------------------------------------------------
[WARNING] 
[WARNING] Plugin validation issues were detected in 3 plugin(s)
[WARNING] 
[WARNING]  * org.jacoco:jacoco-maven-plugin:0.8.10
[WARNING]   Declared at location(s):
[WARNING]    * com.soebes.smpp:smpp:6.0.3-SNAPSHOT (pom.xml) @ line 497
[WARNING]   Used in module(s):
[WARNING]    * com.soebes.smpp:smpp:6.0.3-SNAPSHOT (pom.xml)
[WARNING]   Plugin issue(s):
[WARNING]    * Plugin is a Maven 2.x plugin, which will be not supported in Maven 4.x
[WARNING]    * Plugin mixes multiple Maven versions: [3.0, 2.0.2]
[WARNING]    * Plugin should declare these Maven artifacts in `provided` scope: [org.apache.maven:maven-repository-metadata:3.0, org.apache.maven:maven-artifact:3.0]
[WARNING]    * Plugin depends on plexus-container-default, which is EOL
[WARNING] 
[WARNING]  * org.apache.maven.plugins:maven-site-plugin:3.12.1
[WARNING]   Declared at location(s):
[WARNING]    * com.soebes.smpp:smpp:6.0.3-SNAPSHOT (pom.xml) @ line 593
[WARNING]   Used in module(s):
[WARNING]    * com.soebes.smpp:smpp:6.0.3-SNAPSHOT (pom.xml)
[WARNING]   Plugin issue(s):
[WARNING]    * Plugin depends on the deprecated Maven 2.x compatibility layer, which may not be supported in Maven 4.x
[WARNING]    * Plugin depends on plexus-container-default, which is EOL
[WARNING]   Mojo issue(s):
[WARNING]    * Mojo site:attach-descriptor (org.apache.maven.plugins.site.descriptor.SiteDescriptorAttachMojo)
[WARNING]      - Parameter 'localRepository' uses deprecated parameter expression '${localRepository}': ArtifactRepository type is deprecated and its use in Mojos should be avoided.
[WARNING] 
[WARNING]  * org.codehaus.mojo:exec-maven-plugin:3.0.0
[WARNING]   Declared at location(s):
[WARNING]    * unknown
[WARNING]   Used in module(s):
[WARNING]    * com.soebes.smpp:smpp:6.0.3-SNAPSHOT (pom.xml)
[WARNING]   Plugin issue(s):
[WARNING]    * Plugin should declare these Maven artifacts in `provided` scope: [org.apache.maven:maven-settings-builder:3.0, org.apache.maven:maven-repository-metadata:3.0, org.apache.maven:maven-artifact:3.0, org.apache.maven:maven-settings:3.0, org.apache.maven:maven-plugin-api:3.0, org.apache.maven:maven-aether-provider:3.0, org.apache.maven:maven-model:3.0, org.apache.maven:maven-core:3.0, org.apache.maven:maven-model-builder:3.0]
[WARNING] 
[WARNING] 
[WARNING] Fix reported issues by adjusting plugin configuration or by upgrading above listed plugins. If no upgrade available, please notify plugin maintainers about reported issues.
[WARNING] For more or less details, use 'maven.plugin.validation' property with one of the values (case insensitive): [BRIEF, DEFAULT, VERBOSE]
[WARNING] 
```
It's a bit overwhelming. So let us focus on one plugin first: (extracted the part for the `jacoco-maven-plugin`):
```text
[WARNING]  * org.jacoco:jacoco-maven-plugin:0.8.10
[WARNING]   Declared at location(s):
[WARNING]    * com.soebes.smpp:smpp:6.0.3-SNAPSHOT (pom.xml) @ line 497
[WARNING]   Used in module(s):
[WARNING]    * com.soebes.smpp:smpp:6.0.3-SNAPSHOT (pom.xml)
[WARNING]   Plugin issue(s):
[WARNING]    * Plugin is a Maven 2.x plugin, which will be not supported in Maven 4.x
[WARNING]    * Plugin mixes multiple Maven versions: [3.0, 2.0.2]
[WARNING]    * Plugin should declare these Maven artifacts in `provided` scope: [org.apache.maven:maven-repository-metadata:3.0, org.apache.maven:maven-artifact:3.0]
[WARNING]    * Plugin depends on plexus-container-default, which is EOL
[WARNING] 
```
The part with : `Plugin issue(s):` shows the interesting parts. One hint is interesting:
`* Plugin is a Maven 2.x plugin, which will be not supported in Maven 4.x`.
That means the plugin supports Maven 2 which is end of life since 2014! And
Since 2010 there is Maven 3+ available. Furthermore, artifacts in the plugin
have been declared wrong. More accurate the scope has been defined wrong. Apart
from that it depends on a long time EOL component `plexus-container-default`.

So taking a look into the next reported plugin. The `maven-site-plugin`:
```text
[WARNING]  * org.apache.maven.plugins:maven-site-plugin:3.12.1
[WARNING]   Declared at location(s):
[WARNING]    * com.soebes.smpp:smpp:6.0.3-SNAPSHOT (pom.xml) @ line 593
[WARNING]   Used in module(s):
[WARNING]    * com.soebes.smpp:smpp:6.0.3-SNAPSHOT (pom.xml)
[WARNING]   Plugin issue(s):
[WARNING]    * Plugin depends on the deprecated Maven 2.x compatibility layer, which may not be supported in Maven 4.x
[WARNING]    * Plugin depends on plexus-container-default, which is EOL
[WARNING]   Mojo issue(s):
[WARNING]    * Mojo site:attach-descriptor (org.apache.maven.plugins.site.descriptor.SiteDescriptorAttachMojo)
[WARNING]      - Parameter 'localRepository' uses deprecated parameter expression '${localRepository}': ArtifactRepository type is deprecated and its use in Mojos should be avoided.
[WARNING] 
```
Yes this plugin has the same issue to support Maven 2 compatibility layer which
will not work in Maven 4 anymore. And not to forget also depends on the component
`plexus-container-default` as mentioned before.
This plugin also defines parameter with a deprecated parameter expression. Luckily for
that plugin already exists a compatible replacement version [maven-site-plugin](https://maven.apache.org/plugins/maven-site-plugin/).

Ok, the last plugin reported is the `exec-maven-plugin`:
```text
[WARNING]  * org.codehaus.mojo:exec-maven-plugin:3.0.0
[WARNING]   Declared at location(s):
[WARNING]    * unknown
[WARNING]   Used in module(s):
[WARNING]    * com.soebes.smpp:smpp:6.0.3-SNAPSHOT (pom.xml)
[WARNING]   Plugin issue(s):
[WARNING]    * Plugin should declare these Maven artifacts in `provided` scope: [org.apache.maven:maven-settings-builder:3.0, org.apache.maven:maven-repository-metadata:3.0, org.apache.maven:maven-artifact:3.0, org.apache.maven:maven-settings:3.0, org.apache.maven:maven-plugin-api:3.0, org.apache.maven:maven-aether-provider:3.0, org.apache.maven:maven-model:3.0, org.apache.maven:maven-core:3.0, org.apache.maven:maven-model-builder:3.0]
[WARNING] 
```
The `exec-maven-plugin` uses "only" the wrong scope for some dependencies fortunately there
exists a newer version (3.1.0) of the [exec-maven-plugin](https://www.mojohaus.org/exec-maven-plugin/).

So if you see such warning you might help the whole community by reporting such issues to the
plugin maintainer/author if not yet reported to make them aware about the issue. That makes 
sure that those plugins continue to work with Apache Maven 4.

*Update*: 
* Starting with Maven 3.9.3 you should activate those warning if you are interested in checking
the plugins in your build. You can simply achieve that by using the following command line execution:
+
```bash
mvn verify -Dmaven.plugin.validation=VERBOSE
```
