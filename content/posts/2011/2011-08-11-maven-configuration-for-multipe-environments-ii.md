---
title: "Maven: Configuration For Multipe Environments - II"
date: 2011-08-11T09:41:32
lastmod: 2011-08-11T09:41:32
categories:
  - Maven
  - Maven Best Practice
---
Based on a comment on my 
[previous article](/blog/2011/07/29/maven-configuration-for-multipe-environments/ "previous article") i would like to show 
how to add dependencies to the generated artifacts depending on the environment.

The most important problem is: How to get the different artifacts? If you have artifacts which are stored 
in a Maven Repository like Maven Central it is easy to get them. 
Just use the [Maven Dependency Plugin](http://maven.apache.org/maven-dependency-plugin/) to get the artifacts. 
This means you have to add the following to your pom file: 

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-dependency-plugin</artifactId>
  <version>2.3</version>
  <executions>
    <execution>
      <id>test</id>
      <phase>prepare-package</phase>
      <goals>
        <goal>copy</goal>
      </goals>
      <configuration>
        <artifactItems>
          <artifactItem>
            <groupId>junit</groupId>
            <artifactId>junit</artifactId>
            <version>4.1</version>
            <type>jar</type>
          </artifactItem>
        </artifactItems>
        <overWrite>false</overWrite>
        <outputDirectory>${project.build.directory}/environment/test</outputDirectory>
      </configuration>
    </execution>
```

Apart from that you need a separate execution block for every environment (test, qa and production in our case). 
Furthermore if you need more than one dependency you can simply achieve this by adding them in the artifactItems block with their 
appropriate groupId, artifactId etc. So far so good. But what happens if you need artifacts which are not 
located within an Maven like repository? Ok not problem at all. You can use the wagon-maven-plugin to download the appropriate artifacts. 
To do such things you simply enhance your pom with the appropriate configuration for the 
[wagon-maven-plugin](http://mojo.codehaus.org/wagon-maven-plugin/):

```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>wagon-maven-plugin</artifactId>
  <version>1.0-beta-4</version>
  <executions>
    <execution>
      <id>download-test-data</id>
      <phase>prepare-package</phase>
      <goals>
        <goal>download-single</goal>
      </goals>
      <configuration>
        <url>http://archive.apache.org/dist/abdera/1.1.2/</url>
        <fromFile>apache-abdera-1.1.2-src.tar.gz</fromFile>
        <toDir>${project.build.directory}/environment/qa</toDir>
      </configuration>
    </execution>
  </executions>
</plugin>
```
In this case i have added a ```.tar.gz``` archive downloaded from Apache archive and added that to the qa environment. 
The full code of a full fledged Maven build for that and the previous article can be found 
[here](https://github.com/khmarbaise/multiple-artifacts).
