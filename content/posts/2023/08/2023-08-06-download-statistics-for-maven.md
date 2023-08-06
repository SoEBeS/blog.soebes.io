---
title: "Analysing Download Statistics for Apache Maven"
date: 2023-08-06T13:20:30
lastmod: 2023-08-06T13:20:30
categories:
  - maven-core
  - maven-plugins
---
# Overview
I have access to the download statistics of some projects in Maven Central. That means I can take a look how many times 
Apache Maven has been downloaded etc. So I wanted to know some more details based on my role as Apache Maven Chairman
and [PMC member][pmc-member]. So the first thing I've done, was to download for each month an 
`csv` file back to July 2022 and the latest thing I can access, at the time of writing this, was June 2022. So in the 
end this means, I have numbers for a full year which means from July 2022 to June 2023.

I have two different sets of files. One set of files, which represents the download numbers for Apache Maven Core (what
you usually call Maven; the thing you are calling like this: `mvn ...`). The other set of files contains the 
downloads for a larger number of Apache Maven Plugins. Those plugins are under the groupId `org.apache.maven.plugins`. 
This represents the plugins, which can be found here: [Apache Maven Plugin][maven-plugins].

# How To Analyse?
So there are several options, which I could have gone to analyse those files. Several people might have chosen things 
like Excel, Python, Perl (if anyone still knows that at all) or alike. I have to admit, I'm a Java developer, so the 
inclined reader might already guess what I selected? Yes, of course, I've decided to use Java for that task what else. 
In the end, there can be only one. 

# Maven Core Files
The first set of files represent the Apache Maven Core downloads. So let us take a look, how those `csv` files for Apache 
Maven Core look like? Here is an excerpt of the file for July 2022 (excerpt):
```text
"2.0.10","32","4.232163064443739E-6"
...
"3.6.1","346818","0.04586844891309738"
"3.6.2","258989","0.03425261750817299"
"3.6.3","1988609","0.2630036771297455"
"3.8.1","580532","0.07677831500768661"
"3.8.2","151217","0.019999219104647636"
"3.8.3","295197","0.03904131054878235"
"3.8.4","666038","0.08808692544698715"
"3.8.5","516146","0.06826294213533401"
"3.8.6","461053","0.06097660958766937"
```
That means, the first column represents a Maven version, the second column is the number of downloads
related to the file, which is monthly based(July 2022). The last column represents the relative number of downloads 
related to the total number of downloads within this month. So check the first line, which says there had been 
32 downloads in July 2022 of Apache Maven 2.0.10 (Yes, that really existed even in that time; 
[In 2009!][maven-history]). The `4.232163064443739E-6` represents the relative
number 32 divided by the total number of downloads within that month or in other words 0.0004%. Or let us check
the last line, which tells us that Apache Maven version 3.8.6 has been downloaded 461,053 times which means in
other words 6.1%. 

# Maven Plugin Files
The second set of files contains the download number related to [Apache Maven Plugin][maven-plugins]. 
So let us take a look here as well (excerpt): 
```text
"maven-pmd-plugin","448549","0.0024602634366601706"
"maven-project-info-reports-plugin","353876","0.0019409878877922893"
"maven-source-plugin","2585053","0.01417885534465313"
"maven-plugins","34702","1.9033830903936177E-4"
"maven-clean-plugin","16019474","0.08786582201719284"
"maven-resources-plugin","20210250","0.1108519658446312"
"maven-compiler-plugin","21722106","0.11914440244436264"
"maven-surefire-plugin","20446073","0.11214543133974075"
"maven-jar-plugin","16667766","0.09142166376113892"
"maven-site-plugin","10041046","0.05507451295852661"
"maven-install-plugin","13677668","0.0750211551785469"
...
"maven-artifact-plugin","709","3.888821083819494E-6"
"maven-scripting-plugin","113","6.197979587341251E-7"
```
In the first column is the name of the plugin, for example `maven-compiler-plugin` and the number of downloads in the
second columns and also the relative number of downloads related to the total number of downloads within that month. 
So this means the `maven-compiler-plugin` has been downloaded 21,722,106 times (ca. 21 million) in July 2022 and the 
`0.11914440244436264` means in other words ca. 11.9%. 

