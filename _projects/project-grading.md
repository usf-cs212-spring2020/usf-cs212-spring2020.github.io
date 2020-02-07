---
title: Project Grading
navbar: Guides
layout: guides
key: 1.3

blurb: |
  <p>Each project grade is split into two components: tests (functionality) and code review (design). This guide details both the process for getting credit for project functionality and signing up for code reviews.</p>
---

## Eligibility

The project request process is required to earn the functionality grade for each project and to sign up for a code review appointment. Only create a project request if all of the following are true:

  1. Your project [passes all of the project tests locally](project-testing.html#testing-locally) in Eclipse.

  2. Your latest project release [passes all of the project tests remotely](project-testing.html#testing-remotely) on the lab computers. Do **not** request verification until you have completed this step; repeated requests for non-passing code will result in a point deduction to the functionality grade.

  3. You do *not* have an open request issue on Github. If you have an open issue but want to request a different release, **edit the issue** rather than close or delete it. You want to preserve the issue timestamp, which affects the order requests are processed.

  4. *If you are requesting verification,* you must have already passed the previous project functionality. **You can work ahead by 1 project.**

      For example, you may not earn a project 2 functionality grade until you have passed project 1 functionality. However, as long as you have passed project 1 functionality, you can earn credit for project 2 functionality even if you are still working on project 1 code reviews.

  5. *If you are requesting code review,* you must have already passed the current project functionality and code review for the previous project. **You may only have up to one code review per week**.

      For example, you may not request code review for project 2 until completing code review for project 1. You cannot request project 1 code review until you have credit for project 1 functionality. If you already had a code review this week, you can request another code review but must select an appointment time in the following week.

If all of the above is true, follow the steps below to request project verification.

## Project Request Issues

To request an update to your functionality grade or a code review appointment, you must create a **project request issue** on Github. You should have already modified the issue template as part of the [project setup](project-setup.html) with your name and Github username.

See the [template-project](https://github.com/usf-cs212-2020/template-project/issues?utf8=%E2%9C%93&q=is%3Aissue) repository for examples of these issues. For each issue, follow the "Verification Checklist" instructions to make sure the issue is properly created.

  1. Change the issue title to "Project Request `v#`" where `v#` is the release you want verified. For example, "Project Request v1.0.1" for release v1.0.1 of Project 1.

  2. Replace `FULL_NAME` in the issue body with your full name. For example, "Raymond Cheng". *This should happen automatically if you modified your issue templates.*

  2. Replace `GITHUB_USER` in the issue body with your Github username. For example, "ryscheng". *This should happen automatically if you modified your issue templates.*

  2. Replace `GITHUB_ORG` in the issue body with the Github organization for the class. For example, "usf-cs212-spring2020". *This should happen automatically if you modified your issue templates.*

  3. Replace `ISSUE_NUMBER` in the issue body with the previous release you created. (This helps us make sure you are numbering the releases correctly.) For example, "#1" or "N/A" if this is your first release.

  3. Replace `PULL_REQUEST` in the issue body with pull request from your last code review. (This helps us make sure you are numbering the releases correctly.) For example, "#3" or "N/A" if this is your first release.

  3. Replace `PROJECT_VERSION` in the issue body with the current release you want verified. For example, "v1.0.1". This should be the same release number as in the issue title.

  4. Select the appropriate request option and add the associated label. See below for details.

  5. Assign the issue to our TA Jose (`oliviakumar`). *This should happen automatically if you are using the correct issue template.*

  8. Add the issue to the appropriate project milestone. The milestones should be either "project1", "project2", "project3", and "project4" (all lowercase with no spaces). You will have to [create the milestone](https://help.github.com/articles/creating-and-editing-milestones-for-issues-and-pull-requests/) if this is your first issue for the project.

  9. Verify you have followed all of the necessary steps in the "Verification" section. To check a box, change the text `[ ]` to `[x]` instead or click the checkbox after saving the issue. Do not create the issue unless you are able to check all of these boxes.

If there is a problem with your issue, your request will be denied. You must fix the request and re-open it. Please do not create a new issue in this case!

## Project Functionality

If you do not yet have credit for project functionality, you should first create an issue to request your project functionality be verified and your grade on Canvas updated. To do this, select the "I need my project functionality grade updated on Canvas" option when creating a project request and add the `verify` label.

#### Project Checkpoints

Your functionality grade will be based on the **date you created the issue** that passed verification. If the issue date is before the checkpoint deadline, you will earn 100% on the project functionality. If the issue date is after the checkpoint deadline, your grade will be deducted 10% (up to a maximum of 30%) per week.

The functionality deadline schedule is below (assume all deadlines are at 11:59pm):

| Project   | 100%       | 90%            | 80%            | 70%            | 0%         |
|:---------:|:----------:|:--------------:|:--------------:|:--------------:|:----------:|
| Project 1 | &le; 02/28 | 02/28 -- 03/06 | 03/06 -- 03/13 | 03/13 -- 04/03 | &gt; 04/03 |
| Project 2 | &le; 03/20 | 03/20 -- 03/27 | 03/27 -- 04/03 | 04/03 -- 04/03 | &gt; 04/03 |
| Project 3 | &le; 04/10 | 04/10 -- 04/17 | 04/17 -- 04/24 | 04/24 -- 05/08 | &gt; 05/08 |
| Project 4 | &le; 05/01 | 05/01 -- 05/05 | &gt; 05/05 |   |            |

Keep in mind the [project pass requirements](/syllabus.html#pass-requirements) for projects 1 and 2. All of your grades default to 0% if you do not pass the functionality of projects 1 and 2 by the project cutoff deadline on **Friday April 03, 2020**. You must also pass the functionality of project 3 by the last day of the semester (before finals) on **Friday May 08, 2020**.

#### Working Ahead

Worried about the deadline schedule and how slow code reviews progress?

You *can* work ahead on the functionality of the next project after passing verification, just **not in the `master` branch** used for the current project and code reviews. If you want to work ahead, [create a separate branch](/guides/general/using-branches.html) for the next project. You can even create releases from that branch, allowing you to pass functionality for the next project while still undergoing code review for the current project.

However, you have to be comfortable with branching and merging in `git` if you choose this route. It is very easy to cause merge conflicts that can be difficult to resolve, and we can only provide so much assistance.

You **cannot** work more than one project ahead than the project currently under code review.

<i class="fas fa-exclamation-triangle"></i>
If your `master` branch includes functionality for the next project, you'll be asked to remove it and reschedule the code review. This could cost you a week, and undo your efforts to work ahead!
{: .notification }

#### Extra Credit

Worried about missing functionality points? You can request extra credit opportunities in a public post on Piazza. These opportunities will be specific to the project, can be completed at any time, and are open to all students that missed points on that project.

## Project Code Review

Once you have credit for project functionality, you should start the code review process. We use code reviews with the instructor to evaluate your project design. We will be looking for the following when reviewing your code:

  - Your code should follow proper code style and naming conventions.
  - Your code should have no warnings.
  - Your code should be well-documented using Javadoc notation.
  - Your code should be object-oriented.
  - Your code should be encapsulated, generalized, and reusable.
  - Your code should be memory-efficient and time-efficient within reason.

This list is not exhaustive, and exactly what we look for will vary by project.

<i class="fas fa-hourglass-end"></i>
If we run out of time to review all of your code, you will have to follow the resubmission process before the remainder of your code will be reviewed. Please address small things before your code review so we can focus on more important matters. Make sure your code follows a style and naming convention, is well documented, and passes all tests locally and remotely.
{: .notification }

#### Requesting Appointments

After you are passing project functionality, you should make sure to refactor your code on your own to prepare it for code review. At the very *least*, your code should be properly formatted and commented.

Once your code is ready, create a project request issue with the "I need to schedule a code review appointment for this project version" option and add the `review` label.

If your code passes the tests, the instructor or TA will respond with instructions on how to sign up for an appointment using Google Calendar. Keep in mind appointments are scheduled approximately 1 week out, so do not expect an immediate appointment!

#### Making Changes Before Appointment

You should not request code review until your project code is ready to review. In other words, you should not request code review while you are still actively making changes to your design.

However, sometimes you notice a small error in your code *after* you signed up for an appointment but *before* the actual appointment. In that case, you can make the fix but must create a new release and project request before your appointment. (The request does not need to be closed by your appointment date.) In this case, select the "I need my project functionality verified, but do not need a code review appointment or my grade updated" option and add the `quick-review` label.

Do not make it a habit to modify your code after requesting a code review! If the instructor feels you are taking advantage of the system by requesting a code review before you have made the necessary changes, your appointment may be canceled and you may receive a deduction on your code review grade.

#### Code Review Grading

The results of each code review may be:

  - **Pass:** This means you passed code review and do not need to resubmit this project. You may now move on to the next project. Remember to incorporate all of the functionality and design of this project in your next project!

  - **Warn:** This means you passed code review and do not need to resubmit this project. You may move on to the next project, but there are some comments you must address in your next project submission to avoid deductions in your next review.

  - **Resubmit:** This means you did not passed code review and must resubmit this project. You must first address all of the review comments, re-verify you are passing the project functionality tests before resubmitting your project for code review.

No matter how many resubmissions it takes, you will receive a 100% when you pass code review *unless* one or more deductions are made. Deductions are only made if you do not take this process seriously and waste the time of the instructor or teacher assistants. Specifically, the project grade will be adjusted as follows:

  - Receive up to –10% deduction if code review is requested without addressing the comments from previous code reviews.

  - Receive up to –10% deduction if code review is requested for a release without passing the verification process first.

  - Receive up to –10% deduction if you are significantly late or completely miss a code review appointment more than once.

Otherwise, you may resubmit your project for code review as many times as it takes to perfect your code.
