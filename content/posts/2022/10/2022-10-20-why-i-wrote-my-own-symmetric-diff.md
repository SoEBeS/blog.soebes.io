---
title: "Why I wrote my own symmetric difference?"
date: 2022-10-20T12:37:25
lastmod: 2022-10-20T12:37:25
categories:
  - programming
  - dependencies
---
I worked on an Apache Maven Plugin (more accurately on the [maven-dependency-plugin][1]) while I realized that it has a 
dependency `commons-collections4` (version 4.2) which is used only once in the whole code base. That means that only
a single import statement of those packages (`import org.apache.commons.collections4.*`) in the code exists. The code 
looks like this (see [AnalyzeDuplicateMojo][mdep-1]):

```java
private Set<String> findDuplicateDependencies( List<Dependency> modelDependencies )
{
    List<String> modelDependencies2 = new ArrayList<>();
    for ( Dependency dep : modelDependencies )
    {
        modelDependencies2.add( dep.getManagementKey() );
    }

    // @formatter:off
    return new LinkedHashSet<>(
            CollectionUtils.disjunction( modelDependencies2, new LinkedHashSet<>( modelDependencies2 ) ) );
    // @formatter:on
}
```

That made me take a closer look on that. I analyzed the dependency a bit more and the `commons-collections4` is a jar 
file of ca. 734 [KiB][2] in size and contains ca. 300 classes.

So I thought, does it really make sense to depend on a jar file for a few classes being used? So what exactly is 
the `CollectionUtils.disjunction` doing? Based on it's javadoc it is calculating the [symmetric difference][3]
of two sets. An excerpt from [Wikipedia][3]:

> ...also known as the disjunctive union, is the set of elements which are in either of the sets, 
but not in their intersection. For example, the symmetric difference of the sets 
{1,2,3} and {3,4} is {1,2,4}.

So that brought me to the conclusion that it might be worth to implement that on my own to prevent
depending on a library only for a few classes. 

So after a bit of tests and some retries I got the following result:

```java
class Util
{

    public static <O> Collection<O> symmetricDifference( Iterable<? extends O> elementsOne,
                                                         Iterable<? extends O> elementsTwo )
    {
        Collection<O> resultOne = StreamSupport.stream( elementsOne.spliterator(), false ).collect( toList() );
        Collection<O> resultTwo = StreamSupport.stream( elementsTwo.spliterator(), false ).collect( toList() );

        HashSet<O> hashSet = new HashSet<>(resultOne);
        hashSet.addAll( resultTwo );

        Map<O, Long> cardinalityOne =
                resultOne.stream().collect( groupingBy( identity(), counting() ) );
        Map<O, Long> cardinalityTwo =
                resultTwo.stream().collect( groupingBy( identity(), counting() ) );

        List<O> newList = new ArrayList<>();

        for ( O item : hashSet )
        {
            Long cardOne = cardinalityOne.getOrDefault( item, 0L );
            Long cardTwo = cardinalityTwo.getOrDefault( item, 0L );
            long max = Math.max( cardOne, cardTwo );
            long min = Math.min( cardOne, cardTwo );
            addItem( newList, item, max - min );
        }

        return newList;
    }

    private static <O> void addItem( List<O> items, O item, long count )
    {
        for ( int i = 0; i < count; i++ )
        {
            items.add( item );
        }
    }

}
```
Of course, I've written unit tests to verify the code. The tests I've written at the beginning where to 
compare the results of my own code with the results of `CollectionUtils.disjunction`. Afterwards I have
removed the calling to `CollectionUtils.disjunction` as well as the dependency.

Apart from that we can discuss the above code that it is not the optimal solution or could be simplified which is true.
You can argue that using `Iterable<? extends O>` as parameters might be change by using 
`Collection<O>` instead which is correct. Still there are other options to simplify the code in different
ways like using `Collections.nCopies()` and using `summingInt(..)` instead of `counting()` which results
in type change from `Long` to `Integer`. In the end makes the code smaller and easier. So the final 
result looks like this:

```java
class Util
{

  static <O> Collection<O> symmetricDifference( Collection<O> elementsOne,
                                                Collection<O> elementsTwo )
  {
    Set<O> hashSet = new HashSet<>( elementsOne );
    hashSet.addAll( elementsTwo );

    Map<O, Integer> cardinalityOne =
        elementsOne.stream().collect( groupingBy( identity(), summingInt( e -> 1 ) ) );
    Map<O, Integer> cardinalityTwo =
        elementsTwo.stream().collect( groupingBy( identity(), summingInt( e -> 1 ) ) );

    return hashSet.stream().flatMap( item -> {
      int cardOne = cardinalityOne.getOrDefault( item, 0 );
      int cardTwo = cardinalityTwo.getOrDefault( item, 0 );
      int max = Math.max( cardOne, cardTwo );
      int min = Math.min( cardOne, cardTwo );
      return Collections.nCopies( max - min, item ).stream();
    } ).collect( toList() );
  }

}
```

So in the end it is worth to reconsider the usage of dependencies because in this case I've written a class
with less than 20 lines of code to replace a dependency with 300+ classes of which only a few (3 If I analyzed that
correctly) are really being used.


[1]: https://github.com/apache/maven-dependency-plugin
[2]: https://en.wikipedia.org/wiki/Binary_prefix
[3]: https://en.wikipedia.org/wiki/Symmetric_difference

[mdep-1]: https://github.com/apache/maven-dependency-plugin/blob/078f6aa5dc470f263ef0cd939f66bffb0a120af1/src/main/java/org/apache/maven/plugins/dependency/analyze/AnalyzeDuplicateMojo.java#L152