---
title: Project Verification
navbar: Guides
layout: guides
key: 0.3

tags:
  - text: 'Pending'
    type: 'is-light'

assignments:
  - text: Project 1 Tests
    link: https://usfca.instructure.com/courses/1582958/assignments/6818588

  - text: Project 2 Tests
    link: https://usfca.instructure.com/courses/1582958/assignments/6818757

  - text: Project 3 Tests
    link: https://usfca.instructure.com/courses/1582958/assignments/6818758

  - text: Project 4 Tests
    link: https://usfca.instructure.com/courses/1582958/assignments/6818759
    info: (Web Crawler Only)

blurb: |
  <p>Each project grade is split into two components: tests (functionality) and code review (design). This guide details the process for verifying and grading the <em>functionality</em> of your projects. See the other <a href="index.html">project guides</a> guides for other details.</p>
---

{% include anchor.html level="h2" text="Eligibility" %}

The project verification process is required to earn the functionality grade for each project and prior to every code review. Only request project verification if all of the following are true:

  1. Your project [passes all of the project tests locally](project-testing.html#testing-locally) in Eclipse.

  2. Your latest project release [passes all of the project tests remotely](project-testing.html#testing-remotely) on the lab computers. Do **not** request verification until you have completed this step; repeated requests for non-passing code will result in a point deduction to the functionality grade.

  3. You do *not* have an open verification request issue on Github. If you have an open verification issue but want to verify a different release, **edit the issue** rather than close or delete it. You want to preserve the issue timestamp, which affects the order requests are processed.

  4. You have already passed the functionality for the previous projects. For example, you may not request verification for project 3 until completing the functionality for project 2 and may not request verification for project 2 until completing functionality for project 1.

If all of the above is true, follow the steps below to request project verification.

{% include anchor.html level="h2" text="Verification Requests" %}

To request project verification, [create an issue](https://help.github.com/articles/creating-an-issue/) on your Github project repository. See the [Issues](https://guides.github.com/features/issues/) guide on Github for details.

Several issue templates have already been provided for you. Select the "Verification Request" template to get started.

  1. Change the issue title to "Verification Request: Project `v#`" where `v#` is the release you want verified. For example, "Verification Request: Project v1.0.1" for release v1.0.1 of Project 1.

  2. Replace `FULL_NAME` in the issue body with your full name. For example, "Sophie Engle". *This should happen automatically if you modified your issue templates.*

  2. Replace `GITHUB_USER` in the issue body with your Github username. For example, "sjengle". *This should happen automatically if you modified your issue templates.*

  3. Replace `OLD_RELEASE` in the issue body with the previous release you created. (This helps us make sure you are numbering the releases correctly.) For example, "v1.0.0" or "N/A" if this is your first release.

  3. Replace `NEW_RELEASE` in the issue body with the current release you want verified. For example, "v1.0.1". This should be the same release number as in the issue title.

  4. **If you need your tests/functionality grade updated**, make sure to check the box next to "I need my project grade updated on Canvas" in the issue body. To do this, change the `[ ]` text to `[x]` instead or click the checkbox after saving the issue. Your grade will not be updated unless this is selected!

  5. Assign the issue to our TA Olivia (`oliviakumar`). *This should happen automatically if you are using the correct issue template.*

  6. Label the issue with the `verify` label. *This should happen automatically if you are using the correct issue template.*

  7. Label the issue with the appropriate project label. For example, add the "project1" label (all lowercase with no spaces) for Project 1 verification.

  8. Add the issue to the appropriate project milestone. The milestones should be either "project1", "project2", "project3", and "project4" (all lowercase with no spaces). You will have to [create the milestone](https://help.github.com/articles/creating-and-editing-milestones-for-issues-and-pull-requests/) if this is your first issue for the project.

  9. Verify you have followed all of the necessary steps in the "Verification" section. To check a box, change the text `[ ]` to `[x]` instead or click the checkbox after saving the issue. Do not create the issue unless you are able to check all of these boxes.

~~There is an [example project verification issue](https://github.com/usf-cs212-fall2019/template-project/issues/2) in the project template repository:~~ **SCREENSHOT PENDING UPDATE**

{% include screenshot.html image="project-verification-issue.png" zoom="50%" %}

If you make a mistake, please edit the issue. Do **not** delete the issue or close the issue and create a new one.

All of these steps have a reason; I track the number of issues related to verification and review for each project. I use these statistics to set the schedule each semester, and to track your individual progress.

{% include anchor.html level="h2" text="Functionality Grading" %}

Your functionality grade will be based on the **date you created the issue** that passed verification. If the issue date is before the checkpoint deadline, you will earn 100% on the project functionality. If the issue date is after the checkpoint deadline, your grade will be deducted 10% (up to a maximum of 30%) per week.

The functionality deadline schedule is below (assume all deadlines are at 11:59pm):
<!-- <span class="tag is-primary">Updated</span> -->

| Project   | 100%       | 90%            | 80%            | 70%            | 0%         |
|:---------:|:----------:|:--------------:|:--------------:|:--------------:|:----------:|
| Project 1 | &le; 09/20 | 09/21 -- 09/27 | 09/28 -- 10/04 | 10/05 -- 10/11 | &gt; 10/31 |
| Project 2 | &le; 10/11 | 10/12 -- 10/18 | 10/19 -- 10/25 | 10/26 -- 10/31 | &gt; 10/31 |
| Project 3 | &le; 11/01 | 11/02 -- 11/08 | 11/09 -- 11/15 | 11/10 -- 11/22 | &gt; 12/05 |
| Project 4 | &le; 11/22 | 11/23 -- 11/29 | 11/30 -- 12/05 | 12/01 -- 12/05 |            |

Keep in mind the [project pass requirements](/syllabus.html#pass-requirements) for projects 1 and 2. All of your grades default to 0% if you do not pass the functionality of projects 1 and 2 by the project cutoff deadline on Thursday, October 31, 2019. You must also pass the functionality of project 3 by the last day of the semester (before finals) on Thursday, December 5, 2019.

**The final project grade (for the entire category) will be capped at 115% at the end of the semester.** For example, if you completed enough extra credit to earn a 125% in the project category by the end of the semester, your project grade will be capped to 115% instead.

{% include anchor.html level="h2" text="Working Ahead" %}

Worried about the deadline schedule and how slow code reviews progress?

You *can* work ahead on the functionality of the next project after passing verification, just **not in the `master` branch** used for the current project and code reviews. If you want to work ahead, [create a separate branch](/guides/general/using-branches.html) for the next project. You can even create releases from that branch, allowing you to pass functionality for the next project while still undergoing code review for the current project.

However, you have to be comfortable with branching and merging in `git` if you choose this route. It is very easy to cause merge conflicts that can be difficult to resolve, and we can only provide so much assistance.

You **cannot** work two projects ahead than the project currently under code review.

<p><article class="message is-danger">
  <div class="message-body">
    <i class="fas fa-exclamation-triangle"></i>&nbsp;If your <code>master</code> branch includes functionality for the next project, you'll be asked to remove it and reschedule the code review. This could cost you a week, and undo your efforts to work ahead!
  </div>
</article></p>

{% include anchor.html level="h2" text="Extra Credit" %}

Worried about missing functionality points? You can request extra credit opportunities in a public post on Piazza. These opportunities will be specific to the project, can be completed at any time, and are open to all students that missed points on that project.
