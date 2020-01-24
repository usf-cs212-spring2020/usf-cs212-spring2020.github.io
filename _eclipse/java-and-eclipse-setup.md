---
layout: guides
navbar: Guides
title: Java and Eclipse Setup
key: 1
---

This guide will walkthrough the steps necessary to install the latest versions of Java and Eclipse on your local system.

{% include anchor.html level="h2" text="Install Java 13" %}

You need to make sure you have the latest version of Java **Standard** Edition (SE) **Development** Kit **13** (JDK 13) installed on your system. When downloading, keep in mind:

  - Do NOT download Java 8 or Java 11. We will be using Java 13 in class. There are some differences between Java 8, Java 11, and Java 13, and the lecture code may not compile on your system.

  - Do NOT download Java Enterprise Edition (EE). We will be using the Standard Edition (SE) in class. Java EE is used to create enterprise applications.

  - Do NOT download just the Java Runtime Environment (JRE). The Java Development Kit (JDK) includes the JRE, which is necessary to run Java code. The JDK also includes the Java compiler, which we will need in class.

To install the Java SE 13 JDK, go to:

<https://www.oracle.com/technetwork/java/javase/downloads/index.html>

Click the "JDK Download" button for Java SE 12, accept the license agreement, and download the appropriate file for your system. Run the installer and follow the prompts.

Once done, open a terminal window and verify the version using `java -version` and `javac -version`. The output will be similar to:

```shell
$ java -version
java version "13.0.1" 2019-xx-xx
Java(TM) SE Runtime Environment (build 13.0.1+1)
Java HotSpot(TM) 64-Bit Server VM (build 13.0.1+1, mixed mode, sharing)
$ javac -version
javac 13.0.1
```

Note that `$` above indicates the command prompt, and the lines below that are the output.

<article class="message is-warning">
  <div class="message-body">
    <i class="fas fa-info-circle"></i>&nbsp;Java <a href="https://www.oracle.com/technetwork/java/javase/11-relnote-issues-5012449.html#Important_Changes">removed auto-update capability</a> for Windows and MacOS systems. You will need to manually check when new versions of Java 12 are released.
  </div>
</article>

{% include anchor.html level="h2" text="Install Eclipse" %}

{% include screenshot.html image="eclipse-about-ide.png" size="is-4" %}

You need to make sure you have the latest **Eclipse IDE for Java Developers** package for **Eclipse 2019-12**. The direct download link is:

<https://www.eclipse.org/downloads/packages/release/2019-12/r/eclipse-ide-java-developers>

Do NOT download the IDE for Java EE Developers, as we are using Java SE in class. There are installers available for Windows, Mac OSX, and Linux. Once downloaded, double-click the installer.

<article class="message is-info">
  <div class="message-body">
    <i class="fas fa-info-circle"></i>&nbsp;Mac Users: I recommend you move the Eclipse.app file into your "Applications" folder for easy access.
  </div>
</article>

{% include anchor.html level="h2" text="Setup Folders" %}

I recommend you create a `CS 212` folder, and within it create these subfolders:

  - `Workspace`: This will be the folder for your Eclipse workspace.
  - `Repositories`: This will be the folder for your GitHub repositories that will be used for homework and project submission (and Eclipse).
  - `Libraries`: This will be the folder for your user libraries that will be installed in Eclipse. This folder will start empty, but will grow throughout the semester.

Eclipse does not behave well when you combine or nest the `Workspace` and `Repositories` folders. Keep these separate!

{% include anchor.html level="h2" text="Configure Eclipse" %}

Eclipse is a free, powerful, open-source, and configurable IDE. I recommend you spend some time configuring Eclipse to meet your needs. For example:

  - Change the fonts used in the editor ([reference](https://help.eclipse.org/2019-06/topic/org.eclipse.platform.doc.user/tasks/tasks-20.htm)). You can find several options on [Google Fonts](https://fonts.google.com/?category=Monospace). My favorites are [Source Code Pro Light](https://fonts.google.com/specimen/Source+Code+Pro), [Roboto Mono Light](https://fonts.google.com/specimen/Roboto+Mono), [Anonymous Pro](https://fonts.google.com/specimen/Anonymous+Pro), and [Incosolata](https://fonts.google.com/specimen/Inconsolata). There are many fans of the customizable [Input](http://input.fontbureau.com/) font as well.

    {% include screenshot.html image="eclipse-colors-and-fonts.png" %}

  - Change your save actions ([reference](https://help.eclipse.org/2019-06/topic/org.eclipse.jdt.doc.user/reference/preferences/java/editor/ref-preferences-save-actions.htm)). I usually remove unused imports and fix indentation at least.

    {% include screenshot.html image="eclipse-additional-save-actions.png" %}

  - Change the code formatter ([reference](https://help.eclipse.org/2019-06/topic/org.eclipse.jdt.doc.user/reference/preferences/java/codestyle/ref-preferences-formatter.htm)). You can set the brace style, where newlines and spaces are used, and fix how Eclipse formats try-with-resources code blocks.

    {% include screenshot.html image="eclipse-java-code-formatter.png" %}

  - Customize the autocomplete code templates ([reference](https://help.eclipse.org/2019-06/topic/org.eclipse.jdt.doc.user/reference/preferences/java/codestyle/ref-preferences-code-templates.htm), [examples](https://stackoverflow.com/questions/1028858/useful-eclipse-java-code-templates)). I usually create one for printf myself.

  - Change the layout and add [different views](https://help.eclipse.org/2019-06/topic/org.eclipse.platform.doc.user/tasks/tasks-3.htm). I usually add the Tasks view, which shows me all of my `TODO` comments.

The official guides for Eclipse are located at:

<https://help.eclipse.org/2019-12/index.jsp>

Keep in mind that Eclipse is under active development, and [bugs happen](https://bugs.eclipse.org/bugs/).

<article class="message is-info">
  <div class="message-body">
    <i class="fas fa-info-circle"></i>&nbsp;Try to <a href="https://help.eclipse.org/2019-06/topic/org.eclipse.platform.doc.user/tasks/tasks-47.htm">close projects in Eclipse</a> when you are no longer working on them. This can improve performance.
  </div>
</article>
