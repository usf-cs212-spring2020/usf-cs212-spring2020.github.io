---
title: Project Setup
navbar: Guides
layout: guides
key: 0.1
---

Below is a quick summary of the one-time setup needed for the project:

  1. Visit the [Project 1 Functionality](https://usfca.instructure.com/courses/1582958/assignments/6818588) assignment in Canvas and click the Github Classroom link to setup a repository named `project-username` where `username` is your Github username.

  2. Setup the [Apache OpenNLP](http://opennlp.apache.org/) user library in Eclipse. See the [Adding User Libraries in Eclipse](/guides/eclipse/adding-user-libraries-in-eclipse.html) guide for steps. Make sure to name the library `opennlp-tools` to avoid build path problems.

  2. Import the repository as a Java Project in Eclipse. See the [Importing Eclipse Projects from Github](/guides/eclipse/importing-eclipse-projects-from-github.html) guide for steps. This is where you will add your own code for the project.

  3. Import the `project-tests` repository at <https://github.com/usf-cs212-spring2019/project-tests> as a Java Project in Eclipse. This is where you will find all of the test code and data files. **These two projects must be located in the same parent directory!** For example `repos/project-username` and `repos/project-tests` share the same parent directory `repos`.

  4. Verify you can run the `Project1Test.java` set of tests in the "Project Tests" project in Eclipse.

  5. Verify you can make, commit, and push changes to `Driver.java` in the "Project" project in Eclipse.

Once setup, you do not need to go through these steps again.

{% include anchor.html level="h2" text="Video Walkthrough" %}

This video walkthrough will illustrate this entire process on a Mac OSX system.


<div>
  <iframe width="560" height="315" src="https://www.youtube.com/embed/n3159AmZV2M?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
  <br/>
  <small><a href="https://youtu.be/n3159AmZV2M"><i class="fab fa-youtube"></i> https://youtu.be/n3159AmZV2M</a></small>
</div>

<br/>


{% comment %}
{% include notice.html type = "is-warning" icon = "fas fa-info-circle" text = "Please note this video was recorded for a previous semester. The Github organization and teacher assistants have changed since then." %}
{% endcomment %}
