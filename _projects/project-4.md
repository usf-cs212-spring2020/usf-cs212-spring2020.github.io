---
title: Project 4 Final Project
navbar: Guides
layout: guides
key: 1.4
bump: true

tags:
  - text: 'New'
    type: 'is-primary'

assignments:
  - text: 'Project 4 Web Crawler'
    link: 'https://usfca.instructure.com/courses/1586786/assignments/6871440'
  - text: 'Project 4 Search Engine'
    link: 'https://usfca.instructure.com/courses/1586786/assignments/6871441'
---

For this project, you will extend your [previous project](project-3.html) to create a fully functional search engine. This project is split into two main components: (1) a [multithreaded web crawler](project-4a.html) using a work queue to build the index from a seed URL, and (2) a [search engine web interface](project-4b.html) using [embedded Jetty](https://www.eclipse.org/jetty/) and servlets to search that index.

This is the **last project** for this course. There will be no code review/design grade for this project, only a 2-part functionality grade instead. The grade breakdown and eligibility requirements are as follows:

<table class="table is-hoverable">

<thead>
  <tr>
    <th class="has-text-centered">Points</th>
    <th class="has-text-centered">Description</th>
    <th>Eligibility</th>
  </tr>
</thead>

<tbody>
<tr>
  <td nowrap class="has-text-centered">100</td>
  <td nowrap class="has-text-centered"><a href="project-4a.html">Web Crawler<br/> Functionality</a></td>
  <td width="100%">You fully must pass the functionality of <a href="project-3.html">project 3</a> to be eligible for these points. See the <a href="project-verification.html">project verification</a> guide for details.</td>
</tr>

<tr>
  <td nowrap class="has-text-centered">30</td>
  <td nowrap class="has-text-centered"><a href="project-4b.html">Search Engine<br/> Core Functionality</a></td>
  <td width="100%">You must fully pass <strong>both</strong> the functionality and the design of <a href="project-3.html">project 3</a> to be eligible for these points, as well as fully pass the <a href="project-4a.html">web crawler</a> functionality.</td>
</tr>

<tr>
  <td nowrap class="has-text-centered">70</td>
  <td nowrap class="has-text-centered"><a href="project-4b.html">Search Engine<br/> Extra Functionality</a></td>
  <td width="100%">You must fully pass <strong>both</strong> the functionality and the design of <a href="project-3.html">project 3</a> to be eligible for these points, as well as fully pass <strong>both</strong> the <a href="project-4a.html">web crawler</a> and <a href="project-4b.html">core search engine</a> functionality.</td>
</tr>
</tbody>

</table>

Students may complete additional functionality for the [search engine](project-4b.html) as extra credit. The overall project category grade will be capped to 115% at the end of the semester. For example, if you completed enough extra credit to earn a 125% in the project category by the end of the semester, your project grade will be capped to 115% instead.

The search engine core and extra functionality will be graded in your final code review appointment during finals week. See the <a href="project-4a.html">web crawler</a> and <a href="project-4b.html">search engine</a> writeups for more functionality details.

<article class="message is-warning">
  <div class="message-body"><i class="far fa-exclamation-triangle"></i>&nbsp;Regardless of what you implemented, you will NOT earn points for the search engine core functionality if you are not passing all of the web crawler tests, and will NOT earn points for extra functionality if you have not fully implemented the core functionality!</div>
</article>

<article class="message is-warning">
  <div class="message-body"><i class="far fa-exclamation-triangle"></i>&nbsp;You are still expected to deliver professional-quality code for your final code review appointment. This includes formatting, Javadoc comments, proper exception and resource handling, and proper generalization and encapsulation. Failing to do so may result in a <strong>point deduction</strong> to your final project 4 grade.</div>
</article>
