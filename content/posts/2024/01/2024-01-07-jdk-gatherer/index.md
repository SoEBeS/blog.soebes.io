---
title: "JDK22 - Gatherer"
date: 2024-01-06T17:53:30
lastmod: 2024-01-06T17:53:30
categories:
  - Java
  - JDK22
  - programming
---
# Overview
If you take a look into [JDK-22][jdk-22], you will find a very interesting thing, which is called
`461: Stream Gatherers (Preview)`. Those Gatherers are a way to enhance the Stream API, which is existing in the
JDK since 2014 (JDK 8). The collectors have been enhanced over the time (You can look up the differences via
[Javaalmanac][javaalmanac-diff-8-22] check for Collectors). The [provided collectors in the JDK][jdk-21-collectors]
already cover a lot of things, but sometimes there are situations, where it's not enough or not flexible enough or would
produce code, which is hard to read (more accurate hard to understand). The first thought could be to request an enhancement 
of the Collectors in the JDK itself, but that would mean to add more methods on the collectors which already has 44 
methods (If I have counted correctly). Apart from having a problem, which is so specific so it's worth to add that to the
JDK itself. So it might be a better solution to give the users a way to enhance the Stream API based on the their own 
needs. That is also the summary of the [JEP 461][jep-461]:

> Enhance the Stream API to support custom intermediate operations.
> This will allow stream pipelines to transform data in ways that are not easily achievable
> with the existing built-in intermediate operations. This is a preview API.

Let us start with a simple example. We would like to group by a list of strings based on the length of the strings itself.
That can easily being expressed with the existing Stream API and collectors like this:
```java
@Test
void usingGroupingBy() {
  var result = Stream.of(
          "123456", "foo", "bar", "baz", 
          "quux", "anton", "egon", "banton")
      .collect(Collectors.groupingBy(String::length));
  System.out.println("result = " + result);
}
```
The output of that is:
```text
result = {3=[foo, bar, baz], 4=[quux, egon], 5=[anton], 6=[123456, banton]}
```
So nothing fancy here. Another example using things like `distinct()` in a stream. That can look like this:
```java
@Test
void exampleDistinctWithNumbers() {
  var integers = List.of(1, 10, 11, 10, 11);
  var result = integers.stream().distinct().toList();
  System.out.println("result = " + result);
}
```
And the output of the above:
```text
result = [1, 10, 11]
```
So let us combine those two ideas and create a `distinct` based on the length. Unfortunately there is no way to change
`distinct` because it does not have a parameter at all. Only a single implementation. Ok, there is a way to achieve that,
which could look like this (Yes that code is taken from the [JEP 461][jep-461]):

```java
record DistinctByLength(String str) {
  @Override public boolean equals(Object obj) {
    return obj instanceof DistinctByLength(String other)
           && str.length() == other.length();
  }

  @Override public int hashCode() {
    return str == null ? 0 : Integer.hashCode(str.length());
  }
}

@Test
void example_one() {
  var result = Stream.of(
          "123456", "foo", "bar", "baz", 
          "quux", "anton", "egon", "banton")
      .map(DistinctByLength::new)
      .distinct()
      .map(DistinctByLength::str)
      .toList();
  System.out.println("result = " + result);
}
```
and the output:
```text
result = [123456, foo, quux, anton]
```
So to achieve the goal, we have to do a mapping `.map(DistinctByLength::new)` first and after that `.distinct()` and 
then map back into the string `.map(DistinctByLength::str)` ok works! Is that maintainable? It might be. 
Flexibility? The result shows, that the first reached element is emitted in the result. What if I like to have the
last one? Or the second one if more than two elements are existing? Wouldn't it be easier if you could write the code 
like this:
```java
var streamList = List.of(
    "123456", "foo", "bar", "baz",
    "quux", "anton", "egon", "banton");

var result = streamList
    .stream()
    .distinctBy(String::length)
    .toList();
```
That would be great, but the JEP 461 comes quite near to that. That means, you have to write the code like this:
```java
var streamList = List.of(
    "123456", "foo", "bar", "baz",
    "quux", "anton", "egon", "banton");

var result = streamList
    .stream()
    .gather(distinctBy(String::length))
    .toList();
```
So finally we have to implement the `distinctBy` thing here. So how will that work? Starting by taking a look into the 
`.gather(..)` method. You can see, that the parameter uses the interface `Gatherer<T, A, R>..` which in general comprises 
of four parts. The `initializer`, `integrator`, `combiner` and the `finisher`.

