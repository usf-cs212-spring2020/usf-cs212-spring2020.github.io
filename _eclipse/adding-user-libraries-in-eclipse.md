---
layout: guides
navbar: Guides
title: Adding User Libraries in Eclipse
key: 3


tags:
  - text: 'Updated'
    type: 'is-success'
---

There is a step-by-step walkthrough on how to add user libraries in Eclipse at:

<http://tutoringcenter.cs.usfca.edu/resources/adding-user-libraries-in-eclipse.html>

It is important that you name your user libraries the same as the instructor. Otherwise, you may run into issues when importing Eclipse Java Projects from Github. Below are the names and links to the user libraries we will be using in this semester:

| Library | Eclipse Name | Download | Notes |
|---------|--------------|----------|-------|
| [Apache OpenNLP](http://opennlp.apache.org/) | `opennlp-tools` | [Link](http://opennlp.apache.org/download.html) | You need to add the `opennlp-tools-1.9.x.jar` in Eclipse. You do not need the other JAR files. |
| [Apache Log4j 2](https://logging.apache.org/log4j/2.x/) | `log4j2` | [Link](https://logging.apache.org/log4j/2.x/download.html) | You need to add the `log4j-api-2.x.x.jar` and `log4j-core-2.x.x.jar` JAR files in Eclipse. You do not need the other JAR files, but you can use the appropriate `*-javadoc.jar` files to access the Log4j2 JavaDoc within Eclipse. |
| [Apache Commons Lang3](http://commons.apache.org/proper/commons-lang/) | `commons-lang3` | [Link](http://commons.apache.org/proper/commons-lang/download_lang.cgi) | Download the latest `commons-lang-3.x.jar` file (listed under "Binaries"). |
| [Apache Commons Text](http://commons.apache.org/proper/commons-text/) | `commons-text` | [Link](http://commons.apache.org/proper/commons-text/download_text.cgi) | Download the latest `commons-text-1.x.jar` file (listed under "Binaries"). Requires `commons-lang3` to work. |
| [Eclipse Jetty](https://www.eclipse.org/jetty/) | `jetty` | [Link](https://repo1.maven.org/maven2/org/eclipse/jetty/aggregate/jetty-all/) | Look for the latest `jetty-all-9.x.x-uber.jar` JAR file. The directory is sorted lexicographically not numerically (e.g. by text not number), so version numbers like `9.4.22` will appear before version numbers like `4.4.3` even though it is a later version. |

{% comment %}

| [MariaDB JDBC Driver](https://downloads.mariadb.org/connector-java/) | `jdbc`| [Link](https://downloads.mariadb.org/connector-java/) | Download the latest `mariadb-java-client-2.x.x.jar` file. |
{% endcomment %}

Replace the `x` version numbers with the latest available versions.

This list will be updated over time.
