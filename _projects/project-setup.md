---
title: Project Setup
navbar: Guides
layout: guides
key: 1.1

tags:
  - text: 'New'
    type: 'is-primary'

---

Below is a quick summary of the one-time setup needed for the project:

1. Visit the [Project 1 Functionality](https://usfca.instructure.com/courses/1591964/assignments/6921840) assignment in Canvas and click the Github Classroom link to setup a repository named `project-username` where `username` is your Github username.

1. Go to the `.github/ISSUE_TEMPLATE` directory in the Github website interface, and open the issue template. Click the "Edit" button and modify `FULL_NAME` to be your full name, `GITHUB_ORG` to be the Github organization for your class (e.g. `usf-cs212-spring2020`), `GITHUB_USER` to be your Github username, and then delete the "First-Time Setup" text after reading it. Save your changes.

1. If needed, setup the [Apache OpenNLP](http://opennlp.apache.org/) user library in Eclipse. See the [Adding User Libraries in Eclipse](/guides/eclipse/adding-user-libraries-in-eclipse.html) guide for steps. Make sure to name the library `opennlp-tools` to avoid build path problems.

1. Import the repository as a Java Project in Eclipse. See the [Importing Eclipse Projects from Github](/guides/eclipse/importing-eclipse-projects-from-github.html) guide for steps. This is where you will add your own code for the project.

1. Import the `project-tests` repository at <{{ site.data.info.links.github.link }}/project-tests> as a Java Project in Eclipse. This is where you will find all of the test code and data files. **These two projects must be located in the same parent directory!** For example `repos/project-username` and `repos/project-tests` share the same parent directory `repos`.

1. Verify you can run the `Project1Test.java` set of tests in the "Project Tests" project in Eclipse.

1. Verify you can make, commit, and push changes to `Driver.java` in the "Project" project in Eclipse.

Once setup, you do not need to go through these steps again.

## Video Walkthrough

This video walkthrough will illustrate an *older version* of this process on a Mac OSX system. Please note this video was recorded for a previous semester. Some aspects may have changed.

<div>
  <iframe width="560" height="315" src="https://www.youtube.com/embed/n3159AmZV2M?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen style="height: 315px;"></iframe>
  <br/>
  <small><a href="https://youtu.be/n3159AmZV2M"><i class="fab fa-youtube"></i> https://youtu.be/n3159AmZV2M</a></small>
</div>
