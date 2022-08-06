---
title: "Apache Archiva 2.1.0"
date: 2014-07-20T11:26:00
lastmod: 2014-07-20T11:26
categories:
  - Maven
---
Hi,

The Apache Archiva team would like to announce the release of 
[Archiva 2.1.0. Archiva](http://archiva.apache.org).

Archiva is an application for managing one or more remote
repositories, including administration, artifact handling, browsing
and searching.

If you have any questions, please consult:

the web site: http://archiva.apache.org/
the archiva-user mailing list: http://archiva.apache.org/mail-lists.html

New in Archiva 2.1.0

Apache Archiva 2.1.0 is a bugs fix release:

NOTE: jdk 1.7 is now prerequisite with Apache Archiva 1.7

Compatibility Changes

If upgrading from earlier versions of Archiva, the list of libraries
in wrapper.conf has changed. If you have customized your copy of
wrapper.conf, please update it for compatibility with the version
distributed with the current release.
As the database storage has been removed, you can remove the JNDI
entry for jdbc/archiva. After upgrading from a previous version, you
will have to run a full scan to populate the new JCR Repository. This
will be done on first start of Archiva.

Refer to the Upgrading Archiva guide for more information.

<!-- more -->


Release Notes

The Archiva 2.1.0 features set can be seen in the feature tour.

Changes in Archiva 2.1.0

Released: 20th July 2014

Improvements:

 * [MRM-1210](https://issues.apache.org/jira/browse/MRM-1210) - Dependency tree should include the artifact type
 * [MRM-1558](https://issues.apache.org/jira/browse/MRM-1558) - Please provide some UI element which shows degraded and/or badly connected remote repository
 * [MRM-1802](https://issues.apache.org/jira/browse/MRM-1802) - Find a cache solution for browsing part (especially root browsing)
 * [MRM-1829](https://issues.apache.org/jira/browse/MRM-1829) - Change default value of of AysncLogger strategy for log4j async
 * [MRM-1834](https://issues.apache.org/jira/browse/MRM-1834) - Add limit to index search query to prevent unnecessary calculations
 * [MRM-1836](https://issues.apache.org/jira/browse/MRM-1836) - Make search limit (maxCount) configurable via UI
 * [MRM-1843](https://issues.apache.org/jira/browse/MRM-1843) - provide mechanism to obtain the latest version of an artifact

Bugs:

 * [MRM-887](https://issues.apache.org/jira/browse/MRM-887) - Start script has no valid "uname" option
 * [MRM-1809](https://issues.apache.org/jira/browse/MRM-1809) - Users - Manage section sort by name doesn't work as expected
 * [MRM-1812](https://issues.apache.org/jira/browse/MRM-1812) - Users - Manage section needs Sort by User Name, Sort by Full Name, and Sort by Email buttons
 * [MRM-1813](https://issues.apache.org/jira/browse/MRM-1813) - Users - Manage section filters don't seem to work
 * [MRM-1823](https://issues.apache.org/jira/browse/MRM-1823) - java 1.7 as prerequisite
 * [MRM-1824](https://issues.apache.org/jira/browse/MRM-1824) - metadata storage using Cassandra
 * [MRM-1825](https://issues.apache.org/jira/browse/MRM-1825) - MD5 hashes are for wrong file name
 * [MRM-1826](https://issues.apache.org/jira/browse/MRM-1826) - Force Internet Explorer into Standards Mode
 * [MRM-1830](https://issues.apache.org/jira/browse/MRM-1830) - Charset applied to binary repository HTTP responses
 * [MRM-1833](https://issues.apache.org/jira/browse/MRM-1833) - Nullpointer when browsing artifacts which have dependencies with scope "import"
 * [MRM-1837](https://issues.apache.org/jira/browse/MRM-1837) - DefaultArchivaConfiguration holds references to classes
 * [MRM-1841](https://issues.apache.org/jira/browse/MRM-1841) - "Remember me" not working
 * [MRM-1842](https://issues.apache.org/jira/browse/MRM-1842) - Remove per default log4j2 Async Logging
 * [MRM-1846](https://issues.apache.org/jira/browse/MRM-1846) - Regression in 2.0.1 : uniqueVersion false not supported
 * [MRM-1849](https://issues.apache.org/jira/browse/MRM-1849) - Unable to download -SNAPSHOT jars after 2.0.1 Upgrade


Have fun!
-- The Apache Archiva Team
