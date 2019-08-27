---
title: Project Code Review
navbar: Guides
layout: guides
key: 0.3

tags:
  - text: 'Updated'
    type: 'is-primary'

assignments:
  - text: Project 1 Functionality
    link: https://usfca.instructure.com/courses/1582958/assignments/6818588

  - text: Project 2 Functionality
    link: https://usfca.instructure.com/courses/1582958/assignments/6818757

  - text: Project 3 Functionality
    link: https://usfca.instructure.com/courses/1582958/assignments/6818758

  - text: Project 4 Functionality
    link: https://usfca.instructure.com/courses/1582958/assignments/6818759
    info: (Web Crawler Only)

blurb: |
  <p>Each project grade is split into two components: functionality and code review. This guide details the process for verifying and grading the <em>functionality</em> of your projects. See the other <a href="index.html">project guides</a> guides for other details.</p>
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

Several issue templates have already been provided for you. Select the "Project Verification" template to get started.

  1. Change the issue title to "Project `[VERSION]` Verification" where `[VERSION]` is the release you want verified. For example, "Project v1.0.0 Verification" for release v1.0.0 of Project 1.

  2. Replace `[FULLNAME]` in the issue body with your full name. For example, "Sophie Engle".

  3. Replace `[RELEASE]` in the issue body with the release. For example, "v1.0.0".

  4. **If you need your functionality grade updated**, make sure to check the box next to "I need my functionality grade updated on Canvas" in the issue body. To do this, change the `[ ]` text to `[x]` instead. Your grade will not be updated unless this is selected!

  5. Assign the issue to our TA Olivia (`oliviakumar`). *This should happen automatically if you are using the correct issue template.*

  6. Label the issue with the `verification` label. *This should happen automatically if you are using the correct issue template.*

  7. Label the issue with the appropriate project label. For example, add the "project 1" label for project 1 verification.

  8. Add the issue to the appropriate project milestone. The milestones should be either "Project 1", "Project 2", "Project 3", and "Project 4". You will have to [create the milestone](https://help.github.com/articles/creating-and-editing-milestones-for-issues-and-pull-requests/) if this is your first issue for the project.

  9. Verify you have followed all of the necessary steps in the "Verification" section. To check a box, change the text `[ ]` to `[x]` instead. Do not create the issue unless you are able to check all of these boxes.


There is an [example project verification issue](https://github.com/usf-cs212-spring2019/template-project/issues/1) in the project template repository:

{% include screenshot.html image="project-verification-issue.png" zoom="50%" %}

If you make a mistake, please edit the issue. Do **not** delete the issue or close the issue and create a new one.

{% include anchor.html level="h2" text="Functionality Grading" %}

Your functionality grade will be based on the **date you created the issue** that passed verification. If the issue date is before the checkpoint deadline, you will earn 100% on the project functionality. If the issue date is after the checkpoint deadline, your grade will be deducted 10% (up to a maximum of 30%) per week.

The functionality deadline schedule is below (assume all deadlines are at 11:59pm): <span class="tag is-primary">Updated</span>

| Grade | Project 1  | Project 2  | Project 3  | Project 4  | Description   |
|------:|:----------:|:----------:|:----------:|:----------:|:--------------|
|  105% | &le; 02/19 | &le; 03/12 | &le; ~~04/02~~ 04/09 | &le; ~~04/23~~ 04/30 | Extra Credit<sup><em>*See Below</em></sup> |
|  100% | &le; 02/26 | &le; 03/19 | &le; ~~04/09~~ 04/16 | &le; ~~04/30~~ 05/07 | Checkpoint |
|   90% | &le; 03/05 | &le; 03/26 | &le; ~~04/16~~ 04/23 | &gt; 05/07 | 1 Week Late |
|   80% | &le; 03/12 | &le; 04/02 | &le; ~~04/23~~ 04/30 |            | 2 Weeks Late |
|   70% | &le; 03/19 |            | &le; ~~04/30~~ 05/07 |            | 3 Weeks Late |
|    0% | &gt; 04/05 | &gt; 04/05 | &gt; 05/10 |            | Project Cutoff |

Keep in mind the [project pass requirements](/syllabus.html#pass-requirements) for projects 1 and 2. All of your grades default to 0% if you do not pass the functionality of projects 1 and 2 by the project cutoff deadline on Friday, April 5, 2019. You must also pass the functionality of project 3 by the last day of the semester (before finals) on Friday, May 10, 2019.

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

{% comment %}


If all of the above is true, then you can request verification from a teacher assistant. The steps are:

  1. In Github, [create an issue](https://guides.github.com/features/issues/) in your project repository.

      <p><article class="message is-warning">
        <div class="message-body">
          <i class="fas fa-exclamation-triangle"></i>&nbsp;Issues can be edited but not deleted. Please be careful to follow these steps exactly!
        </div>
      </article></p>

  2. Enter the title `Project v#` where `v#` is the release number to verify. This is the only way we can tell which release you want verified and code reviewed.

  3. If this is the first time you have passed the tests remotely, ask for your functionality grade in Canvas to be updated in the issue description. **Please provide your full name in your request, so we can match your work on Github to the correct account on Canvas.**

  4. On the side under "Assignees", add the teacher assistant Olivia Kumar (`oliviakumar` is her username). She will process your verification requests.

  5. On the side under "Milestone", add the issue to the `Project #` milestone where `#` is the project number (1, 2, 3, or 4). Create the milestone if necessary.

  6. Click the "Submit new issue" and wait for a response from the teacher assistant. You can see a [sample issue](https://github.com/usf-cs212-fall2018/template-project/issues/1) on the project template repository.

The teacher assistant will respond with instructions on how to sign up for code review if your project passes the tests remotely and created the issue properly.

If you are signing up for a code review, be wary of making many changes in your `master` branch before your code review appointment. The instructor will review the version associated with the passing release, so if you continue working on your code you may have a difficult time merging the changes afterward.

{% endcomment %}
