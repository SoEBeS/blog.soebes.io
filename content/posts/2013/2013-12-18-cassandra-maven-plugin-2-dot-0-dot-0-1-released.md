---
title: "Cassandra Maven plugin 2.0.0-1 released"
date: 2013-12-18T21:19:00
lastmod: 2013-12-18T21:19:00
categories:
  - Maven
  - Maven-Plugin-Releases
---
The Mojo team is pleased to announce the release 2.0.0-1 of [Cassandra
Maven plugin](http://mojo.codehaus.org/cassandra-maven-plugin/)

Mojo's Cassandra Plugin is used when you want to control a test
instance of [Apache Cassandra](http://cassandra.apache.org/) 
from within your Apache Maven build.

```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>cassandra-maven-plugin</artifactId>
  <version>2.0.0-1</version>
</plugin>
```

<!-- more -->

[Release Notes - Mojo's Cassandra Maven Plugin - Version 2.0.0-1](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=12121&version=19821)

Improvements:

 * [MCASSANDRA-16](https://issues.apache.org/jira/browse/MCASSANDRA-16) - Cassandra plugin force to use slf4j log4j binding
 * [MCASSANDRA-22](https://issues.apache.org/jira/browse/MCASSANDRA-22) - Add support for CQL3
 * [MCASSANDRA-24](https://issues.apache.org/jira/browse/MCASSANDRA-24) - Add failOnError option to delete goal
 * [MCASSANDRA-25](https://issues.apache.org/jira/browse/MCASSANDRA-25) - Logging configuration
 * [MCASSANDRA-31](https://issues.apache.org/jira/browse/MCASSANDRA-31) - Enable User to set 'native_transport_port'
 * [MCASSANDRA-32](https://issues.apache.org/jira/browse/MCASSANDRA-32) - Support Cassandra 2.0.x

New Features:

 * [MCASSANDRA-17](https://issues.apache.org/jira/browse/MCASSANDRA-17) - CassandraUnit Integration
 * [MCASSANDRA-27](https://issues.apache.org/jira/browse/MCASSANDRA-27) - add system properties to cassandra cli when starting

Fixed Bugs:

 * [MCASSANDRA-26](https://issues.apache.org/jira/browse/MCASSANDRA-26) - Issue starting cassandra "java.lang.UnsatisfiedLinkError: no snappyjava in java.library.path "
 * [MCASSANDRA-30](https://issues.apache.org/jira/browse/MCASSANDRA-30) - Fix smoke it

Have Fun.
