---
title: "Apache Maven JaCoCo Configuration in Multi Module Projects"
date: 2023-10-26T17:53:30
lastmod: 2023-10-26T17:53:30
categories:
  - jacoco
  - maven-plugins
  - plugin-configuration
---
# Overview
The first article was the simple one, because it was on a single module project. This
article will goto the configuration for a multi module build.


## Example Project

# Solutions
## Separate Report Module

* Pros 
  * It works
* Cons
  * You have to maintain the dependencies
    * If you have a larger number of modules it could become a challenge

## Using existing Module


# Another?
* Check for https://www.jacoco.org/jacoco/trunk/doc/report-aggregate-mojo.html
  * Might that be a solution?