## Integrator
Let us start with the `integrator`. This part is called every time an element from the stream is put through the stream, 
which means the `integrator` will see every element of the stream. Based on the implementation it can do anything 
with the element. For a better understanding we start with an implementation of a mapping, which does nothing. Let us 
call it `mapNoOp` (You might already have implied by the name: Map No Operation). That could be used like this:
```java
@Test
void noOperation_withGathererOf() {
  var integerList = List.of(1, 2, 3, 4, 5, 6, 7, 8);

  var resultList = integerList.stream()
      .gather(Gatherer.of(mapNoOp))
      .toList();
  System.out.println("resultList = " + resultList);
}
```
This could also being achieved based on the existing collectors like this:
```java
@Test
void noOperationMapping() {
  var integerList = List.of(1, 2, 3, 4, 5, 6, 7, 8);

  var resultList = integerList.stream()
      .map(Function.identity())
      .toList();
  System.out.println("resultList = " + resultList);
}
```
Now let us take a look how the implementation based on the Gatherer looks like:
```java
static final Gatherer.Integrator<Void, Integer, Integer> mapNoOp =
    (state, element, downstream) -> {
      downstream.push(element);
      return true;
    };
```
So for this, we only have to implement an integrator. The integrator will consume the elements via `element` and
emits the elements via `downstream.push(element)`. The `return true` here is responsible to tell the stream to consume
more elements or don't continue to consume more elements via `return false`. Currently the `state` is not used at all here 
(I have kept the `state` for better understanding. It can be replaced with the underscore (`_`) to make it clear that it is not used see
[JEP-456][jep-456]). So to use it, as already stated before, you have to use `Gatherer.of(mapNoOp)`. This can be made a 
bit more convenient: 
```java
static <T> Gatherer<T, ?, T> mapNoOp() {
  Gatherer.Integrator<Void, T, T> integrator = (_, element, downstream) -> {
    downstream.push(element);
    return true;
  };
  return Gatherer.ofSequential(integrator);
}
```
That also makes it easier to generalize it. So now you can use very simple:
```java
@Test
void noOperation_Integration() {
  var integerList = List.of(1, 2, 3, 4, 5, 6, 7, 8);

  var resultList = integerList.stream()
      .gather(mapNoOp())
      .toList();
  System.out.println("resultList = " + resultList);
}
```
So based on that, it is no problem to use it with other types:
```java
@Test
void noOperation_IntegrationDifferentType() {
  var integerList = List.of("1", "2", "3", "4", "5", "6", "7", "8");

  var resultList = integerList.stream()
      .gather(mapNoOp())
      .toList();
  System.out.println("resultList = " + resultList);
}
```
That has become very convenient to be used.

