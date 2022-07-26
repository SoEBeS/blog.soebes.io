---
title: "Iterations and Maven? Not Possible?"
date: 2013-03-30T11:16:26
lastmod: 2013-03-30T11:16:26
categories:
  - Maven
---
During my experiences with Maven I had a few moments where I wished having some kind of iterations to 
go over a list of whatever (servers, environments etc.). 

After some thinking about the problem i have decided to write my own plugin which will solve the problem. 
And now I have created such [plugin][github-iterator-maven-plugin]. 
<!-- more -->

Currently the plugin can be used by using it from the 
[staging repository](https://oss.sonatype.org/content/repositories/comsoebesmavenplugins-660/). 
After some feedback i will release it to Maven central. If you find some problems with the plugin you can 
create a [ticket on github](https://github.com/khmarbaise/iterator-maven-plugin/issues) or write an 
<a href="mailto:mavenplugin@soebes.de">email to me</a>. You can use the plugin like the following:

In this case it will iterator over the given list test,prod and dev and call for every item 
the [maven-assembly-plugin](https://maven.apache.org/plugins/maven-assembly-plugin).

```xml
<plugin>
  <groupId>com.soebes.maven.plugins</groupId>
  <artifactId>iterator-maven-plugin</artifactId>
  <version>0.1.0</version>
  <executions>
    <execution>
      <phase>package</phase>
      <goals>
        <goal>executor</goal>
      </goals>
      <configuration>
        <items>
          <item>test</item>
          <item>prod</item>
          <item>dev</item>
        </items>
 
        <pluginExecutors>
          <pluginExecutor>
            <plugin>
              <groupId>org.apache.maven.plugins</groupId>
              <artifactId>maven-assembly-plugin</artifactId>
              <version>2.4</version>
            </plugin>
            <goal>single</goal>
            <configuration>
              <descriptors>
                <descriptor>${project.basedir}/@item@.xml</descriptor>
              </descriptors>
            </configuration>
          </pluginExecutor>
        </pluginExecutors>
      </configuration>
    </execution>
  </executions>
</plugin>
```

If you need you can execute several plugins as well. Just use an extra pluginExecutor for each of your plugins. So in other words: Iteration or foreach in Maven is solved.
