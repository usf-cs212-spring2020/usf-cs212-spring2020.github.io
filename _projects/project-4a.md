---
title: Project 4a Web Crawler
navbar: Guides
layout: guides
key: 1.41

assignments:
  - text: 'Project 4 Web Crawler'
    link: 'https://usfca.instructure.com/courses/1586786/assignments/6871440'

---

For this project, you will extend your [previous project](project-3.html) to create a fully functional search engine. This project is split into two main components: (1) a [multithreaded web crawler](project-4a.html) using a work queue to build the index from a seed URL, and (2) a [search engine web interface](project-4b.html) using [embedded Jetty](https://www.eclipse.org/jetty/) and servlets to search that index.

**This writeup is for the web crawler functionality only.** See the general [Project 4 Writeup](project-4.html) for more details.

{% include anchor.html level="h2" text="Functionality" %}

The core functionality of your project must satisfy the following requirements:

  - Maintain the functionality of the [previous project](project-3.html).

  - Process additional command-line parameters to support the functionality of this project. See the [Input](#input) section for specifics.

  - Support the same output capability as before. See the [Output](#output) section for specifics.

In addition to the above, the core functionality of your project must also satisfy the following requirements:

  - Add support to build the inverted index from a seed URL instead of a directory using a web crawler. The web crawler must be multithreaded using a work queue such that each URL that must be crawled is handled by a single worker thread.

  - To avoid a infinite crawl, the web crawler should parse up to a fixed limit of unique URLs as specified by a command-line argument. If the argument is missing, the crawler should parse up to a maximum of 50 links by default (including the seed URL).

  - The web crawler must use sockets to download webpages over HTTP or HTTPS when crawling. It is acceptable to read the entire web page into memory at once. Do *not* add HTML from web pages unless the HTTP response status code was `200 OK` and the content type is HTML.

      If the HTTP response status was a redirect, follow the redirect up to a limit of 3 redirects (to avoid an infinite redirect loop). The content at the end of this process will be assigned to the original URL. For example, the URL [~cs212/redirect/one](https://www.cs.usfca.edu/~cs212/redirect/one) eventually redirects to [~cs212/simple/hello.html](https://www.cs.usfca.edu/~cs212/simple/hello.html). However, the web crawler will associate the content of [~cs212/simple/hello.html](https://www.cs.usfca.edu/~cs212/simple/hello.html) with the original link [~cs212/redirect/one](https://www.cs.usfca.edu/~cs212/redirect/one) instead.

      You may NOT use the URL class to download the HTML, but you may use this class to parse and clean URLs (see the Relative URLs and Unique URLs sections below).

      See the [HtmlFetcher](https://github.com/usf-cs212-fall2019/template-htmlcleaner) class from the homework for a starting point.

  - Convert all processed URLs to a consistent absolute form (remove fragments, convert relative URLs to absolute URLs, etc.) and do not process the same URL more than once. For example, if you already processed <https://www.cs.usfca.edu/~cs212/guten/1400-h/1400-h.htm> and encounter <https://www.cs.usfca.edu/~cs212/guten/1400-h/1400-h.htm#link2HCH0020>, you should not re-process this URL and it should not count towards the total.

  - Use a breadth-first approach to crawling URLs. For example, suppose the seed URL has 49 or more URLs on the page. The first 49 URLs on the seed page (plus the seed URL itself) should be a part of the crawl. *If you use the work queue correctly, then crawling will automatically be breadth-first.*

  - For each cleaned, unique URL that must be crawled (i.e. haven't hit the maximum number of links and this is a unique link):

    - Each worker thread should be responsible for parsing a single link.

    - Remove any HTML block elements that should not be considered for parsing links, including the `head`, `style`, `script`, `noscript`, and `svg` elements. (This functionality is not built into your homework assignments.)

    - Parse all of the URLs remaining on the page, and add to the queue of URLs to process as appropriate. (You must do this before you remove the other HTML tags.)

    - Remove all of the remaining HTML tags and entities.

    - Clean, parse, and stem the resulting text to populate the inverted index in the same way plain text files were handled in previous projects.

    See the [LinkParser](https://github.com/usf-cs212-fall2019/template-linkparser) and [HtmlCleaner](https://github.com/usf-cs212-fall2019/template-htmlcleaner) homework assignments for a starting point.

  - You may *NOT* use any of the classes in the `java.util.concurrent` package.

The functionality of your project will be evaluated with various JUnit tests. Please see the [Testing](#testing) section for specifics.

{% include anchor.html level="h2" text="Input" %}

Your main method must be placed in a class named `Driver`. The `Driver` class should accept the following **additional** command-line arguments:

  - `-url seed` where `-url` indicates the next argument `seed` is the seed URL your web crawler should initially crawl to build the inverted index.

      If the `-url` flag is provided, your code should **enable multithreading** with the default number of worker threads even if the `-threads` flag is not provided.

  - `-limit total` where `-limit` is an *optional* flag that indicates the next argument `total` is the total number of URLs to crawl (including the seed URL) when building the index. Use `50` as the default value if this flag is not properly provided.

The command-line flag/value pairs may be provided in any order, and the order provided is not the same as the order you should perform the operations (i.e. always build the index before performing search, even if the flags are provided in the other order).

Your code should support all of the command-line arguments from the [previous project](project-3.html) as well.

{% include anchor.html level="h2" text="Output" %}

The output of your inverted index and search results should be the same from the [previous project](project-3.html). As before, you should **only generate output files if the necessary flags are provided**.

{% include anchor.html level="h2" text="Testing" %}

You must pass 100% of the tests in the `Project4Test.java` group of JUnit tests. This test group does NOT include the long-running runtime tests that benchmark your single- versus multi-threading code for the [previous project](project-3.html).

<article class="message is-info">
  <div class="message-body">
    <i class="fas fa-info-circle"></i>&nbsp;These tests are only for the web crawler functionality. The search engine functionality will be verified during the final code review appointment, not via automated system tests.
  </div>
</article>

{% include anchor.html level="h2" text="Hints" %}

It is important to develop the project iteratively. One possible breakdown of tasks are:

  - Use the relevant homework and lecture code, including the [LinkParser](https://github.com/usf-cs212-fall2019/template-linkparser) and [HtmlCleaner](https://github.com/usf-cs212-fall2019/template-htmlcleaner) homework assignments from lecture.

  - Outside of the relevant homework and lecture classes, there is likely only one new class (a web crawler class) required for this project. However, you must be careful to properly multithread and synchronize in this class!

The important part will be to test your code as you go. The JUnit tests provided only test the entire project as a whole, not the individual parts. You are responsible for testing the individual parts themselves.

<article class="message is-info">
	<div class="message-body">
		<i class="fas fa-info-circle"></i>&nbsp;These hints may or may not be useful depending on your approach. Do not be overly concerned if you do not find these hints helpful for your approach for this project.
	</div>
</article>
