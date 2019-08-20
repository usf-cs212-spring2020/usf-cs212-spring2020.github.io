---
layout: guides
navbar: Guides
title: Importing Eclipse Projects from Github
key: 2
---

Follow these steps to import an Eclipse project from your Github repository. These steps assume you have already followed the <a href="/guides/general/configuring-ssh-keys.html">Configuring SSH Keys</a> and <a href="/guides/eclipse/java-and-eclipse-setup.html">Java and Eclipse Setup</a> guides.

<article class="message is-info">
  <div class="message-body">
    <i class="fas fa-info-circle"></i>&nbsp;There might be slight differences with the images below at the latest version of Eclipse, and the URLs may have changed to reflect the current term.
  </div>
</article>

{% include anchor.html level="h2" text="Video Walkthrough" %}

<p>This video walkthrough will illustrate this entire process on a Mac OSX system. Alternatively, you can follow the steps in the sections below.</p>

<div>
  <iframe width="560" height="315" src="https://www.youtube.com/embed/-ZnV6Z7KUwI?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen style="height: 315px;"></iframe>
  <br/>
  <small><a href="https://youtu.be/-ZnV6Z7KUwI"><i class="fab fa-youtube"></i> https://youtu.be/-ZnV6Z7KUwI</a></small>
</div>

{% include anchor.html level="h2" text="Import Repository into Eclipse" %}

You first need to add the Github repository to Eclipse. Log into Github and open Eclipse, and follow these steps:

  1. Copy the SSH link to clone your repository in Github. Make sure you are getting the SSH link, not the HTTPS or HTTP links.

      {% include screenshot.html image="github-clone-or-download.png" zoom="50%" %}

  2. Switch to Eclipse and open the "Git Perspective"  [(Help)](https://help.eclipse.org/2019-06/topic/org.eclipse.platform.doc.user/tasks/tasks-9f.htm). Select "Window" &raquo; "Perspective" &raquo; "Open Perspective" &raquo; "Other" from the menu, and then "Git" on the dialog box.

       {% include screenshot.html image="eclipse-other-perspectives.png" zoom="50%" %}

      Click the "Open" button. The "Git Perspective" should look similar to this:

      {% include screenshot.html image="eclipse-git-perspective.png" zoom="50%" %}

  3. Click the "Clone a Git repository" button or link. (You can hover over the buttons to see their descriptions.) This should open the following dialog window:

      {% include screenshot.html image="eclipse-clone-git-repository.png" zoom="50%" %}

      The fields should automatically fill in based on the link you copied in Github. (If not, hit cancel, copy the link, and then re-open the dialog window.)

  4. Click the "Next" button, make sure the `master` repository is selected, and click the "Next" button again. If you are storing your CS 212 code in a specific folder, click the "Browse" button and select it in the following dialog window:

      {% include screenshot.html image="eclipse-clone-git-repository-destination.png" zoom="50%" %}

      Follow the prompts to finish the process.

  5. You should now see the repository listed in the Git Perspective:

      {% include screenshot.html image="eclipse-git-repositories-list.png" zoom="50%" %}

      You can right-click the repository to access several `git` actions, including the "Pull" action which you will need to keep this local repository (on your system) synchronized with your remote repository (on Github).

You only need to add this repository once, even if there are multiple Eclipse projects within that repository. For example, you only need to import the [lectures](https://github.com/usf-cs212-fall2019/lectures) repository once. However, since each homework assignment has its own repository, you will have to import each repository separately.

{% include anchor.html level="h2" text="Import Projects into Eclipse" %}

Before you start, double-check that you have the latest version of the remote repository by performing a "Pull" action [(Help)](http://wiki.eclipse.org/EGit/User_Guide#Pulling_New_Changes_from_Upstream_Branch).

<article class="message is-info">
  <div class="message-body">
    <i class="fas fa-info-circle"></i>&nbsp;This is especially important if you are importing new projects from a repository you added earlier, like the <a href="https://github.com/usf-cs212-fall2019/lectures">lectures</a> repository. If you forget to synchronize the repository, you will not see the new lecture code.
  </div>
</article>

Now that the repository is added to Eclipse and up-to-date, you can import the Java projects from that repository into Eclipse using these steps:

  2. In Eclipse, select "Import..." from the "File" menu.

      {% include screenshot.html image="eclipse-import-dialog.png" zoom="50%" %}

      Select "Projects from Git" in the dialog window and click the "Next" button.

  3. Select "Existing local repository" and click the "Next" button. Select the repository in the next dialog window.

  4. Make sure to select "Import existing Eclipse projects" in the dialog window:

      {% include screenshot.html image="eclipse-import-existing-projects-from-git.png" zoom="50%" %}

      Click the "Next" button to continue.

  7. Make sure the projects you wish to import is selected and click the "Finish" button. Some projects may be greyed out if they have already been imported into Eclipse previously.

  8. Double-check the project setup and try running the code. If you see errors, use the troubleshooting steps below. Otherwise, your project is ready!

{% include anchor.html level="h2" text="Troubleshooting" %}

If you notice several errors, it is likely something isn't quite right with the build path setup for your Eclipse project. This happens when your setup is different from expected (either you have a different version of Eclipse, Java, or named your third-party libraries differently).

To fix this, right-click your project folder and select "Build Path" and "Configure Build Path" from the menus. On the following window, click the "Libraries" tab. Remove everything that has a red "x" icon or is listed as "unbound" in the label.

Now, we have to re-add the necessary libraries. Click the "Add Library..." button and follow these steps:

  - Select "JRE System Library" to re-add Java 12 (if necessary). I recommend you select "Workspace default JRE" unless the default is NOT Java 12.

  - Select "JUnit" to re-add JUnit 5 (if necessary). Make sure "JUnit 5" is selected in the dropdown, **not** JUnit 4.

  - Select "User Library" to add a third-party user library (if necessary). This could be log4j2, StringTemplate, Apache Commons, etc. depending on the assignment. See the [Adding User Libraries in Eclipse](/guides/eclipse/adding-user-libraries-in-eclipse.html) guide for more details on how to set those up.

Click "Apply" and "OK" when done. You should see all of the scary red icons disappear. If not, ask on Piazza or during office hours for help!