## Initializer and Finisher
So back to our initial idea. If reconsidering the usage of `groupingBy` and the `distinct` examples at the beginning. The 
`groupingBy` requires something internally to store intermediate results before emitting the final result. Also the 
`distinct` part needs something to remember, which elements already have gone through the stream and already existed. So 
that's when the `initializer` comes into the play. Or the `state` within the `integrator` becomes important. So this 
thing to *remember* is exactly the intention of the `initializer`, which creates such memory while the `state` is the
access to that memory. The implementation looks like this:
```java
private static <T, A> Gatherer<T, ?, T> distinctBy(Function<? super T, ? extends A> classifier) {
  Supplier<HashMap<A, List<T>>> initializer = HashMap::new;
  //
  Gatherer.Integrator<HashMap<A, List<T>>, T, T> integrator = (state, element, downstream) -> {
    A apply = classifier.apply(element);
    state.computeIfAbsent(apply, (_) -> new ArrayList<>()).add(element);
    return true;
  };
  //
  return Gatherer.ofSequential(initializer, integrator);
}
```
So what do we do here? Based on the `initializer` we create a memory (`HashMap`), which stores the elements
based on the key `classifier`. The `classifier` is something like `String::length`. So we have a 
`HashMap<Integer,List<String>>`. This will be filled during the iteration through the stream in the `integrator`. 
First apply the `classifier` (which results into the length) and adds the `element` (`String`) to the list in the HashMap.
If you take a deep look into the above implementation you might spotted the issue. It will consume all elements form the 
stream, but it will never publish any element. So we have to think under which circumstance we want to emit elements?
If the HashMap contains an element where one entry is in there or expressed in code:
```java
static <T, A> Gatherer<T, ?, T> distinctBy(Function<? super T, ? extends A> classifier) {
  Supplier<HashMap<A, List<T>>> initializer = HashMap::new;
  //
  Gatherer.Integrator<HashMap<A, List<T>>, T, T> integrator = (state, element, downstream) -> {
    A apply = classifier.apply(element);
    state.computeIfAbsent(apply, (_) -> new ArrayList<>()).add(element);
    if (state.get(apply).size() == 1) {
      downstream.push(element);
    }
    return true;
  };
  //
  return Gatherer.ofSequential(initializer, integrator);
}
```
The usage looks like this:
```java
@Test
void usingDistinctByExample() {
  var streamList = List.of(
      "123456", "foo", "bar", "baz",
      "quux", "anton", "egon", "banton");

  var result = streamList
      .stream()
      .gather(distinctBy(String::length))
      .toList();

  System.out.println("result = " + result);
}
```
and the output is this:
```text
result = [123456, foo, quux, anton]
```
So that means original requirement solved. Go to the next requirement. Emit the last element of appearance. That means,
we must be sure the whole stream has been done or in other words all elements haven been seen. That is not solvable only 
with the `integrator` for that you need the `finisher`.

## Finisher
The finisher is called after the whole stream is done and before the stream ends so to speak. The `finisher` is defined
as `BiConsumer<A, Downstream<? super R>> finisher`. That means in other words, the first part is the `state` and of course
`downstream` which gives us the opportunity to emit elements in it's final state. That means also all elements of the 
stream have gone through the `integrator`.

```java
static <T, A> Gatherer<T, ?, T> distinctBy(Function<? super T, ? extends A> classifier) {
  Supplier<HashMap<A, List<T>>> initializer = HashMap::new;
  //
  Gatherer.Integrator<HashMap<A, List<T>>, T, T> integrator = (state, element, downstream) -> {
    A apply = classifier.apply(element);
    state.computeIfAbsent(apply, (_) -> new ArrayList<>()).add(element);
    return true;
  };
  //
  BiConsumer<HashMap<A, List<T>>, Gatherer.Downstream<? super T>> finisher = (state, downstream) -> {
    state.forEach((_, value) -> downstream.push(value.getLast()));
  };
  //
  return Gatherer.ofSequential(initializer, integrator, finisher);
}
```
So the above definition can now be used as before with the only difference it will emit the last elements and not
the first which looks like this:
```text
result = [baz, egon, anton, banton]
```
Also the other requirement I have expressed (the second element etc.) can be easily solved via the `finisher`. I leave 
that as an exercise for the gentle readers.

