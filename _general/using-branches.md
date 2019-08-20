---
title: Using Branches
navbar: Guides
layout: guides
key: 4
---

Using branches in `git` will be *extremely helpful* for both homework and projects in this class. It will also come in handy outside of class; branching is [used](https://github.com/atom/atom/branches) [heavily](https://github.com/facebook/react/branches) [in](https://github.com/scikit-learn/scikit-learn/branches) [any](https://github.com/elastic/elasticsearch/branches) [major](https://github.com/eclipse/jetty.project/branches) [software](https://github.com/apple/swift/branches) [development](https://github.com/nodejs/node/branches) [project](https://github.com/tensorflow/tensorflow/branches).

{% include anchor.html level="h2" text="What is Branching?" %}

<blockquote class="imgur-embed-pub" lang="en" data-id="YG8In8X"><a href="//imgur.com/YG8In8X">Git Branching</a></blockquote><script async src="//s.imgur.com/min/embed.js" charset="utf-8"></script>

The way `git` tracks history is using a [directed acyclic graph (DAG)](https://en.wikipedia.org/wiki/Directed_acyclic_graph), which is a graph with arrows but no cycles (similar to a [tree](https://en.wikipedia.org/wiki/Tree_(graph_theory))). You can think of branching as a label or pointer to a specific branch (or path) in this graph.

Still confused? Essentially, branching creates a new line of development that allows you to work on new features without disturbing other branches (like the `master` or other stable production branches). That branch can then be *merged* back into other branches when that new feature is stable.

There are several guides ([linked below](#how-should-you-branch)) that explain this concept further.

{% include anchor.html level="h2" text="When Should You Branch?" %}

All grading and code reviews will be done from your `master` branch. Use a branch any time you want to work ahead or try something out *without* affecting how your code will be graded. This includes:

  - **Create a branch *before* working on homework after the deadline.** This prevents the timestamp on the `master` branch from changing, which will trigger a late submission penalty. If you manage to get new tests passing in that branch, then it may be worthwhile to merge those changes back into `master` even if it does trigger the late penalty.

  - **Create a branch *before* working ahead on projects.** You may not include code in your `master` branch from future projects until you have fully passed code review. You are still able to make releases from other branches, so this allows you to still work  ahead and pass functionality without disturbing the code review process.

In general, it is a good idea to always use branches for development and keep only stable, tested, production-ready code in the `master` branch.

{% include anchor.html level="h2" text="How Should You Branch?" %}

Learning both the command-line and the Eclipse interface is recommended. Learning the commands to branch and merge helps with understanding, and learning to perform those commands within the Eclipse interface helps avoid the amount of switching in/out of the application necessary during a normal workflow.

Here are a few guides on the topic,

  - [About Branches](https://help.github.com/articles/about-branches/) (Github Help Article)

  - [Learn Git Branching](https://learngitbranching.js.org/) (Github Interactive Training)

  - [Using Branches](https://www.atlassian.com/git/tutorials/using-branches) (Bitbucket Tutorial)

  - [Branching](https://wiki.eclipse.org/EGit/User_Guide#Branching) (Eclipse EGit User Guide)

  - [Pro Git: Git Branching](https://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell) (E-Book Chapter)

Once you start branching, it is likely you will run into merge conflicts.

- [About Merge Conflicts](https://help.github.com/articles/about-merge-conflicts/) (Github Help Article)

- [Managing Merge Conflicts](https://lab.github.com/githubtraining/managing-merge-conflicts) (Github Training)

- [Merge Conflicts](https://www.atlassian.com/git/tutorials/using-branches/merge-conflicts) (Bitbucket Tutorial)

- [Merging](https://wiki.eclipse.org/EGit/User_Guide#Merging) (Eclipse EGit User Guide)

Do not get discouraged! Dealing with a merge conflict (or other repository issue) is like a rite-of-passage for software developers. It is frustrating for everyone! (There are many jokes and comics on this topic that are not necessarily appropriate to share in a classroom setting.)
