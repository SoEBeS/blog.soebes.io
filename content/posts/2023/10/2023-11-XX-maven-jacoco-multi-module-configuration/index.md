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
The first article was the simple one, because it was on a single module project. That means all information
which is needed is available within the same module. The only relevant part would be in which phase the information
is being created.

This
article will goto the configuration for a multi module build.


## Example Project

# Solutions
## Separate Report Module

* Pros 
  * It works
* Cons
  * You have to maintain the dependencies
    * If you have a larger number of modules it will become cumbersome or even impossible depending on the number of 
      modules.

## Using existing Module


# Another?
* Check for https://www.jacoco.org/jacoco/trunk/doc/report-aggregate-mojo.html
  * Might that be a solution?