# Starting the task
I start with the set of files, which are related to Maven Core download numbers. So the first task was to read those 
files or more accurate to identify the files I need to read? That can be done in Java easily:
```java
Predicate<Path> IS_REGULAR_FILE = Files::isRegularFile;
Predicate<Path> IS_READABLE = Files::isReadable;
Predicate<Path> IS_VALID_FILE = IS_REGULAR_FILE.and(IS_READABLE);

static List<Path> allFilesInDirectoryTree(Path start) throws IOException{
    try(var pathStream=Files.walk(start)){
    return pathStream.filter(IS_VALID_FILE).toList();
    }
}
```
That results in a list with all files, that are existing in the directory `start` including
its subdirectories. Now I need to filter out only those names I'm currently interested in.
```java
var filesInDirectory = allFilesInDirectoryTree(rootDirectory);

var listOfSelectedFiles = filesInDirectory.stream()
    .filter(s -> s.getFileName().toString().startsWith("apache-maven-stats"))
    .toList();
```
So all file names I'm currently interested in are look like this:
```text
apache-maven-stats-2022-07.cvs
apache-maven-stats-2022-08.cvs
...
apache-maven-stats-2023-01.cvs
apache-maven-stats-2023-02.cvs
..
```
Now the interesting part. How to read them? The entries in line are separated by `","` and the entries itself are quoted 
with double quotes. The first column contains the version of Maven Core or in other words the Maven version, the second 
column contains the number of downloads during that month, while the third column contains the number related to the total 
of downloads during that month. Here an example line from one of the files:

