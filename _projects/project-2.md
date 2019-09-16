---
title: Project 2 Partial Search
navbar: Guides
layout: guides
key: 1.2

tags:
  - text: 'New'
    type: 'is-primary'

assignments:
  - text: 'Project 2 Functionality'
    link: https://usfca.instructure.com/courses/1582958/assignments/6818757
  - text: 'Project 2 Code Review'
    link: https://usfca.instructure.com/courses/1582958/assignments/6818761
---

For this project, you will extend your [previous project](project-1.html) to support exact search and partial search. In addition to meeting the previous project requirements, your code must be able to track the total number of words found in each text file, parse and stem a query file, generate a sorted list of search results from the inverted index, and support writing those results to a JSON file.

{% include anchor.html level="h2" text="Functionality" %}

The core functionality of your project must satisfy the following requirements:

  - Maintain the functionality of the [previous project](project-1.html).

  - Process additional command-line parameters to determine whether to search the inverted index and whether to produce additional JSON ouput. See the [Input](#input) section for specifics.

  - Parse a query file line-by-line into a normalized and optimized multiple word query matching the processing used to build the inverted index. See the [Query Parsing](#query-parsing) section for specifics.

  - Efficiently return exact search results from your inverted index, such that any word stem in your inverted index that exactly matches a query word is returned.

  - Efficiently return partial search results from your inverted index, such that any word stem in your inverted index that *starts with* a query word is returned.

  - Sort the search results using a simple term frequency metric to determine the most "useful" search results to output first. See the [Result Sorting](#result-sorting) section for specifics.

The functionality of your project will be evaluated with the `Project2Test.java` group of JUnit tests.

{% include anchor.html level="h3" text="Query Parsing" %}

Search queries will be provided in a text file with one multi-word search query per line. (Eventually, these queries will come from a search box on a webpage instead.) When processing this file, your query parsing code must normalize and optimize the queries as follows:

  - **Clean and parse each query line.** Perform the same transformations to each line of query words as used when populating your inverted index. This includes cleaning the line of any non-alphabetic characters, converting the remaining characters to lowercase, splitting the cleaned line into words by whitespace, and stemming each word. For example, the query line:

      ```
      Observers observing 99 HIDDEN               capybaras!
      ```

      ...should be processed into the cleaned, parsed, and stemmed words `[observ, observ, hidden, capybara]` after this step.

  - **Remove duplicate query word stems.** There is no need to search for the same stem twice! For example, if the original query included both `observers` and `observing`, the stemmed version of both words `observ` should be included in the parsed query only once. Specifically, for the stemmed words:

      ```
      [observ, observ, hidden, capybara]
      ```

      ...the duplicate `observ` should be removed resulting in `[observ, hidden, capybara]` after this step.

  - **Sort the unique words for each query alphabetically.** This is less necessary for the search operation, but required for the search result output. For example, if the stemmed words without duplicates are:

      ```
      [observ, hidden, capybara]
      ```

      ...then the final parsed query words should be `[capybara, hidden, observ]` after this step.

At this stage, the normalized words from the original query line can be used by your inverted index data structure to generate search results and to produce the expected JSON file output.

{% include anchor.html level="h3" text="Result Sorting" %}

Search engines rank their search results such that the most useful results are provided first. For example, [PageRank](https://en.wikipedia.org/wiki/PageRank) is the well-known algorithm initially used by Google to rank results by estimating the importance of a website by its incoming links.

When returning search results, your code must also return the results in sorted order using a simple version of [term frequency](https://en.wikipedia.org/wiki/Tf%E2%80%93idf) and raw count to determine the usefulness of a result. To do this, your code will need to be able to calculate the following:

  - **Total Words:** The total number of word stems in each text file. For example, there are 6 word stems in the `hello.txt` text file. You should already have this information from the [location output](project-1.html#location-output) in project 1.

  - **Total Matches:** The total number of times any of the matching query words appear in the text file. For **exact search**, this is the number of times the exact word stems appear. For example, the exact word stem `perfor` appears in the file `words.tExT` a total of 2 times. For **partial search**, this is the number of times a word stem *starts with* one of the query words. For example, a word stem *starts with* `perfor` in the file `words.tExT` a total of 11 times.

      For a query with multiple words, your code should consider all query words that appear at a location. For example, for an exact search of the multiple word query `[narwhal, tarsier]`, the word stem `narwhal` appears 1 time and the word `tarsier` appears 1 time in the file `animals.text`. Therefore, the number of times any of the matching query words appear in the text file is 1 + 1 = 2 times total.

With this information you can calculate the **score** of the search result as the percent of words in the file that match the query. This is calculated by dividing the total matches by the total words:

```
score = total matches / total words
```

Then, when sorting the search results, compare the results as follows:

  1. **Score:** First, compare search results by their score so results with higher scores appear first (i.e. sort in descending order by total matches / total words).

  2. **Count:** If two search results have the same score, then compare by the raw count so results with higher count appear first (i.e. sort in descending order by total matches) instead.

  3. **Location:** If two search results have the same score and count, then compare by the location (case-insensitive) instead (i.e. sort alphabetically ignoring case by path).

You can use [Double.compare(...)](https://docs.oracle.com/en/java/javase/12/docs/api/java.base/java/lang/Double.html#compare(double,double)), [Integer.compare(...)](https://docs.oracle.com/en/java/javase/12/docs/api/java.base/java/lang/Integer.html#compare(int,int)), and [String.compareToIgnoreCase(...)](https://docs.oracle.com/en/java/javase/12/docs/api/java.base/java/lang/String.html#compareToIgnoreCase(java.lang.String)) for these comparisons and the built-in sort methods in Java.

See the [partial search results](https://github.com/usf-cs212-fall2019/project-tests/blob/master/Project%20Tests/expected/search-partial/search-partial-simple.json) for [`ant perf`](https://github.com/usf-cs212-fall2019/project-tests/blob/master/Project%20Tests/expected/search-partial/search-partial-simple.json#L2-L13) for an example of results sorted by score, the results for [`lori`](https://github.com/usf-cs212-fall2019/project-tests/blob/master/Project%20Tests/expected/search-partial/search-partial-simple.json#L42-L58) for an example of results with the same score and thus sorted by count, and finally the results for [`capybara hidden`](https://github.com/usf-cs212-fall2019/project-tests/blob/master/Project%20Tests/expected/search-partial/search-partial-simple.json#L14-L25) for an example of results with the same score and same count and thus sorted alphabetically by location.

{% include anchor.html level="h2" text="Input" %}

Your main method must be placed in a class named `Driver`. The `Driver` class should accept the following **additional** command-line arguments:

  - `-query filepath` where `-query` indicates the next argument is a path to a text file of queries to be used for search. If this flag is not provided, then no search should be performed. In this case, your code should behave exactly the same as the previous project.

  - `-exact` where `-exact` is an *optional* flag that indicates all search operations performed should be **exact** search. If the flag is NOT present, any search operations should use **partial** search instead.

  - `-results filepath` where `-results` is an *optional* flag that indicates the next argument is the path to use for the search results output file. This may include partial or exact search results! If the `filepath` argument is not provided, use `results.json` as the default output filename. If the `-results` flag is not provided, do not produce an output file of search results but still perform the search operation.

The command-line flag/value pairs may be provided in any order, and the order provided is not the same as the order you should perform the operations (i.e. always build the index before performing search, even if the flags are provided in the other order).

Your code should support all of the command-line arguments from the [previous project](project-1.html) as well.

{% include anchor.html level="h2" text="Output" %}

The output of your inverted index and locations should be the same from the [previous project](project-1.html).

The search results should be output as a JSON array of JSON objects, where each object represents a single line from the original query file (e.g. one search). The query objects should have two keys, `queries` and `results` such that:

  - The key `queries` should have a quoted text value that is the parsed and sorted query words [joined together](https://docs.oracle.com/en/java/javase/12/docs/api/java.base/java/lang/String.html#join(java.lang.CharSequence,java.lang.Iterable)) by a space. For example, if the parsed query words are `[capybara, hidden, observ]` then the text output should be `"capybara hidden observ"`.

  - The key `results` should be an array of nested JSON objects, one per search result. Each individual search result should have, in order, these keys:

      - The key `where` with a quoted text value that is the relative path to the text file matching one or more of the query words.

      - The key `count` with an integer value that is the raw count (i.e. total matches) within the text file.

      - The key `score` with a floating point value with 8 digits after the decimal point of the search result score. You can use a `DecimalFormat` object to achieve this output:

          ```java
DecimalFormat FORMATTER = new DecimalFormat("0.00000000");
System.out.println(FORMATTER.format(Math.PI));
          ```

          Alternatively, you can use format strings:

          ```java
String formatted = String.format("%.8f", Math.PI);
System.out.println(formatted);
          ```

The use of tabs, newline characters, and spaces are the same as before for "pretty" JSON output. Here is an example output *snippet* of a single search query with a single search result:

```javascript
  "observ perfor": [
    {
      "where": "text/simple/words.tExT",
      "count": 13,
      "score": 0.54166667
    }
  ],
```

You can also find this output in the [`expected/search-exact/search-exact-simple.json`](https://github.com/usf-cs212-fall2019/project-tests/blob/master/Project%20Tests/expected/search-exact/search-exact-simple.json) file in the `project-tests` repository. See the other expected output files for more examples.

{% include anchor.html level="h2" text="Examples" %}

The following are a few examples (non-comprehensive) to illustrate the usage of the command-line arguments. Consider the following example:

```
java Driver -path "../../project-tests/Project Tests/text/simple/"
            -query "../../project-tests/Project Tests/query/simple.txt"
            -results search-exact-simple.json
            -exact
```

This is functionally equivalent to the [Project2Test](https://github.com/usf-cs212-fall2019/project-tests/blob/master/Project%20Tests/src/Project2Test.java#L58-L65) &raquo; [Project2SearchTest/SearchOutputTest](https://github.com/usf-cs212-fall2019/project-tests/blob/master/Project%20Tests/src/SearchOutputTest.java) &raquo; [ExactSearchTest](https://github.com/usf-cs212-fall2019/project-tests/blob/master/Project%20Tests/src/SearchOutputTest.java#L54) &raquo; [testSimpleDirectory](https://github.com/usf-cs212-fall2019/project-tests/blob/master/Project%20Tests/src/SearchOutputTest.java#L62-L71) test. It will create the inverted index from the `text/simple/` input subdirectory, perform an **exact** search of the queries in the `query/simple.txt` query input file, and output the search results to `search-exact-simple.json`.

{% include anchor.html level="h2" text="Hints" %}

It is important to develop the project iteratively. One possible breakdown of tasks are:

  - Add the ability to parse query files. Compare your parsed queries to those in the expected output files. For example, the line `performer performers` should become `perform` after being parsed, cleaned, stemmed, sorted, and discarding duplicates.

  - Create a class that stores a single search result and implements the [Comparable](https://docs.oracle.com/en/java/javase/12/docs/api/java.base/java/lang/Comparable.html) interface. You will need data members for each of the sort criteria, including the location, total word count of the location, and number of times the query occurs at that location.

  - Add an exact search method to your inverted index data structure that takes already parsed words from a single line of the query file, and returns a sorted list of search results. Output the results to the console for debugging.

      <p><article class="message is-warning">
        <div class="message-body">
          <i class="fas fa-exclamation-triangle"></i>&nbsp;Use lists and <a href="https://docs.oracle.com/en/java/javase/12/docs/api/java.base/java/util/Collections.html#sort(java.util.List)">Collections.sort(List)</a> to sort search results, not a <a href="https://docs.oracle.com/en/java/javase/12/docs/api/java.base/java/util/TreeSet.html">TreeSet</a> data structure. Custom mutable objects do not behave well when used in sets or as keys in maps.
        </div>
      </article></p>

  - Add the ability to output the search results to JSON file. Make sure the exact search results match the expected output.

  - Add a partial search method to your inverted index data structure that takes already parsed words from a single line of the query file, and returns a sorted list of search results.

  - Do not worry about efficient partial search until after you are getting correct results.

The important part will be to test your code as you go. The JUnit tests provided only test the entire project as a whole, not the individual parts. You are responsible for testing the individual parts themselves.

<article class="message is-info">
	<div class="message-body">
		<i class="fas fa-info-circle"></i>&nbsp;These hints may or may not be useful depending on your approach. Do not be overly concerned if you do not find these hints helpful for your approach for this project.
	</div>
</article>
