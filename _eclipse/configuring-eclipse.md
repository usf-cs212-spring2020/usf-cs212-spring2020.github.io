---
layout: guides
navbar: Guides
title: Configuring Eclipse
key: 2

tags:
  - text: 'New'
    type: 'is-primary'
---

<style>
img {
  max-width: 100%;
  height: auto;

  background-color: whitesmoke;
  border-radius: 4px;
  padding: 0.25ex;
}
</style>

Eclipse is a free, powerful, open-source, and configurable IDE. I recommend you spend some time configuring Eclipse to meet your needs.

## Compiler Configuration

Pending

## Javadoc Configuration

Your code should have proper Javadoc comments for *all* members and methods before requesting a code review. To receive warnings when you are missing something (or something is out of date) with your Javadoc comments, use these settings:

![Javadoc]({{ "/images/eclipse-java-compiler-javadoc.png" | relative_url }}){: style="width: calc(1620px * 0.4);"}

## Code Formatting

Your code should always be consistently formatted, *especially* before requesting a code review. The exact style you adopt is up to you. The official Java code conventions are at:

  - [Code Conventions for the Java Programming Language](https://www.oracle.com/technetwork/java/codeconvtoc-136057.html), Revised April 1999.
  {: style="list-style-type: none;" }

However, these conventions are no longer maintained and major features have been introduced to Java since these were last updated. For a more modern guide, see:

  - [Google Java Style Guide](https://google.github.io/styleguide/javaguide.html), Updated May 2018.
  {: style="list-style-type: none;" }

I will use the Google style guide for all lecture code, as well as the homework and project templates. If you also want to use this code style, you can [download the Eclipse settings](https://github.com/google/styleguide/blob/gh-pages/eclipse-java-google-style.xml) and import them.

Otherwise, you can [customize the formatter](https://help.eclipse.org/2019-12/topic/org.eclipse.jdt.doc.user/reference/preferences/java/codestyle/ref-preferences-formatter.htm) to your own preferences.  you can use these settings to change the brace style, where newlines and spaces are used, and fix how Eclipse formats try-with-resources code blocks. For example:

![Java Code Formatter]({{ "/images/eclipse-java-code-formatter.png" | relative_url }}){: style="width: calc(1242px * 0.5);"}

You can further customize Eclipse to re-format your code every time you save. See below for details.

## Other Customization (Optional)

I recommend you customize other features in Eclipse as well. For example:

  - Change the fonts used in the editor ([reference](https://help.eclipse.org/2019-12/topic/org.eclipse.platform.doc.user/tasks/tasks-20.htm)). You can find several options on [Google Fonts](https://fonts.google.com/?category=Monospace). My favorites are [Source Code Pro Light](https://fonts.google.com/specimen/Source+Code+Pro), [Roboto Mono Light](https://fonts.google.com/specimen/Roboto+Mono), [Anonymous Pro](https://fonts.google.com/specimen/Anonymous+Pro), and [Incosolata](https://fonts.google.com/specimen/Inconsolata). There are many fans of the customizable [Input](http://input.fontbureau.com/) font as well.

    ![Colors and Fonts]({{ "/images/eclipse-colors-and-fonts.png" | relative_url }}){: style="width: calc(824px * 0.5);"}

  - Change your save actions ([reference](https://help.eclipse.org/2019-12/topic/org.eclipse.jdt.doc.user/reference/preferences/java/editor/ref-preferences-save-actions.htm)). I usually remove unused imports and fix indentation at least.

      ![Save Actions]({{ "/images/eclipse-additional-save-actions.png" | relative_url }}){: style="width: calc(895px * 0.5);"}

  - Customize the autocomplete code templates ([reference](https://help.eclipse.org/2019-12/topic/org.eclipse.jdt.doc.user/reference/preferences/java/codestyle/ref-preferences-code-templates.htm), [examples](https://stackoverflow.com/questions/1028858/useful-eclipse-java-code-templates)). I usually create one for `printf` myself. You can download the templates I use and import them into your Eclipse workspace:

      <script src="https://gist.github.com/sjengle/32b18311714dc62124cb2154339288b2.js"></script>

  - Change the layout and add [different views](https://help.eclipse.org/2019-12/topic/org.eclipse.platform.doc.user/tasks/tasks-3.htm). I usually add the Tasks view, which shows me all of my `TODO` comments. I also prefer to add the Git views to my Java perspective rather than switching to the Git perspective.

      ![Views]({{ "/images/eclipse-views.png" | relative_url }}){: style="width: calc(2076px * 0.4);"}

  - Customize the visibility of whitespaces in the text editor ([reference](https://help.eclipse.org/2019-12/index.jsp?topic=%2Forg.eclipse.platform.doc.user%2Freference%2Fref-texteditorprefs.htm&cp%3D0_4_1_50)). This can be helpful to detect when a mix of tabs and spaces are used for indentation.

      ![Whitespace]({{ "/images/eclipse-general-whitespace.png" | relative_url }}){: style="width: calc(1498px * 0.4);"}

  - Change how content assist works for the Java editor ([reference](https://help.eclipse.org/2019-12/index.jsp?topic=%2Forg.eclipse.jdt.doc.user%2Freference%2Fpreferences%2Fjava%2Feditor%2Fref-preferences-content-assist.htm)). If you find Eclipse inserting code automatically when you do *NOT* want it to, you might consider changing the "Disable insertion triggers" setting:

      ![Content Assist]({{ "/images/eclipse-java-editor-assist.png" | relative_url }}){: style="width: calc(1380px * 0.4);"}


The official guides for Eclipse are located at:

  - <https://help.eclipse.org/2019-12/index.jsp>
  {: style="list-style-type: none;" }

Keep in mind that Eclipse is under active development, and [bugs happen](https://bugs.eclipse.org/bugs/).

<i class="fas fa-info-circle"></i>
Try to <a href="https://help.eclipse.org/2019-12/topic/org.eclipse.platform.doc.user/tasks/tasks-47.htm">close projects in Eclipse</a> when you are no longer working on them. This can improve performance.
{: .notification .is-size-7 }