```text
"2.0.10","32","4.232163064443739E-6"
```
So first things first...read a single file:
```java
static ... convert(Path csvFile) {
  try (var lines = Files.lines(csvFile)) {
    ...
  } catch (IOException e) {
    throw new RuntimeException(e);
  }
}
```
You might be a bit astonished about those ellipsis (`...`) within the example, those things are left out on purpose,
to show you step-by-step process how to solve such a problem in an easy way and focus on important parts here. So you see 
a try-catch-with-resources, which is necessary, because the result of `Files.lines(csvFile))` is a `Stream<String>`, whereas
the `Stream` is auto-closable. The translation of the `IOException` into an `RuntimeException` might look a bit weird, 
but it makes it easier to use the `convert` later in a Stream. So let us fill the ellipsis within the 
try-catch-with-resources with life, which can be handled like this:
```java
static String unquote(String withQuotes) {
    return withQuotes.substring(1, withQuotes.length() - 1);
}

static ... convert(Path csvFile) {
  try (var lines = Files.lines(csvFile)) {
    return lines.map(s -> s.split(","))
    .map(arr -> Line.of(unquote(arr[0]), unquote(arr[1]), unquote(arr[2])))
    .map(MavenStats::of)
    .toList();
  } catch (IOException e) {
    throw new RuntimeException(e);
  }
}
```
So `lines.map(s -> s.split(","))` is splitting the line at the `","` while the line
`.map(arr -> Line.of(unquote(arr[0]), unquote(arr[1]), unquote(arr[2])))` translates
the array into a `"Line"` record and uses a helper method `unquote` which removes the quotes.
So let use take a look onto the code of `Line` type:
```java
record Line(ComparableVersion version, long number, double percentage) {
  static Line of(String version, String number, String percentage) {
    return new Line(new ComparableVersion(version), Long.parseLong(number), Double.parseDouble(percentage));
  }
}
```
So via the helper method `of` it will translate the given strings into the appropriate data types. 
At this point there is a very important part, because using [`ComparableVersion`][maven-comparable-version] 
simplifies a lot of things. This type exists in Maven Core itself, which I can reuse (because I'm doing this in Java)
to make my life easier and compare later the version of Maven. So I don't need to write something myself.
This results into a type `Line` which contains the `ComparableVersion`, the `number`(downloads) and the 
`percentage` (yeah, I Know that's not accurate).

So now I finally convert it into a domain type `MavenStats` via `MavenStats::of`. This looks like this:
```java
record MavenStats(ComparableVersion version, long number, double percentage) {
  static MavenStats of(Line line) {
    return new MavenStats(line.version(), line.number(), line.percentage());
  }
}
```
You might argue, that I should have used not an intermediate type `Line` while going to `MavenStats`, but
from my perspective this makes a clear separation between the data coming from the file and the 
domain specific meaning. So let use take a look to the whole code in one:
```java
record MavenStats(ComparableVersion version, long number, double percentage) {
  static MavenStats of(Line line) {
    return new MavenStats(line.version(), line.number(), line.percentage());
  }
}

record Line(ComparableVersion version, long number, double percentage) {
  static Line of(String version, String number, String percentage) {
    return new Line(new ComparableVersion(version), Long.parseLong(number), Double.parseDouble(percentage));
  }
}

static String unquote(String withQuotes) {
  return withQuotes.substring(1, withQuotes.length() - 1);
}

static List<MavenStats> convert(Path csvFile) {
  try (var lines = Files.lines(csvFile)) {
    return lines.map(s -> s.split(","))
        .map(arr -> Line.of(unquote(arr[0]), unquote(arr[1]), unquote(arr[2])))
        .map(MavenStats::of)
        .toList();
  } catch (IOException e) {
    throw new RuntimeException(e);
  }
}
```
So in the end the `convert` method will convert the line oriented content of the file into
appropriate type safe records (`MavenStats`). Now we have to continue to handle all files in a
convenient way. The information we are missing about the year and month, which is contained within
the file name (Yes I have stored them in that way). Let us take a look onto the given code:
```java
record YearMonth(int year, int month, List<MavenStats> lines) {
}

record YearMonthFile(int year, int month, Path fileName) {
  static YearMonthFile of (Path fileName) {
    String fileNameOnly = fileName.getFileName().toString();
    int month = Integer.parseInt(fileNameOnly.substring(fileNameOnly.length() - 6, fileNameOnly.length() - 4));
    int year = Integer.parseInt(fileNameOnly.substring(fileNameOnly.length() - 11, fileNameOnly.length() - 7));
    return new YearMonthFile(year, month, fileName);
  }
}

static List<YearMonth> readCSVStatistics(Path rootDirectory) throws IOException {
  var filesInDirectory = allFilesInDirectoryTree(rootDirectory);

  var listOfSelectedFiles = filesInDirectory.stream()
      .filter(s -> s.getFileName().toString().startsWith("apache-maven-stats"))
      .toList();

  return listOfSelectedFiles
      .stream()
      .map(YearMonthFile::of)
      .map(ymf -> new YearMonth(ymf.year(), ymf.month(), convert(ymf.fileName())))
      .toList();
}
```
In the calling of the `YearMonth` you see `convert(ymf.fileName())`, which is exactly the method explained
previously. So here we go via `allFilesInDirectoryTree(rootDirectory)` which reads all file and 
will be filtered via `.filter(s -> s.getFileName().toString().startsWith("apache-maven-stats"))`.
In lines `.map(YearMonthFile::of)` the month and year will be extracted from the file name converted
into the `YearMonthFile` record type and the line will convert that into `YearMonth` type,
which contains all the information of a single file (year, month and all other information).

So now we are at the point, where we can really use the data we have extracted from the CSV files.
```java
Comparator<YearMonth> YEAR_MONTH_COMPARATOR = Comparator
  .comparingInt(YearMonth::year)
  .thenComparingInt(YearMonth::month);

var mavenVersionStatistics = readCSVStatistics(rootDirectory);

mavenVersionStatistics
    .stream().sorted(YEAR_MONTH_COMPARATOR)
    .forEach(s -> {
      var totalOverAllVersions = s.lines()
          .stream()
          .mapToLong(MavenStats::number).sum();
      out.printf("Year: %04d %02d %,10d %4d %n", s.year(), s.month(), totalOverAllVersions, s.lines().size());
    });
```
So now it's only a task of combining the stream things correctly to get interesting insights which look like this:
```text
Year: 2022 07  7,561,145   49 
Year: 2022 08  8,115,080   48 
Year: 2022 09  8,186,047   49 
Year: 2022 10  8,228,687   49 
Year: 2022 11  8,666,013   49 
Year: 2022 12  7,958,914   51 
Year: 2023 01  8,799,003   52 
Year: 2023 02  8,914,430   54 
Year: 2023 03 10,526,609   57 
Year: 2023 04  8,981,241   57 
Year: 2023 05  9,606,494   58 
Year: 2023 06  9,621,748   60 
```
So that means, in July 2022 more than 7.5 million downloads of Apache Maven itself have been done. There have existed 49 
different versions of Apache Maven (yes so many [versions][maven-history] existing in the 
meantime). In August 2022 there had been 8.1 million downloads of Apache Maven, but a version less, which means a single 
version has not been downloaded within that month at all and so on. It's even visible, that over the time other versions 
have been added as you can see because the number of versions is increasing.

So it would be interesting how many downloads in total for that year have been done? That question can easily 
being answered by using some code:
```java
var totalOfDownloadsOverallMavenVersions = mavenVersionStatistics.stream()
    .map(s -> s.lines().stream().mapToLong(MavenStats::number).sum())
    .mapToLong(__ -> __).sum();

out.printf("totalOfDownloadsOverallMavenVersions: %,12d%n", totalOfDownloadsOverallMavenVersions);
```
and the result of this is:
```text
totalOfDownloadsOverallMavenVersions:  105,165,411
```
That means, that during July 2022 and June 2023 more than 105 million downloads have happened from Maven Central for 
Apache Maven Core.

So another interesting question could be: How is the distribution over the different Maven versions?

That can be answered easy via the given code:
```java
var groupedByMavenVersion = mavenVersionStatistics.stream()
    .flatMap(s -> s.lines().stream())
    .collect(Collectors.groupingBy(MavenStats::version, Collectors.summingLong(MavenStats::number)));
```
This will contain the answer, we only need to sort accordingly (reversed to get the highest number in the first line)
and keep the total number in mind and calculating the percentage related to the total:
```java
groupedByMavenVersion
    .entrySet()
    .stream().sorted(Map.Entry.<ComparableVersion, Long>comparingByValue().reversed())
    .forEach(s -> {
      double percentage = s.getValue() / (double)sum * 100.0;
      out.printf("%-15s %,12d %6.2f%n", s.getKey(), s.getValue(), percentage);
    });
```
with the following result (only excerpts):
```text
3.6.3             25,173,440  23.94
3.8.6             11,324,307  10.77
3.8.4              7,908,716   7.52
3.8.1              7,276,857   6.92
3.5.4              6,998,521   6.65
3.3.9              5,997,064   5.70
3.8.5              5,820,216   5.53
3.6.1              5,202,935   4.95
3.6.0              3,749,450   3.57
3.8.7              3,442,747   3.27
3.8.3              3,310,941   3.15
3.6.2              2,375,723   2.26
3.8.2              2,347,698   2.23
3.5.3              2,305,157   2.19
3.5.2              1,728,117   1.64
3.5.0              1,588,450   1.51
3.9.1              1,489,846   1.42
3.1.1              1,090,059   1.04
3.9.2              1,054,414   1.00
3.9.0              1,014,136   0.96
3.3.3                761,617   0.72
3.2.5                689,786   0.66
3.0.4                640,818   0.61
3.8.8                525,917   0.50
3.3.1                351,825   0.33
3.0                  244,140   0.23
...
```
That means ca. 24% (23.94% roughly a quarter) of all downloads are using an old version of Maven 3.6.3 (2019!) and 
ca. 11% are using 3.8.6 (June 2022) etc. 

This makes me a bit sad, because 3.6.3 is not only almost four years old, it also contains a lot of bugs etc., 
which have been fixed in subsequent versions. That is even worse for older versions like 3.5.4(ca. 6.65%) or 
3.3.9 (ca. 5.7%) etc. Only a few builds using already more or less recent versions like 3.9.X(for example: 3.9.2 ca. 1%).

# Maven Plugins
Based on the given CSV files for plugin downloads I've taken the same approaches to read those files. Using the 
following code:
```java
var paths = allFilesInDirectoryTree(rootDirectory);
var listOfFiles = paths.stream()
    .filter(s -> s.getFileName().toString().startsWith("org-apache-maven-plugins"))
    .toList();

var mavenPluginStatistics = listOfFiles.stream()
    .map(YearMonthFile::of)
    .map(ymf -> new YearMonth(ymf.year(), ymf.month(), convert(ymf.fileName())))
    .toList();

mavenPluginStatistics.stream()
    .sorted(YEAR_MONTH_COMPARATOR)
    .forEach(s -> {
      var sumOfDownloadsPerMonth = s.lines().stream().mapToLong(MavenPlugin::number).sum();
      out.printf("Year: %04d %02d %3d %,15d %n", s.year(), s.month(), s.lines().size(), sumOfDownloadsPerMonth);

      s.lines().stream()
          .sorted(Comparator.comparing(MavenPlugin::plugin))
          .forEachOrdered(l -> out.printf(" %-36s %,10d%n", l.plugin(), l.number()));

    });
```
The result only output for a single month looks like this:
```text
Year: 2022 07  66     182,317,478 
```
This means, that only in July 2022, overall more than 182 million downloads over all plugins have been done. Following 
some excerpts from the data:

```text
 maven-acr-plugin                          2,289
 ...
 maven-clean-plugin                   16,019,474
 ...
 maven-compiler-plugin                21,722,106
 ...
 maven-dependency-plugin               7,349,854
 maven-deploy-plugin                  10,388,130
 ...
 maven-ear-plugin                        199,067
 ...
 maven-ejb-plugin                         92,910
 ...
 maven-enforcer-plugin                 3,469,962
 maven-failsafe-plugin                 3,203,618
 ...
 maven-install-plugin                 13,677,668
 ...
 maven-jar-plugin                     16,667,766
 ...
 maven-resources-plugin               20,210,250
 ...
 maven-surefire-plugin                20,446,073
 ..
 maven-war-plugin                      3,021,061
```
Ok, diving a bit more into the numbers. The `maven-compiler-plugin` has been downloaded 21,722,106 only in July 2022.
That in consequence means, that in that month at least 21,722,106 builds had been run.   

If you summarize all the numbers together, you will get: 2,561,522,497. Yes, you have read correctly,
more than 2.5 billion downloads over a year of all plugins. If we select a number of more or less 
usual plugins (15) from those, we get a list like this:

```text
maven-clean-plugin                       229,660,530
maven-compiler-plugin                    293,531,436
maven-dependency-plugin                  102,662,615
maven-deploy-plugin                      157,013,040
maven-ear-plugin                           2,904,003
maven-ejb-plugin                           1,417,372
maven-enforcer-plugin                     45,466,500
maven-failsafe-plugin                     44,748,498
maven-help-plugin                         34,984,247
maven-install-plugin                     195,701,012
maven-jar-plugin                         233,505,200
maven-javadoc-plugin                      29,235,021
maven-resources-plugin                   276,799,951
maven-surefire-plugin                    283,761,873
maven-war-plugin                          38,618,180
```
 
This adds up to ca. 1.97 billion (exactly 1,970,009,478 billion) downloads over a year. Furthermore, that shows some 
interesting insights. The `maven-compiler-plugin` is used most, which is not really astonishing, because 
more or less every build needs to compile code which is done by the `maven-compiler-plugin`.
On the other hand it's a bit weird, that the `maven-clean-plugin` is called very often as well. That will destroy the 
opportunity to reuse already built parts, which in the end requires to build everything from scratch. Reconsider the
usage of `maven-clean-plugin` or in other words using `mvn clean...`? I recommend to check your own builds, if you really
need to use `mvn clean ..`? 
What I don't understand is why people seemed to be using `maven-dependency-plugin` that often? Why? Analysing dependencies 
that often? Or copying artifacts? I'm not sure, if that is really necessary or even useful, but finally I don't know.

The number for the `maven-deploy-plugin` shows, that of those builds ca. 50% (compared to `maven-compiler-plugin`) 
are also deployed to a remote repository. A kind of strange is, that the number for the `maven-install-plugin` is 
ca. 60,0 million less than the number for `maven-deploy-plugin`? That means, that many people are using `mvn install`
or `mvn clean install` or alike. Only use `install` life cycle, if you really need to (I have my doubts, that you really
need it to do `install`). I bet, that in the majority of cases `mvn verify` is sufficient. How do I know? Based on the 
difference between `maven-install-plugin` and `maven-deploy-plugin` ca. 38 million times. 

It is very good to see, that `maven-surefire-plugin` is used more or less at the same frequency as `maven-compiler-plugin` 
yes, there is a difference of ca. 10 million which I can think of using `mvn -DskipTests` or alike. On the other hand
that means, that a great number of people are running their unit tests. The difference
between `maven-compiler-plugin` and the `maven-resources-plugin`, which I'm not sure, where it's coming from?
An interesting thing is the number for the `maven-jar-plugin` vs. `maven-ejb-plugin`, 
`maven-ear-plugin` and `maven-war-plugin` is roughly 43 million while the difference between `maven-compiler-plugin`
and `maven-jar-plugin` is ca. 60 million. This means there are ca. 17 million builds using something different
from `jar` packaging type. It's even very obvious, that the number of builds using
`war`, `ear` and `ejb` is at a very low number (total ca. 43 million) compared to other build types, which are about 
14% related to the total number. If you even compare `ear` and `ejb` to `maven-compiler-plugin` builds, the relation is 
roughly 1.4%.

One more thing, which catches my eyes. The number for `maven-failsafe-plugin` seemed to be very low (only ca. 15%) 
in comparison to the number of `maven-compiler-plugin`? Why? That means, not soo many people are doing integration testing
or maybe not using the `maven-failsafe-plugin` which I have observed very often. There might be reasons not to do 
integration tests (taking too much time or other reasons) or sometimes people are misusing the `maven-surefire-plugin`
with profiles or alike to do so.

Maybe my conclusions are simply wrong. I know that I know nothing.

All the information I'm using here can be found inclusive the code in a GitHub repository
https://github.com/khmarbaise/maven-downloads.


[maven-comparable-version]: https://maven.apache.org/ref/3.8.8/maven-artifact/apidocs/org/apache/maven/artifact/versioning/ComparableVersion.html
[pmc-member]: https://www.apache.org/dev/pmc.html
[maven-history]: https://maven.apache.org/docs/history.html
[maven-plugins]: https://maven.apache.org/plugins/