## Combiner
So let us come to the last one. The `combiner`. This is responsible to combine (You guessed it ;-) different states of 
the state which can only happen if you run your gatherer in a parallel stream. As you might also already realized 
I used `return Gatherer.ofSequential(initializer, integrator, finisher);` which implies sequential processing (wasn't 
that obvious?). I selected a different requirement to demonstrate the usage of combiner. We should try to select the 
duplicates in a list or more accurate in a Stream. Ok, let us take a look into a simple solution (I bet there are other 
or even better solutions):
```java
@Test
void exampleFindDuplicates() {
  var integers = List.of(100, 1, 10, 11, 5, 10, 11, 5, 100, 75, 78, 90);
  var duplicates = findDuplicates(integers);
  System.out.println("duplicates = " + duplicates);
}

List<Integer> findDuplicates(List<Integer> givenList) {
  long count = givenList.stream().distinct().count();
  if (count < givenList.size()) {
    return givenList.stream().filter(i -> Collections.frequency(givenList, i) > 1)
        .distinct().toList();
  } else {
    return List.of();
  }
}
```
This could be done in more general and more convenient way to be used in streams via Gathers like this:
```java
static <T> Gatherer<? super T, ?, T> duplicatesWithoutCombiner() {
  Supplier<HashMap<T, Integer>> initializer = HashMap::new;
  //
  Gatherer.Integrator<HashMap<T, Integer>, T, T> integrator = (state, element, _) -> {
    var orDefault = state.getOrDefault(element, 0);
    state.put(element, orDefault + 1);
    return true;
  };
  //
  BiConsumer<HashMap<T, Integer>, Gatherer.Downstream<? super T>> finisher = (state, downstream) -> {
    state.forEach((k, v) -> {
      if (v >= 2) {
        downstream.push(k);
      }
    });
  };
  //
  return Gatherer.ofSequential(initializer, integrator, finisher);
}
```
This solution uses an initializer to create the internal state which is a `HashMap<T, Integer>`. The type `T` represents
the used type by the stream. The `Integer` is simply to count the number of occurrence. The integrator does not emit
any value, because the integrator can not say for sure if there will be coming more elements. That means the final emitting
of the result can only be done in the finisher. That is of course only useful if the number of occurrence is greater or 
equal than two. If you run that on the defined set of number you will get:
```text
resultList = [100, 5, 10, 11]
```
So now let us take a look into a solution with a combiner:
```java
static <T> Gatherer<? super T, ?, T> duplicates() {
  Supplier<HashMap<T, Integer>> initializer = HashMap::new;
  //
  Gatherer.Integrator<HashMap<T, Integer>, T, T> integrator = (state, element, _) -> {
    var orDefault = state.getOrDefault(element, 0);
    state.put(element, orDefault + 1);
    return true;
  };
  //
  BiConsumer<HashMap<T, Integer>, Gatherer.Downstream<? super T>> finisher = (state, downstream) -> {
    state.forEach((k, v) -> {
      if (v >= 2) {
        downstream.push(k);
      }
    });
  };
  //
  BinaryOperator<HashMap<T, Integer>> combiner = (s1, s2) -> {
    s1.forEach((k, v) -> {
      var s1def = s2.getOrDefault(k, 0);
      s2.put(k, v + s1def);
    });
    return s2;
  };
  //
  return Gatherer.of(initializer, integrator, combiner, finisher);
}
```
There at two differences. First the last line uses `return Gatherer.of(initializer, integrator, combiner, finisher);`
instead of the previous mentioned `... ofSequential(..)` and of course the implementation of the combiner itself. The
combiner is meant literally a combiner and it does not make any difference here if you return `s2` or `s1`. You should of course
change the implementation accordingly like this:
```java
BinaryOperator<HashMap<T, Integer>> combiner = (s1, s2) -> {
  s2.forEach((k, v) -> {
    var s1def = s1.getOrDefault(k, 0);
    s1.put(k, v + s1def);
  });
  return s1;
};
```
You make sure the combining of two of those *states* results in the right thing. So finally you can now use the gatherer
like this:
```java
@Test
void exampleFindDuplicatesWithGathererCombiner() {
  var integers = List.of(100, 1, 10, 11, 5, 10, 11, 5, 100, 75, 78, 90);
  var resultList = integers.parallelStream().gather(duplicates()).toList();

  assertThat(resultList).containsExactlyInAnyOrder(100, 10, 11, 5);
}
```
If you like to see the combiner working you can simply put a print statement (or better use your IDE's debugger) in 
there and see that it is call several times.

I think this is a great enhancement for the JDK to make it more convenient customize required functionality based on 
the Stream API. Unfortunately, I have realized that the `IntStream`, `LongStream` and `DoubleStream` do not contain such
an an enhancement. At the moment it looks like there is only a supplemental method missing `gather` on those three 
interfaces. Or maybe I misunderstand the complexity for adding such *simple* additions.  The code for the examples
here can be found [Gatherer][gatherer].

Happy coding.


[jdk-22]: https://openjdk.org/projects/jdk/22/
[jdk-21-collectors]: https://docs.oracle.com/en/java/javase/21/docs/api/java.base/java/util/stream/Collectors.html
[jep-461]: https://openjdk.org/jeps/461
[jep-456]: https://openjdk.org/jeps/456
[javaalmanac-diff-8-22]: https://javaalmanac.io/jdk/22/apidiff/8/
[gatherer]: https://github.com/khmarbaise/gatherer