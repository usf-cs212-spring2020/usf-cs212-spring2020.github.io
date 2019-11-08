---
title: 'SQL Demo: Faculty Contact'
navbar: Guides
layout: guides
key: 2.0
bump: true

tags:
  - text: 'New'
    type: 'is-primary'
---

This is another SQL demo that illustrates the process of designing tables and creating complex `SELECT` statements from those tables to get different views of the data. The primary table we want to create is as follows:

| name                 | email                | twitter          | courses                        |
|----------------------|----------------------|------------------|--------------------------------|
| Greg Benson          | benson@usfca.edu     | @gregorydbenson  | CS 315, CS 326                 |
| David Guy Brizan     | dgbrizan@usfca.edu   | @davidguybrizan  | CS 245                         |
| Sophie Engle         | sjengle@usfca.edu    | @sjengle         | CS 212, CS 360                 |
| Jeffrey Johnson      | jajohnson9@usfca.edu |                  | CS 107, CS 110, CS 490         |
| Kristin Jones        | kjones12@usfca.edu   |                  | CS 107, CS 345                 |
| Alark Joshi          | apjoshi@usfca.edu    | @alark           | CS 110, CS 112, CS 360         |
| EJ Jung              | ejung2@usfca.edu     |                  | CS 112, CS 245                 |
| Olga Karpenko        | okarpenko@usfca.edu  |                  | CS 112, CS 212, CS 245, CS 490 |
| Haden Hooyeon Lee    | hlee84@usfca.edu     |                  | NULL                           |
| Matthew Malensek     | mmalensek@usfca.edu  | @MatthewMalensek | CS 220, CS 326                 |
| Vahab Pournaghshband | vpournaghs@usfca.edu |                  | CS 221, CS 336                 |
| Sami Rollins         | snrollins@usfca.edu  | @samirollins     | CS 112, CS 212                 |
| David Wolber         | wolberd@usfca.edu    | @wolberd         | CS 107, CS 110, CS 112         |
| Beste Yuksel         | byuksel@usfca.edu    | @BesteFYuksel    | CS 107, CS 110, CS 490         |

Before viewing the rest of this demonstration, see if you can determine the tables and columns that should be created first.

### Quick Setup

If you do not want to copy/paste the commands for this example, they can be found in the `sql` subdirectory of the `cs212` public folder on the lab computers.

For example, you can create the tables and insert the rows for this example by doing:

```sql
source /home/public/cs212/sql/faculty.sql
```

To double check this created the necessary tables, do:

```sql
SHOW TABLES;
```

```sql
+------------------+
| Tables_in_user01 |
+------------------+
| faculty_courses  |
| faculty_names    |
| faculty_twitter  |
+------------------+
```

The other `faculty_????.sql` files contain the various `SELECT` statements from this demonstration.


<a href="sql-demo-creating.html" class="button is-primary"><span>Next: Creating Tables</span>&nbsp;<i class="fas fa-arrow-alt-right"></i></a>
