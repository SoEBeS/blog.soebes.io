---
title: "Back to the History"
date: 2023-10-26T17:53:30
lastmod: 2023-10-26T17:53:30
categories:
  - programming
  - jdk7
---
# Overview
Based on a comment on blog post, that the paradigm of Streams/Lambdas etc. would not
succeed nor make code more readable I started to think about those Stream API and Lambda stuff in Java a bit. 
Ah I forgot to mentioned this comment was done in 2023. I will **not** link to that, because I don't
want to embarrass anyone. I have just taken that comment as a starting point for my thoughts on that.  

So let us assume, we would do a kind of a time travel back to 2013 (that means a decade ago) and there is no Java 8 yet
(will be released in March 2014!) which means in other words the most recent JDK version available is Java 7. That means no 
Stream API, no Lambdas, not event records etc.

So now the question arises: How does code looked like at that time for a business requirement?
So the first thing we have to define is the business requirement we would like to solve.. Yes of course that's not a 
real requirement but I think it would be a valid one, maybe in some other contexts. 

Ok let us start: 
* We have an Employee which contains information like the following:
  * designation which comprises of manager, constructive worker, developer, writer
  * salary (for simplicity just an integer)
  * and a name.

In reality this would be much more complex but I think you get the grasp on it.

Furthermore we now have a list of Employees with some exemplary values. The example list could be a result of a database
query which results in a list of [DTO objects](https://en.wikipedia.org/wiki/Data_transfer_object) (as you may assume).

I have defined the designation as a simple enumeration type like this:
```java
  enum Designation {
    MANAGER,
    CONSTRUCTIVE_WORKER,
    DEVELOPER,
    WRITER
  }
```
In reality this would be coming from a relational table in a database or alike. The list of employees which looks like this:
```java
new Employee("Gordon", Designation.DEVELOPER, 50000),
new Employee("Jane", Designation.DEVELOPER, 85000),
new Employee("Marc", Designation.DEVELOPER, 81000),
new Employee("Melissa", Designation.DEVELOPER, 91000),
new Employee("Jonas", Designation.MANAGER, 125000),
new Employee("Sophie", Designation.WRITER, 75000),
new Employee("Mike", Designation.CONSTRUCTIVE_WORKER, 145000)
```

So now express the business request which should be implemented. 

It should be calculated what the average salary per designation is? We could solve that either via a database (Yes SQL
is sometimes simpler than you think) or in Java. Obviously I go with Java here, because I wanted to show some Java code.




