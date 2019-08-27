---
title: Project Code Review
navbar: Guides
layout: guides
key: 0.4

assignments:
  - text: Project 1 Code Review
    link: https://usfca.instructure.com/courses/1582958/assignments/6818760

  - text: Project 2 Code Review
    link: https://usfca.instructure.com/courses/1582958/assignments/6818761

  - text: Project 3 Code Review
    link: https://usfca.instructure.com/courses/1582958/assignments/6818762

  - text: Final Code Review

blurb: |
  <p>Each project grade is split into two components: functionality and code review. This guide details the process for signing up for <em>code review</em> of your projects. See the other <a href="index.html">project guides</a> guides for other details.</p>
---

We will use one-on-one code reviews with the instructor to evaluate your project design. We will be looking for the following when reviewing your code:

  - Your code should follow proper code style and naming conventions.
  - Your code should be well-documented using Javadoc notation.
  - Your code should be object-oriented.
  - Your code should be encapsulated, generalized, and reusable.
  - Your code should be memory-efficient and time-efficient within reason.

This list is not exhaustive, and exactly what we look for will vary by project.

<p><article class="message is-warning">
  <div class="message-body">
    <i class="fas fa-hourglass-end"></i>&nbsp;If we run out of time to review all of your code, you will have to follow the resubmission process before the remainder of your code will be reviewed. Please address small things before your code review so we can focus on more important matters. Make sure your code follows a style and naming convention, is well documented, and passes all tests locally and remotely.
  </div>
</article></p>

{% include anchor.html level="h2" text="Eligibility" %}

The code review process is required for each project. Only request code review if all of the following are true:

  1. Your latest project release is properly formatted and commented (every member and method must have Javadoc).

  1. Your latest project release has already been [verified](project-verification.html) on Github. Do **not** request code review until you have completed this step.

  1. You have already passed the code review for the previous projects. For example, you may not request code review for project 3 until completing code review for project 2 and may not request verification for project 2 until completing code review for project 1.

  1. You are not already signed up for an upcoming code review appointment.

If all of the above is true, follow the steps below to request project code review.

{% include anchor.html level="h2" text="Appointment Requests" %}

To request a code review appointment, [create an issue](https://help.github.com/articles/creating-an-issue/) on your Github project repository. See the [Issues](https://guides.github.com/features/issues/) guide on Github for details.

Several issue templates have already been provided for you. Select the "Project Review Request" template to get started.

  1. Change the issue title to "Project `[RELEASE]` Review Request" where `[RELEASE]` is the release you want verified. For example, name the issue "Project v1.0.0 Review Request" to request a code review for release v1.0.0 of Project 1.

  1. Replace `[FULLNAME]` in the issue body with your full name. For example, "Sophie Engle".

  1. Replace `[RELEASE]` in the issue body with the release. For example, "v1.0.0".

  1. Link to the **verification issue** for the release. See the [Autolinked references and URLs](https://help.github.com/articles/autolinked-references-and-urls/#issues-and-pull-requests) guide for details on how to link to an issue on Github.

  1. Link to the **pull request** for your previous code review, or enter "N/A" if this is your first code review.

  1. Indicate the review type. If this is the first code review for this project, request a 30 minute appointment. For following code reviews, request a 15 minute appointment. To do this, change the `[ ]` text to `[x]` instead next to the correct appointment type.

  1. Assign the issue to our TA Olivia (`oliviakumar`). *This should happen automatically if you are using the correct issue template.*

  1. Label the issue with the `review` label. *This should happen automatically if you are using the correct issue template.*

  7. Label the issue with the appropriate project label. For example, add the "project 1" label for project 1 code review.

  8. Add the issue to the appropriate project milestone. The milestones should be either "Project 1", "Project 2", "Project 3", and "Project 4". You will have to [create the milestone](https://help.github.com/articles/creating-and-editing-milestones-for-issues-and-pull-requests/) if this is your first issue for the project.

  9. Verify you have followed all of the necessary steps in the "Verification" section. To check a box, change the text `[ ]` to `[x]` instead. Do not create the issue unless you are able to check all of these boxes.


There is an [example project code review request](https://github.com/usf-cs212-spring2019/template-project/issues/2) in the project template repository. If you make a mistake, please edit the issue. Do **not** delete the issue or close the issue and create a new one.

{% include anchor.html level="h2" text="Code Review Grading" %}

The results of each code review may be:

  - **Pass:** This means you passed code review and do not need to resubmit this project. You may now move on to the next project. Remember to incorporate all of the functionality and design of this project in your next project!

  - **Warn:** This means you passed code review and do not need to resubmit this project. You may move on to the next project, but there are some comments you must address in your next project submission to avoid deductions in your next review.

  - **Resubmit:** This means you did not passed code review and must resubmit this project. You must first address all of the review comments, re-verify you are passing the project functionality tests before resubmitting your project for code review.

No matter how many resubmissions it takes, you will receive a 100% when you pass code review *unless* one or more deductions are made. Deductions are only made if you do not take this process seriously and waste the time of the instructor or teacher assistants. Specifically, the project grade will be adjusted as follows:

  - Receive –10% deduction if code review is requested without addressing the comments from previous code reviews.

  - Receive –10% deduction if code review is requested for a release without passing the verification process first.

  - Receive –10% deduction if you are significantly late or completely miss a code review appointment more than once.

Otherwise, you may resubmit your project for code review as many times as it takes to perfect your code.

<p><article class="message is-info">
  <div class="message-body">
    <i class="fas fa-info-circle"></i>&nbsp;You need to re-verify your project is passing the functionality tests before requesting a code review appointment!
  </div>
</article></p>
