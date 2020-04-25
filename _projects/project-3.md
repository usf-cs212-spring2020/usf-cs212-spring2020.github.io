---
title: Project 3 Multithreading
navbar: Guides
layout: guides
key: 2.3

assignments:
  - text: 'Project 3 Functionality'
    link: 'https://usfca.instructure.com/courses/1591964/assignments/6932314'
  - text: 'Project 3 Code Review'
    link: 'https://usfca.instructure.com/courses/1591964/assignments/6940808'
---

For this project, you will extend your [previous project](project-2.html) to support multithreading. In addition to meeting the previous project requirements, your code must make a thread-safe inverted index, and use a work queue to build and search an inverted index using multiple threads.

{% include anchor.html level="h2" text="Functionality" %}

The core functionality of your project must satisfy the following requirements:

  - Maintain the functionality of the [previous project](project-2.html).

  - Process additional command-line parameters to whether to use multithreading and if so, how many threads to use in the work queue. See the [Input](#input) section for specifics.

  - Support the same output capability as before. See the [Output](#output) section for specifics.

  - Create a custom read/write lock class that allows multiple concurrent read operations, but non-concurrent write and read/write operations.

  - Create a thread-safe inverted index using the custom read/write lock class above.

  - Use a work queue to build your inverted index from a directory of files using multiple worker threads. Each worker thread should parse a single file.

  - Use a work queue to search your inverted index from a file of multiple word queries (for both exact and partial search). Each worker thread should handle an individual query (which may contain multiple words).

  - Exit gracefully **without** calling `System.exit()` when all of the building and searching operations are complete.

  - Either extend your classes from previous projects or create completely new classes to support multithreading. **DO NOT REMOVE YOUR SINGLE THREADING CODE**, as you still need to support single threaded building and searching the index.

  - You may *NOT* use any of the classes in the `java.util.concurrent` package.

The functionality of your project will be evaluated with various JUnit tests. Please see the [Testing](#testing) section for specifics.

{% include anchor.html level="h2" text="Input" %}

Your main method must be placed in a class named `Driver`. The `Driver` class should accept the following **additional** command-line arguments:

  - `-threads num` threads where `-threads` indicates the next argument `num` is the number of worker threads to use. If `num` is missing or an invalid number of threads are provided, please default to 5 threads.

    If the `-threads` flag is not provided, then assume your project should be single-threaded and should execute *exactly* as previous projects.

The command-line flag/value pairs may be provided in any order, and the order provided is not the same as the order you should perform the operations (i.e. always build the index before performing search, even if the flags are provided in the other order).

Your code should support all of the command-line arguments from the [previous project](project-2.html) as well.

{% include anchor.html level="h2" text="Output" %}

The output of your inverted index and search results should be the same from the [previous project](project-2.html). As before, you should **only generate output files if the necessary flags are provided**.

{% include anchor.html level="h2" text="Testing" %}

Unlike previous projects, you do not have to pass 100% of the tests in the `Project3Test.java` group of JUnit tests to satisfy the project functionality requirements. Instead, you only have to pass the `Project3aTest.java` group of JUnit tests to earn your functionality grade and sign up for your first project 3 code review. This test group does NOT include the long-running runtime tests that benchmark your single- versus multi-threading code.

This is handled automatically by the project script. If it detects a project `v3.0.x` release it will automatically run `Project3aTest.java`. For all other releases, like `v3.1.x`, it will run `Project3Test.java` instead. This DOES include the long-running runtime tests that benchmark your code. Be prepared to wait!

<article class="message is-warning">
  <div class="message-body"><i class="far fa-stopwatch"></i>&nbsp;Be patient. The tests for project 3 can take some time to complete, even if you have an efficient approach.</div>
</article>

{% include anchor.html level="h2" text="Hints" %}

It is important to develop the project iteratively. One possible breakdown of tasks are:

  - Get `log4j2` working and start adding debug messages in your code. Once you are certain a class is working, disable debug messages for that class in your `log4j2.xml` file.

- Consider extending your previous inverted index to create a thread-safe version. You may need to add additional functionality to your single-threaded versions.

- Create a thread-safe inverted index using the `synchronized` keyword. Do not worry about efficiency or using a custom lock class yet.

- Modify how you build your index (both from a directory and from the web) to use multithreading and a work queue. Make sure you still pass the unit tests.

- Modify how you search your index to use multithreading and a work queue. Make sure you still pass the unit tests.

- Once you are sure this version works, convert your inverted index to use a custom read/write lock class *instead* of the `synchronized` keyword (don't use both). Make sure you still pass the unit tests.

- ~~Start worrying about efficiency. Make sure you are not under or over synchronizing, and that your multithreaded code is faster on average than your single-threaded code.~~ **Do not worry about efficiency until after your first code review.**

- Test your code in a multitude of settings and with different numbers of threads. Some issues will only come up occasionally, or only on certain systems.

- Test your code with logging enabled, and then test your code with logging completely disabled. Your code will run faster without logging, which sometimes causes some concurrency problems.

- Lastly, do not start on this project until you understand the multithreading code shown in class. If you are stuck on the code shown in class, PLEASE SEEK HELP. You do not need to figure it out on your own—you can ask the CS tutors, the teacher assistant, or the instructor for help.

    <article class="message is-warning">
      <div class="message-body"><i class="far fa-dizzy"></i>&nbsp;I cannot stress this enough! If you do not understand the simpler examples shown in class, you will get sucked into a black hole of debugging for the project. We are here to help prevent this from happening.</div>
    </article>


The important part will be to test your code as you go. The JUnit tests provided only test the entire project as a whole, not the individual parts. You are responsible for testing the individual parts themselves.

<article class="message is-info">
	<div class="message-body">
		<i class="fas fa-info-circle"></i>&nbsp;These hints may or may not be useful depending on your approach. Do not be overly concerned if you do not find these hints helpful for your approach for this project.
	</div>
</article>
