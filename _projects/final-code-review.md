---
title: Final Code Review
navbar: Guides
layout: guides
key: 2.0
bump: true

tags:
  - text: 'Important'
    type: 'is-danger'

blurb: |
  <p>Instead of a final exam, you will have a final code review during finals week. Here are some details regarding how your final code reviews will be handled.</p>

assignments:
  - text: 'Project 3'
    link: 'project-3.html'
  - text: 'Project 4'
    link: 'project-4.html'
---

{% include anchor.html level="h2" text="Appointment Eligibility" %}

Recall that the [syllabus](/syllabus.html) states the following **Pass Requirements** for this course:

  > - **Exam Pass Requirement:** Students must receive a C letter grade or higher on at least one exam (including retakes).
  >
  > - **Project Pass Requirement 1:** Students must pass project 1 tests, project 1 code review, and project 2 tests by the project cutoff 1 deadline.
  >
  > - **Project Pass Requirement 2:** Students must pass project 2 code review and project 3 tests by the project cutoff 2 deadline.
  >
  > **Failure to meet 1 or more of the following requirements will result in an automatic F letter grade for this course, regardless of what your current letter grade is in Canvas.**


You must be passing the **Project Pass Requirement 1** BEFORE you may sign up for a final code review appointment. If you failed to meet this requirement, you may not sign up for a final code review appointment.

{% include anchor.html level="h2" text="Appointment Signup" %}

Final code reviews are conducted during finals week between Friday 12/6 and Wednesday 12/10. Each final code review appointment is 30 minutes each. You may sign up for an appointment on Canvas at:

  - [Final Code Review Signup](https://usfca.instructure.com/calendar2#view_name=agenda&view_start=2019-12-06&find_appointment=course_1586786)

Each eligible student must sign up for exactly 1 final code review appointment. Make sure to sign up early to avoid any conflicts with holiday travel or other final exams. **You must be on-time to your appointment.**

<article class="message is-warning">
  <div class="message-body"><i class="far fa-exclamation-triangle"></i>&nbsp;Treat your appointment like a final exam; if you miss it you do not get another opportunity and receive a 0 for any outstanding project grades.</div>
</article>

{% include anchor.html level="h2" text="Cutoff Deadlines" %}

The projects you will have graded during your final code review appointment depend on how many projects you passed by the second project cutoff and the end of the semester.

The last date you can have a normal code review appointment or request project verification is:

> **Thursday, December 5, 2019**

This is the same deadline as the <a href="/syllabus.html#important-dates">project cutoff 2</a> deadline for <strong>Project Pass Requirement 2</strong>. Therefore, <span class="has-text-danger">this date is your last chance to pass a project 2 code review or project 3 functionality and avoid an automatic F for the course</span>.

Please note this is <strong>NOT</strong> the cutoff to <em>request</em> code review! This is the cutoff to pass a code review. Code review requests must be made earlier. See below for details.

<article class="message is-danger">
  <div class="message-body"><i class="far fa-exclamation-triangle"></i>&nbsp;If you fail to meet the <strong>Project Pass Requirement 2</strong> by the cutoff, you will receive an automatic F and should cancel your final code review appointment.</div>
</article>

{% include anchor.html level="h4" text="Code Review Request Cutoff" %}

The cutoff to request a normal in-person code review is:

> **Tuesday, December 3, 2019**

If you create an issue requesting code review by 11:59pm on this date, I will guarantee you an appointment on the cutoff date. However, it may be in the evening. Please plan accordingly.

There is no guarantee that code review requests submitted after this point will be fulfilled. Instead, it is likely your project design will not be graded until your final code review appointment.

{% include anchor.html level="h4" text="Verification Cutoff" %}

All issues for project verification (and requests for functionality grades to be updated) must be received by 11:59pm on the cutoff deadline. Specifically, you must have a release that passes the functionality tests and an issue *properly* created on Github asking for verification by 11:59pm on this date. (The issue does not need to be closed by this date.)

The functionality of any outstanding projects after this point will be evaluated in your final code review appointment. If you submit an issue for project verification *after* this point, it will not be graded until your final code review appointment.

{% include anchor.html level="h2" text="Final Project Grading" %}

The project(s) you have graded during this appointment depends on what projects you have passed before the cutoff deadlines (see above). Specifically:

  - If you are not passing either **Project Pass Requirement 1** or **Project Pass Requirement 2**, you will receive an automatic F for the course and are not eligible for a final code review appointment.

  - If you are passing **Project 1**, **Project 2**, and **Project 3 Tests** but *not* passing Project 3 Code Review, then you will earn a grade for Project 3 Code Review and Project 4 Web Crawler (if needed) during your final appointment. You will *not* earn a grade for Project 4 Search Engine.

  - If you are passing **Project 1**, **Project 2**, and **Project 3** (both Tests and Code Review), then you will earn a grade for Project 4 Web Crawler (if needed) during your final code review appointment. If you pass Project 4 Web Crawler functionality before or during your final code review appointment, then you will also have Project 4 Search Engine graded.

See below for a summary of what projects are eligible for grading in your final code review appointment, based on the projects passed by the cutoff deadlines:

<div class="table-container is-size-7">
<style>
.has-text-centered th,
.has-text-centered td {
  text-align: center !important;
}

.custom th, .custom td {
  color: inherit !important;
  background-color: inherit !important;
}
</style>
<table class="table is-bordered is-hoverable is-fullwidth has-text-centered custom">
<thead>
<tr class="has-background-grey-dark has-text-white">
  <th colspan="2">Project 1</th>
  <th colspan="2">Project 2</th>
  <th colspan="2">Project 3</th>
  <th colspan="2">Project 4</th>
</tr>

<tr class="has-background-grey has-text-white">
  <th width="12.5%">Tests</th>
  <th width="12.5%">Review</th>
  <th width="12.5%">Tests</th>
  <th width="12.5%">Review</th>
  <th width="12.5%">Tests</th>
  <th width="12.5%">Review</th>
  <th width="12.5%">Crawl</th>
  <th width="12.5%">Search</th>
</tr>
</thead>
<tbody>

<tr>
  <td colspan="3">Failed 1 More</td>
  <td colspan="5">Ineligible</td>
</tr>

<tr>
  <td>Pass</td>
  <td>Pass</td>
  <td>Pass</td>
  <td colspan="2">Failed 1 More</td>
  <td colspan="3">Ineligible</td>
</tr>

<tr>
  <td>Pass</td>
  <td>Pass</td>
  <td>Pass</td>
  <td>Pass</td>
  <td>Pass</td>
  <td colspan="2">Eligible</td>
  <td>Ineligible</td>
</tr>

<tr>
  <td>Pass</td>
  <td>Pass</td>
  <td>Pass</td>
  <td>Pass</td>
  <td>Pass</td>
  <td>Pass</td>
  <td colspan="2">Eligible</td>
</tr>
</tbody>
</table>
</div>


You can use the [What-If Grades](https://guides.instructure.com/m/4212/l/55065-how-do-i-approximate-my-assignment-scores-using-the-what-if-grades-feature) feature in Canvas to estimate the impact this will have on your final letter grade for the course.

You will receive your final grade for the course at the end of your final code review appointment.
