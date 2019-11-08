---
title: 'SQL Intro: Creating Tables'
navbar: Guides
layout: guides
key: 1.1
---

Now, we can start creating our tables. Start by creating a `demo_users` table. Each user should have a unique id, which will be the primary key of the table. In this case, we will just automatically increment the id value every time we insert into the table. Copy/paste the following at the prompt:

```sql
CREATE TABLE demo_users (
id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(15) NOT NULL );
```

You will see output similar to the snippet below. Notice that the `mysql>` text is the actual prompt, and the `->` symbol indicates a multi-line command and appears automatically after you press <kbd>Enter</kbd>. You will also get a status message after each command. In this case, we see that the query was okay. If there was an issue, you’ll see an error instead.

```sql
mysql> CREATE TABLE demo_users (
    -> id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    -> name VARCHAR(15) NOT NULL );
Query OK, 0 rows affected (0.12 sec)
```

Verify that the `demo_users` table was created correctly with the `SHOW TABLES` and `DESCRIBE` statements. Below gives both the statements and the expected output, so make sure not to copy/paste the output into the `mysql` prompt:

```sql
SHOW TABLES;
```

```sql
+-------------------+
| Tables_in_user104 |
+-------------------+
| demo_users        |
+-------------------+
1 row in set (0.00 sec)
```

```sql
DESCRIBE demo_users;
```

```sql
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int(11)     | NO   | PRI | NULL    | auto_increment |
| name  | varchar(15) | NO   |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
2 rows in set (0.00 sec)
```

If all looks good, then we can start inserting values into our table. We can insert multiple values at once using the following syntax:

```sql
INSERT INTO demo_users (name) VALUES
('Cathy'), ('Alice'), ('Emily'), ('Billy'), ('David');
```

To see all of the rows you entered into your table, use the `SELECT * FROM demo_users` statement:

```sql
SELECT * FROM demo_users;
```

```sql
+----+-------+
| id | name  |
+----+-------+
|  1 | Cathy |
|  2 | Alice |
|  3 | Emily |
|  4 | Billy |
|  5 | David |
+----+-------+
5 rows in set (0.00 sec)
```

To sort the rows, use the `ORDER BY` clause:

```sql
SELECT * FROM demo_users ORDER BY name ASC;
```

```sql
+----+-------+
| id | name  |
+----+-------+
|  2 | Alice |
|  4 | Billy |
|  1 | Cathy |
|  5 | David |
|  3 | Emily |
+----+-------+
5 rows in set (0.00 sec)
```

Use the `DESC` keyword if you want to sort in descending order instead.

Now, create the `demo_phones` table:

```sql
CREATE TABLE demo_phones (
id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
area CHAR(3) NOT NULL DEFAULT '555',
number CHAR(8) NOT NULL,
description VARCHAR(15),
userid INTEGER NOT NULL);
```

Make sure everything looks right. You can combine two statements together as long as you have the `;` semi-colons in the right places:

```sql
SHOW TABLES; DESCRIBE demo_phones;
```

```sql
+-------------------+
| Tables_in_user104 |
+-------------------+
| demo_phones       |
| demo_users        |
+-------------------+
2 rows in set (0.00 sec)

+-------------+-------------+------+-----+---------+----------------+
| Field       | Type        | Null | Key | Default | Extra          |
+-------------+-------------+------+-----+---------+----------------+
| id          | int(11)     | NO   | PRI | NULL    | auto_increment |
| area        | char(3)     | NO   |     | 555     |                |
| number      | char(8)     | NO   |     | NULL    |                |
| description | varchar(15) | YES  |     | NULL    |                |
| userid      | int(11)     | NO   |     | NULL    |                |
+-------------+-------------+------+-----+---------+----------------+
5 rows in set (0.01 sec)
```

Now, time to insert a row into this table. This time, lets insert 1 row at a time:

```sql
INSERT INTO demo_phones
(area, number, description, userid)
VALUES ('555', '111-1111', 'Work', 1);
```

When inserting, you can mix up the order of the columns:

```sql
INSERT INTO demo_phones
(userid, area, number, description)
VALUES (1, '555', '222-2222', 'Cell');
```

When inserting, you can take advantage of the default value for area:

```sql
INSERT INTO demo_phones
(number, description, userid)
VALUES ('333-3333', 'Home', 2);
```

You can verify the default value did get set correctly by looking at only the last row:

```sql
SELECT * FROM demo_phones WHERE id=3;
```

```sql
+----+------+----------+-------------+--------+
| id | area | number   | description | userid |
+----+------+----------+-------------+--------+
|  3 | 555  | 333-3333 | Home        |      2 |
+----+------+----------+-------------+--------+
1 row in set (0.00 sec)
```

You can also insert a `NULL` into the description column:

```sql
INSERT INTO demo_phones
(area, number, description, userid)
VALUES ('555', '444-4444', null, 4);
```

You can skip specifying the columns, but then you have to provide all columns (including ones that are `AUTO_INCREMENT`, may be `NULL`, or have default values):

```sql
INSERT INTO demo_phones
VALUES (5, '555', '555-5555', 'Cell', 5);
```

Lets make sure everything looks right so far:

```sql
SELECT * FROM demo_phones;
```

```sql
+----+------+----------+-------------+--------+
| id | area | number   | description | userid |
+----+------+----------+-------------+--------+
|  1 | 555  | 111-1111 | Work        |      1 |
|  2 | 555  | 222-2222 | Cell        |      1 |
|  3 | 555  | 333-3333 | Home        |      2 |
|  4 | 555  | 444-4444 | NULL        |      4 |
|  5 | 555  | 555-5555 | Cell        |      5 |
+----+------+----------+-------------+--------+
5 rows in set (0.00 sec)
```

Actually, lets get rid of that `NULL` value. We can update a row as follows:

```sql
UPDATE demo_phones
SET description='Home'
WHERE ISNULL(description);
```

You should see the following messages, indicating 1 row was changed:

```sql
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0
```

Now to double-check our work:

```sql
SELECT * FROM demo_phones WHERE id=4;
```

```sql
+----+------+----------+-------------+--------+
| id | area | number   | description | userid |
+----+------+----------+-------------+--------+
|  4 | 555  | 444-4444 | Home        |      4 |
+----+------+----------+-------------+--------+
1 row in set (0.00 sec)
```

<a href="sql-intro-joining.html" class="button is-primary"><span>Next: Joining Data</span>&nbsp;<i class="fas fa-arrow-alt-right"></i></a>
