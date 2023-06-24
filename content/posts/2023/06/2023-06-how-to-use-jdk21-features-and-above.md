---
title: "Using JDK21 Preview Features and/or incubator classes"
date: 2023-06-24T21:47:15
lastmod: 2023-06-24T21:47:15
categories:
  - maven
  - jdk21
  - jkd-preview
  - jdk-incubator
---
Sometimes you want to play around with those new fancy features of JDK21 (or even newer 
JDK's) like preview features and maybe some classes from the incubator.

So how can you configure your Maven build to support such a play lesson? It's easier than you 
think. Let's start the configuration. My assumption is that you would like to play around
with a preview features of [JDK21][JDK21] for example String Templates ([JEP430][JEP430]). 
I just selected this JEP for demonstration. You can select whatever JEP in preview.

The first thing is to know that you have to activate the preview features via:
```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-compiler-plugin</artifactId>
  <configuration>
    <enablePreview>true</enablePreview>
  </configuration>
</plugin>
```
The configuration `enablePreview` exists since version 3.10.1 of the 
[Maven Compiler Plugin][maven-compiler-plugin]. So in general I recommend to use
the most recent versions of the [plugins][maven-plugins] otherwise it might happen
that some configuration options or alike might not exist at all or special things
for newer JDK versions.

This should be done in general in the `pluginManagement` section of your `pom.xml`
file.

So now you are able to use this new feature in your test code (you could use it in your
production code as well if you prefer that):

```java
package com.soebes.jdk21;

import org.junit.jupiter.api.Test;

import static java.lang.StringTemplate.STR;
import static org.assertj.core.api.Assertions.assertThat;

class TemplateTest {
  @Test
  void name() {
    String name = "Jon";
    String info = STR."My name is \{name}";
    assertThat(info).isEqualTo("My name is Jon");
  }

}
```
Ok so far so good, but wait, before you can run this test you have to do a bit more. We
need to change the configuration to run the test with the support of preview feature. 
This is required to give the JVM the option `--enable-preview` which is used during the
execution of the tests. This has to be done like the following:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-plugin</artifactId>
  <configuration>
    <argLine>
      --enable-preview
    </argLine>
  </configuration>
</plugin>
```

As I mentioned before, I strongly recommend to use the most recent versions 
of the [plugins][maven-plugins]. 

One important thing to mention. If you run those tests or the whole build 
you will get some `WARNING`s like the following:
```text
[INFO] --- compiler:3.11.0:testCompile (default-testCompile) @ jdk21 ---
[INFO] Changes detected - recompiling the module! :dependency
[INFO] Compiling 5 source files with javac [release 21] to target/test-classes
[WARNING] ../jdk21/src/test/java/com/soebes/jdk21/TemplateTest.java:[12,23] string templates are a preview feature and may be removed in a future release.
[WARNING] ../jdk21/src/test/java/com/soebes/jdk21/TemplateTest.java:[12,23] string templates are a preview feature and may be removed in a future release.
[WARNING] ../jdk21/src/test/java/com/soebes/jdk21/TemplateTest.java:[5,24] java.lang.StringTemplate is a preview API and may be removed in a future release.
[INFO] 
```
Those WARNINGs would have been emitted during the production code compilation if you used
such feature in the production already. This makes it clear that you are using such [preview features][JEP12].

And an extremely important hint: 

**Never deploy such code which uses preview features anywhere. Not in your
company repository manger nor into central repository**

The `StringTemplate` class is marked as a preview feature independent that it is the package `java.lang`:
```java
@PreviewFeature(feature=PreviewFeature.Feature.STRING_TEMPLATES)
public interface StringTemplate {
  ...

}
```
So another nice thing would be to use a class from the incubator like the `Vector` API? Ok. What do we need to do?
The first thing is to enhance our previous configuration with the `--add-modules jdk.incubator.vector` information
like the following:
```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-compiler-plugin</artifactId>
  <configuration>
    <enablePreview>true</enablePreview>
    <compilerArgs>
      <arg>--add-modules</arg>
      <arg>jdk.incubator.vector</arg>
    </compilerArgs>
  </configuration>
</plugin>
```
And of course you have to add the same to add to the `maven-surefire-plugin` configuration to activate
the `jdk.incubator.vector` module in your tests as well. This means the configuration for
maven-surefire-plugin should look like the following:
```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-plugin</artifactId>
  <configuration>
    <argLine>
      --enable-preview
      --add-modules jdk.incubator.vector
    </argLine>
  </configuration>
</plugin>
```
This results in WARNING as before as the following:
```text
..
[INFO] --- compiler:3.11.0:compile (default-compile) @ jdk21 ---
[INFO] Changes detected - recompiling the module! :source
[INFO] Compiling 2 source files with javac [release 21] to target/classes
[WARNING] using incubating module(s): jdk.incubator.vector
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ jdk21 ---
[INFO] skip non existing resourceDirectory ../jdk21/src/test/resources
[INFO] skip non existing resourceDirectory ../jdk21/src/test/resources-filtered
[INFO] 
[INFO] --- compiler:3.11.0:testCompile (default-testCompile) @ jdk21 ---
[INFO] Changes detected - recompiling the module! :dependency
[INFO] Compiling 5 source files with javac [release 21] to target/test-classes
[WARNING] ../jdk21/src/test/java/com/soebes/jdk21/TemplateTest.java:[12,23] string templates are a preview feature and may be removed in a future release.
[WARNING] ../jdk21/src/test/java/com/soebes/jdk21/TemplateTest.java:[12,23] string templates are a preview feature and may be removed in a future release.
[WARNING] using incubating module(s): jdk.incubator.vector
[WARNING] ../jdk21/src/test/java/com/soebes/jdk21/TemplateTest.java:[5,24] java.lang.StringTemplate is a preview API and may be removed in a future release.
[INFO] 
[INFO] --- surefire:3.1.2:test (default-test) @ jdk21 ---
[INFO] Using auto detected provider org.apache.maven.surefire.junitplatform.JUnitPlatformProvider
[INFO] 
[INFO] -------------------------------------------------------
[INFO]  T E S T S
[INFO] -------------------------------------------------------
WARNING: Using incubator modules: jdk.incubator.vector
[INFO] Running com.soebes.jdk21.TemplateTest
.. 
```

A small hint based on the usage of JDK21+. Starting with JDK21 the [JEP-451][JEP451] has been integrated
into the JDK21 builds which means the usage of dynamic loaded agents for example the famous Mockito library
results into WARNINGs as well which looks like this:
```text
..
[INFO] Tests run: 3, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 0.217 s -- in com.soebes.jdk21.SequencedCollectionTest
[INFO] Running com.soebes.jdk21.AFinalClassTest
OpenJDK 64-Bit Server VM warning: Sharing is only supported for boot loader classes because bootstrap classpath has been appended
WARNING: A Java agent has been loaded dynamically (/Users/khm/.m2/repository/net/bytebuddy/byte-buddy-agent/1.14.5/byte-buddy-agent-1.14.5.jar)
WARNING: If a serviceability tool is in use, please run with -XX:+EnableDynamicAgentLoading to hide this warning
WARNING: If a serviceability tool is not in use, please run with -Djdk.instrument.traceUsage for more information
WARNING: Dynamic loading of agents will be disallowed by default in a future release
[INFO] Tests run: 1, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 0.472 s -- in com.soebes.jdk21.AFinalClassTest
[INFO] Running com.soebes.jdk21.incubator.VectorTest
..
```
This makes it necessary to add the supplemental configuration `-XX:+EnableDynamicAgentLoading` to your 
maven-surefire-plugin configuration like this:
```xml
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-surefire-plugin</artifactId>
        <configuration>
          <argLine>
            --enable-preview
            --add-modules jdk.incubator.vector
            -XX:+EnableDynamicAgentLoading
          </argLine>
        </configuration>
      </plugin>
```

A full working example which obviously requires JDK21 most recent EA build can be found here:

https://github.com/khmarbaise/jdk21

Happy coding.

[JDK21]: https://openjdk.org/projects/jdk/21/
[JEP12]: https://openjdk.org/jeps/12
[JEP430]: https://openjdk.org/jeps/430
[JEP451]: https://openjdk.org/jeps/451
[maven-plugins]: https://maven.apache.org/plugins/
[maven-compiler-plugin]: https://maven.apache.org/plugins/maven-compiler-plugin/