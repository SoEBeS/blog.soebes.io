---
title: "Apache Maven 4.0.0 Alpha 2 Released"
date: 2022-10-20T12:37:25
lastmod: 2022-10-20T12:37:25
categories:
  - Maven
---
We always start with the same approach for announcing releases:

> The Apache Maven team is please to announce the release of the Apache Maven
4.0.0-alpha-2.
>
> Apache Maven is a software project management and comprehension tool.
Based on the concept of a project object model (POM), Maven can manage a
project's build, reporting and documentation from a central piece of
information.
> 
> Maven 4.0.0-alpha-2 is available via
https://dlcdn.apache.org/maven/maven-4/4.0.0-alpha-2/
> 
> This in alpha release, not suitable for production.
> Major features include:
> * cli improvement: `--also-make` , --resume, --non-recursive,
>   --fail-on-severity
> * consistent timestamps
> * build/consumer POMs (automatic parent versioning, automatic versioning
>   of reactor dependencies, automatic detection of child modules)
> * new maven 4 api
>
> The full release notes for maven 4.0.0-alpha-2 are available at
>
> https://issues.apache.org/jira/secure/ReleaseNote.jspa?version=12351403&projectId=12316922
>
> If you have any questions, please consult:
> - the web site: https://maven.apache.org/
> - the maven-user mailing list: https://maven.apache.org/mailing-lists.html
> - the reference documentation: https://maven.apache.org/ref/4.0.0-alpha-2/

But this time it's a bit special because this is the first public alpha release of a
Apache Maven 4.0 line.

Just as a reminder the last major release of [Apache Maven was in 2009][maven-3.0].


So why is it a major release? We have three big changes within Maven Core (what you usually
download and call via `mvn` or `mvnw`).

The brief summary:

* Build/Consumer POM
* Reactor Improvements
* New Maven 4 Plugin/API

 
One thing is running Maven 4.X needs at least JDK8 as minimum. That shouldn't be a real problem
in these days but just mentioned it. This minimum might even change but for the moment we will keep that.
Most of the plugins having already the JDK8 minimum.

I would like to start with the changes related: build vs. consumer POM's.


[maven-3.0]: https://maven.apache.org/docs/history.html#maven-3-0-x