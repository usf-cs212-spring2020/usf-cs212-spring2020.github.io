---
title: Project Testing
navbar: Guides
layout: guides
key: 0.2

tags:
  - text: 'New'
    type: 'is-primary'
---

You must use the [JUnit 5](https://junit.org/junit5/) tests provided with the [project-tests]({{ site.data.info.links.github.link }}/project-tests) repository to determine if your project is meeting the required functionality. The suite of tests for each project are given by the `Project#Test.java` files in the [src]({{ site.data.info.links.github.link }}/project-tests/tree/master/src) subdirectory. For example, the tests for [Project 1](project-1.html) are provided by the [Project1Test.java]({{ site.data.info.links.github.link }}/project-tests/blob/master/src/Project1Test.java) file.

Your code must pass these tests (using the [remote testing](#testing-remotely) procedure below) both to earn credit for the functionality portion of the project grade, and before every subsequent code review required after that point. For example, you will earn a grade for [Project 1 Tests](https://usfca.instructure.com/courses/1586786/assignments/6871432) for the first code release that passes the tests. However, to earn a grade for [Project 1 Code Review](https://usfca.instructure.com/courses/1586786/assignments/6871433), your code will need to pass the tests again before every code review until you pass the design requirements.

Each project also includes **additional** tests on top of the previous tests. For example, the project 3 tests still require that your code passes the project 1 and project 2 tests.

The provided tests only examine the final output of your code---you are still responsible for writing your own test code while developing and debugging your project.

<article class="message is-warning">
  <div class="message-body">
    <i class="fas fa-exclamation-triangle"></i>&nbsp;You should place your test code in your own project repository, not the <a href="{{ site.data.info.links.github.link }}/project-tests">project-tests</a> repository. <strong>You do not have access to commit and push to the test repository!</strong>
  </div>
</article>

{% include anchor.html level="h2" text="Run Configurations" %}

It is possible to run `Driver.java` directly with your own command-line arguments using "[Run Configurations](http://help.eclipse.org/2019-06/topic/org.eclipse.jdt.doc.user/tasks/tasks-java-local-configuration.htm)" in Eclipse. This is useful for your own debugging, and testing out individual tests.

The tricky part is getting the paths right, since the test files are not in the same project as your code. On a Mac or Linux system, assuming your project repository and the [project-tests]({{ site.data.info.links.github.link }}/project-tests) repository are in the same parent folder, you can add the following command-line arguments:

```
-path "../../project-tests/Project Tests/text/simple/hello.txt" -index hello.json
```

{% include screenshot.html image="project-eclipse-run-configuration.png" zoom="50%" %}

The quotation marks are required if there is a space in the path, otherwise they can be omitted. This should generate a file `hello.json` in the Eclipse project for your project repository (not the [project-tests]({{ site.data.info.links.github.link }}/project-tests) repository). Right-click and select "Refresh" if you do not see the file at first.

On a Windows system, the path separators `/` should be `\` instead.

{% include anchor.html level="h2" text="Testing Locally" %}

You should make sure you are passing the [JUnit 5](https://junit.org/junit5/) tests locally before testing your code remotely. I also recommend you run only one test at a time at first, then groups of tests, and then the entire suite of tests only after you know you are passing each group individually. You can do this by right-clicking a test name or test class, and selecting "Run As" &raquo; "JUnit Test" from the menu. You can also manually configure the run configuration as well:

{% include screenshot.html image="project-eclipse-junit-run-configuration.png" zoom="50%" %}

The output of each test provides additional information useful for debugging. For example:

{% include screenshot.html image="project-eclipse-junit-output.png" zoom="50%" %}

The full output, which can be copied to the console for easy copying/pasting using the <img src="{{ "eclipse-copy-junit-output-to-console.png" | prepend: "/images/" | relative_url }}" style="height: 16px; vertical-align: middle;"> button, includes the following text:

```
Actual File:
    out/index-text-simple-hello.json
Expected File:
    expected/index-text/index-text-simple-hello.json
Arguments:
    -path text/simple/hello.txt -index out/index-text-simple-hello.json
Message:
    Difference detected on line: 2.
```

This gives the actual arguments passed to `Driver` by the test, the actual and expected files being compared, and where the first difference was detected. You can use the [Compare Editor](http://help.eclipse.org/2019-06/topic/org.eclipse.platform.doc.user/reference/ref-25.htm?cp=0_4_4_1_2) in Eclipse to compare the files side-by-side for debugging, or use the [Run Configurations](#run-configurations) in Eclipse to enter the same arguments manually. Just keep in mind the paths need to be updated slightly since your `Driver` class is in a different folder than the project test code. So, for the above example, the appropriate command-line arguments to enter into the `Driver` run configuration would be:

```
-path "../../project-tests/Project Tests/text/simple/hello.txt" -index out/index-text-simple-hello.json
```

Then, the `index-text-simple-hello.json` will (hopefully) show up in the `out` subdirectory of your project repository.

<article class="message is-warning">
  <div class="message-body">
    <i class="fas fa-exclamation-triangle"></i>&nbsp;To save space, the tests automatically delete your output files if they match the expected output. Only output files for failing tests will be kept.
  </div>
</article>

{% include anchor.html level="h2" text="Testing Remotely" %}

You must test your code remotely before you can earn credit for the functionality of your project and before you can sign up for a code review appointment.

This is a two part process: first you must create a release, and second you must run the project script on the CS Lab computers. This process familiarizes you with [**versioning**](https://en.wikipedia.org/wiki/Software_versioning) your code. At this stage, your code will be considered [pre-release](https://en.wikipedia.org/wiki/Software_versioning#Pre-release_versions) versions until you pass the design requirements in code review.

1. After passing all of the tests locally and pushing your latest commits to Github, follow the [Creating Releases](https://help.github.com/articles/creating-releases/) steps to draft a new release of your project code on Github.

2. You must choose a "tag" or the version number you are going to assign to your code at this stage. Out in the "real world" you will likely use [semantic versioning](https://semver.org/), which we will roughly mimic in class.

    Specifically, you must name your release `v#.#.#` where the first `#` is the project number (1, 2, 3, or 4), the second `#` is the number of code reviews you've had for that project, and the last `#` is the number of releases you have created since the last code review for that project.

    For example, your first release should be `v1.0.0` because it is for project 1, you have not had any code reviews yet, and you have not had any releases yet. If your code does not pass the tests remotely, then you have to fix your code and re-release your project as `v1.0.1` since you now have 1 prior release. After your first code review, the next release will be `v1.1.0`. The release `v2.3.4` means this release is for project 2, you have had 3 code reviews for project 2 so far, and this is the 4th release since your last code review of project 2.

    <p><article class="message is-info">
      <div class="message-body">
        <i class="fas fa-info-circle"></i>&nbsp;There is no need to delete a release if you get the name wrong. Instead, <a href="https://help.github.com/articles/editing-and-deleting-releases/">edit the release</a> to have the correct name.
      </div>
    </article></p>

3. Make sure the "This is a pre-release" checkbox is selected:

    {% include screenshot.html image="github-pre-release-checkbox.png" zoom="50%" %}

    You will unselect this checkbox for the final release of the project that passes the design requirements in code review.

4. Click the "Publish release" button. You can leave the title and description blank. You can also leave the binaries blank (this is where we would put executables or our own bundled jar files for production-ready releases). You can see a [sample release](https://github.com/usf-cs212-fall2019/template-project/releases) on the template repository.

5. Now that you have a release of your code, you can run the `project` script on the [CS lab computers](/guides/general/using-cs-lab-computers.html) to test your project code remotely using the command:

    ```
    /home/public/cs212/project GITHUB_USER v#.#.#
    ```

    Replace `GITHUB_USER` with your Github username (not your USF/CS username), and `v#.#.#` with your release number. The script will output which tests you passed or failed. If all of the tests passed, you will get functionality credit for your project. If not, re-run the test using the `-debug` flag to save the exception output and ask for help on Piazza.

    For example, running the command `project sjengle v1.0.0` will fetch the `v1.0.0` release from the `project-sjengle` repository, and run the `Project1Test.java` test suite.


If everything passes and you want credit for passing the functionality, follow the [project verification](project-verification.html) steps to notify the teacher assistant.

{% include anchor.html level="h2" text="Video Walkthrough" %}

<p>This video walkthrough will illustrate this entire process on a Mac OSX system.</p>

<div>
  <iframe width="560" height="315" src="https://www.youtube.com/embed/n3159AmZV2M?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen style="height: 315px;"></iframe>
  <br/>
  <small><a href="https://youtu.be/n3159AmZV2M"><i class="fab fa-youtube"></i> https://youtu.be/n3159AmZV2M</a></small>
</div>

<p>Please note this video was recorded for a previous semester. The Github organization and teacher assistants have changed since then.</p>
