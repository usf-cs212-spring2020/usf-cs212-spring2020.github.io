---
layout: guides
navbar: Guides
title: Homework Submission
key: 4
---

This guide discusses the homework submission process. This comes *after* the [Homework Setup](homework-setup.html) and [Homework Testing](homework-testing.html) processes.

{% include anchor.html level="h2" text="Submission" %}

To submit your homework, make sure the latest version of your code has been committed **and** pushed to Github. There are two things to verify:

  1. Make sure you see your latest commit when visiting the homework repository on the Github website.

  2. Make sure you are passing all of the tests when running the `homework` script on the lab computers. (See [Homework Testing](homework-testing.html) for details.)

We use the `homework` script on the lab computers for grading, so if that is passing the tests then it will pass the tests when we grade it as well.

{% include anchor.html level="h2" text="Late Policy" %}

If there are any modifications to the `master` branch after the homework deadline, then an *automatic late deduction* will be applied to the homework grade as follows:

  - &ndash;10% deduction for changes 15 minutes to 24 hours after the deadline

  - &ndash;20% deduction for changes submitted 24 hours to 48 hours after the deadline

These penalties will be automatically applied regardless of whether the tests were passing before the deadline!

{% include anchor.html level="h3" text="Avoiding the Late Penalty" %}

Want to keep working on your homework after the deadline? No problem; just [create a branch](/guides/general/using-branches.html) of your homework first! This avoids making any modifications to your `master` branch, allowing you to avoid the automatic late penalty. If you are able to get additional tests passing, you can merge those changes back into your `master` branch .

See the [Using Branches](/guides/general/using-branches.html) guide for details on this process.

{% include anchor.html level="h3" text="Contesting the Late Penalty" %}

Mistakes still happen. You can contest the automatic late penalty if you accidentally change the timestamp of your `master` branch, but were fully passing the tests *before* the deadline.

This is only possible if you have a commit in your repository before the deadline that was passing the tests. We will be able to check out that exact commit and verify the test results.

You will still receive a 5% submission penalty for your first offense, and a 10% penalty for each  additional offense.
