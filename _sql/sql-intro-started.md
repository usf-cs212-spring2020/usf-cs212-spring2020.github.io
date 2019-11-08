---
title: 'SQL Intro: Getting Started'
navbar: Guides
layout: guides
key: 1.0
bump: true

tags:
  - text: 'New'
    type: 'is-primary'
---

This demo will introduce various basic SQL concepts and statements via example. The tables we will be building in this demo are similar to:

<div class="columns">
<div class="column is-narrow">
<table class="table is-hoverable" style="width: auto;">
  <thead>
    <tr>
      <th style="text-align: center">userid</th>
      <th style="text-align: left">name</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align: center">1</td>
      <td style="text-align: left">Cathy</td>
    </tr>
    <tr>
      <td style="text-align: center">2</td>
      <td style="text-align: left">Alice</td>
    </tr>
    <tr>
      <td style="text-align: center">3</td>
      <td style="text-align: left">Emily</td>
    </tr>
    <tr>
      <td style="text-align: center">4</td>
      <td style="text-align: left">Billy</td>
    </tr>
    <tr>
      <td style="text-align: center">5</td>
      <td style="text-align: left">David</td>
    </tr>
  </tbody>
</table>
</div>
<div class="column">
<table class="table is-hoverable" style="width: auto;">
  <thead>
    <tr>
      <th style="text-align: center">id</th>
      <th style="text-align: center">area</th>
      <th style="text-align: center">number</th>
      <th style="text-align: left">description</th>
      <th style="text-align: center">userid</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align: center">1</td>
      <td style="text-align: center">555</td>
      <td style="text-align: center">111-1111</td>
      <td style="text-align: left">Work</td>
      <td style="text-align: center">1</td>
    </tr>
    <tr>
      <td style="text-align: center">2</td>
      <td style="text-align: center">555</td>
      <td style="text-align: center">222-2222</td>
      <td style="text-align: left">Cell</td>
      <td style="text-align: center">1</td>
    </tr>
    <tr>
      <td style="text-align: center">3</td>
      <td style="text-align: center">555</td>
      <td style="text-align: center">333-3333</td>
      <td style="text-align: left">Home</td>
      <td style="text-align: center">2</td>
    </tr>
    <tr>
      <td style="text-align: center">4</td>
      <td style="text-align: center">555</td>
      <td style="text-align: center">444-4444</td>
      <td style="text-align: left">Home</td>
      <td style="text-align: center">4</td>
    </tr>
    <tr>
      <td style="text-align: center">5</td>
      <td style="text-align: center">555</td>
      <td style="text-align: center">555-5555</td>
      <td style="text-align: left">Cell</td>
      <td style="text-align: center">5</td>
    </tr>
  </tbody>
</table>
</div>
</div>

The exact tables will depend on which point you are at in the demo script.

### Database Accounts

Everyone has been assigned a database account on our lab MySQL/MariaDB database server.

The database accounts are in the form `user##` where `##` is a number between `01` and `30`. The database for that account is the same as the username.

See which database account you have been assigned on the [Database Accounts](https://usfca.instructure.com/courses/1586786/pages/database-accounts) Canvas page. Your initial password will be your USF username. **Make sure to change your password after logging in for the first time.**

### Connecting to Database

First, log into one of the CS lab computers. See the [Using CS Lab Computers](/guides/general/using-cs-lab-computers.html) guide for details.

Then, you will need to run the `mysql` command to connect to the SQL database on campus. The command looks like:

```shell
mysql -h sql.cs.usfca.edu -u user# -D user# -p
```

Here is what each part means:

  - The `mysql` part runs the MySQL command-line tool.

  - The `-h sql.cs.usfca.edu` specifies the hostname of our database server. You can actually type `-h sql` and the `cs.usfca.edu` part will be assumed since you are on the CS lab network.

  - The `-u user#` part will specify the database account username. This is **different** from your CS or USF usernames. See the [Database Accounts](https://usfca.instructure.com/courses/1586786/pages/database-accounts) page for your assigned database account and replace `user#` with your database username.

  - The `-D user#` part specifies the specific database to use. You only have one database for this class, and it has the same name as your database account username.

  - The `-p` (or `--password`) at the end will cause `mysql` to prompt you for a password once you hit <kbd>Enter</kbd>. Remember, you will not see the characters you type for your password for privacy reasons.

You will use this command a lot for this class, so you may want to [create an alias](/guides/homework/homework-testing.html#bonus-aliases) as a shortcut.

<a href="sql-intro-creating.html" class="button is-primary"><span>Next: Creating Tables</span>&nbsp;<i class="fas fa-arrow-alt-right"></i></a>
