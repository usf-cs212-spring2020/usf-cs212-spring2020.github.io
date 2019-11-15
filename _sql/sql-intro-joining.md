---
title: 'SQL Intro: Joining Data'
navbar: Guides
layout: guides
key: 1.2
---

It would be nice if we could see the names associated with each phone number. A simple way to combine tables is:

```sql
SELECT * FROM demo_users, demo_phones;
```

```sql
+----+-------+----+------+----------+-------------+--------+
| id | name  | id | area | number   | description | userid |
+----+-------+----+------+----------+-------------+--------+
|  1 | Cathy |  1 | 555  | 111-1111 | Work        |      1 |
|  2 | Alice |  1 | 555  | 111-1111 | Work        |      1 |
|  3 | Emily |  1 | 555  | 111-1111 | Work        |      1 |
|  4 | Billy |  1 | 555  | 111-1111 | Work        |      1 |
|  5 | David |  1 | 555  | 111-1111 | Work        |      1 |
|  1 | Cathy |  2 | 555  | 222-2222 | Cell        |      1 |
|  2 | Alice |  2 | 555  | 222-2222 | Cell        |      1 |
...
```

However, this is not what we want. It performs something similar to a cross product. We could filter out the undesired rows follows:

```sql
SELECT * FROM demo_users, demo_phones
WHERE demo_users.id = demo_phones.userid;
```

We use the `WHERE` constraint to only show those rows where the `id` columns match. The resulting output should be:

```sql
+----+-------+----+------+----------+-------------+--------+
| id | name  | id | area | number   | description | userid |
+----+-------+----+------+----------+-------------+--------+
|  1 | Cathy |  1 | 555  | 111-1111 | Work        |      1 |
|  1 | Cathy |  2 | 555  | 222-2222 | Cell        |      1 |
|  2 | Alice |  3 | 555  | 333-3333 | Home        |      2 |
|  4 | Billy |  4 | 555  | 444-4444 | Home        |      4 |
|  5 | David |  5 | 555  | 555-5555 | Cell        |      5 |
+----+-------+----+------+----------+-------------+--------+
```

We can even filter by multiple criteria:

```sql
SELECT * FROM demo_users, demo_phones
WHERE demo_users.id = demo_phones.userid
AND description = 'Cell';
```

You should see the following output:

```sql
+----+-------+----+------+----------+-------------+--------+
| id | name  | id | area | number   | description | userid |
+----+-------+----+------+----------+-------------+--------+
|  1 | Cathy |  2 | 555  | 222-2222 | Cell        |      1 |
|  5 | David |  5 | 555  | 555-5555 | Cell        |      5 |
+----+-------+----+------+----------+-------------+--------+
```

Rather than creating a bunch of rows and then filtering out invalid rows, we can use an `INNER JOIN` operation instead on the `userid` and `id` columns. The statement and the expected output are:

```sql
SELECT * FROM demo_users
INNER JOIN demo_phones
ON demo_phones.userid = demo_users.id;
```

```sql
+----+-------+----+------+----------+-------------+--------+
| id | name  | id | area | number   | description | userid |
+----+-------+----+------+----------+-------------+--------+
|  1 | Cathy |  1 | 555  | 111-1111 | Work        |      1 |
|  1 | Cathy |  2 | 555  | 222-2222 | Cell        |      1 |
|  2 | Alice |  3 | 555  | 333-3333 | Home        |      2 |
|  4 | Billy |  4 | 555  | 444-4444 | Home        |      4 |
|  5 | David |  5 | 555  | 555-5555 | Cell        |      5 |
+----+-------+----+------+----------+-------------+--------+
```

The order of columns for the `ON` clause does not change the rows, but does change the order of the columns:

```sql
SELECT * FROM demo_phones
INNER JOIN demo_users
ON demo_users.id = demo_phones.userid;
```

```sql
+----+------+----------+-------------+--------+----+-------+
| id | area | number   | description | userid | id | name  |
+----+------+----------+-------------+--------+----+-------+
|  1 | 555  | 111-1111 | Work        |      1 |  1 | Cathy |
|  2 | 555  | 222-2222 | Cell        |      1 |  1 | Cathy |
|  3 | 555  | 333-3333 | Home        |      2 |  2 | Alice |
|  4 | 555  | 444-4444 | Home        |      4 |  4 | Billy |
|  5 | 555  | 555-5555 | Cell        |      5 |  5 | David |
+----+------+----------+-------------+--------+----+-------+
```

We can specify which columns we want displayed:

```sql
SELECT name, area, number, description FROM demo_users
INNER JOIN demo_phones
ON demo_users.id = demo_phones.userid;
```

```sql
+-------+------+----------+-------------+
| name  | area | number   | description |
+-------+------+----------+-------------+
| Cathy | 555  | 111-1111 | Work        |
| Cathy | 555  | 222-2222 | Cell        |
| Alice | 555  | 333-3333 | Home        |
| Billy | 555  | 444-4444 | Home        |
| David | 555  | 555-5555 | Cell        |
+-------+------+----------+-------------+
```

We can skip the `ON` clause with a `NATURAL JOIN` instead of an `INNER JOIN`:

```sql
SELECT * FROM demo_phones
NATURAL JOIN demo_users;
```

```sql
+----+------+----------+-------------+--------+-------+
| id | area | number   | description | userid | name  |
+----+------+----------+-------------+--------+-------+
|  1 | 555  | 111-1111 | Work        |      1 | Cathy |
|  2 | 555  | 222-2222 | Cell        |      1 | Alice |
|  3 | 555  | 333-3333 | Home        |      2 | Emily |
|  4 | 555  | 444-4444 | Home        |      4 | Billy |
|  5 | 555  | 555-5555 | Cell        |      5 | David |
+----+------+----------+-------------+--------+-------+
```

Oh no! Notice the number for `Alice` is now incorrect. The `NATURAL JOIN` joined on `id` in both tables instead of `userid`. To make this work, we have to fix our table as follows:

```sql
ALTER TABLE demo_users CHANGE id userid INTEGER;
```

Now we can see the new column name:

```sql
DESCRIBE demo_users;
```

```sql
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| userid | int(11)     | NO   | PRI | 0       |       |
| name   | varchar(15) | NO   |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
```

And our natural join works as expected:

```sql
SELECT * FROM demo_phones
NATURAL JOIN demo_users;
```

```sql
+--------+----+------+----------+-------------+-------+
| userid | id | area | number   | description | name  |
+--------+----+------+----------+-------------+-------+
|      1 |  1 | 555  | 111-1111 | Work        | Cathy |
|      1 |  2 | 555  | 222-2222 | Cell        | Cathy |
|      2 |  3 | 555  | 333-3333 | Home        | Alice |
|      4 |  4 | 555  | 444-4444 | Home        | Billy |
|      5 |  5 | 555  | 555-5555 | Cell        | David |
+--------+----+------+----------+-------------+-------+
```

There are also `OUTER JOIN`s. Inner joins only include rows where both tables match. An outer join will include all rows from the outer table, and show the matches from the other table. If there is not a match, you will see a `NULL` value:

```sql
SELECT * FROM demo_users
LEFT OUTER JOIN demo_phones
ON demo_users.userid = demo_phones.userid;
```

```sql
+--------+-------+------+------+----------+-------------+--------+
| userid | name  | id   | area | number   | description | userid |
+--------+-------+------+------+----------+-------------+--------+
|      1 | Cathy |    1 | 555  | 111-1111 | Work        |      1 |
|      1 | Cathy |    2 | 555  | 222-2222 | Cell        |      1 |
|      2 | Alice |    3 | 555  | 333-3333 | Home        |      2 |
|      4 | Billy |    4 | 555  | 444-4444 | Home        |      4 |
|      5 | David |    5 | 555  | 555-5555 | Cell        |      5 |
|      3 | Emily | NULL | NULL | NULL     | NULL        |   NULL |
+--------+-------+------+------+----------+-------------+--------+
```

And, of course, we can make those joins `NATURAL` to save some typing:

```sql
SELECT * FROM demo_users
NATURAL LEFT OUTER JOIN demo_phones;
```

```sql
+--------+-------+------+------+----------+-------------+
| userid | name  | id   | area | number   | description |
+--------+-------+------+------+----------+-------------+
|      1 | Cathy |    1 | 555  | 111-1111 | Work        |
|      1 | Cathy |    2 | 555  | 222-2222 | Cell        |
|      2 | Alice |    3 | 555  | 333-3333 | Home        |
|      4 | Billy |    4 | 555  | 444-4444 | Home        |
|      5 | David |    5 | 555  | 555-5555 | Cell        |
|      3 | Emily | NULL | NULL | NULL     | NULL        |
+--------+-------+------+------+----------+-------------+
```

There is a `RIGHT OUTER JOIN` too, but we don’t have anything extra to display. Lets add an extra
row so that we see how `RIGHT OUTER JOIN` works:

```sql
INSERT INTO demo_phones (number, userid)
VALUES ('777-7777', 6);
```

Now for the `RIGHT OUTER JOIN`:

```sql
SELECT * FROM demo_users
NATURAL RIGHT OUTER JOIN demo_phones;
```

```sql
+--------+----+------+----------+-------------+-------+
| userid | id | area | number   | description | name  |
+--------+----+------+----------+-------------+-------+
|      1 |  1 | 555  | 111-1111 | Work        | Cathy |
|      1 |  2 | 555  | 222-2222 | Cell        | Cathy |
|      2 |  3 | 555  | 333-3333 | Home        | Alice |
|      4 |  4 | 555  | 444-4444 | Home        | Billy |
|      5 |  5 | 555  | 555-5555 | Cell        | David |
|      6 |  6 | 555  | 777-7777 | NULL        | NULL  |
+--------+----+------+----------+-------------+-------+
```

We can get a full outer join using the `UNION` operation:

```sql
SELECT * FROM demo_users
LEFT OUTER JOIN demo_phones
ON demo_users.userid = demo_phones.userid
UNION
SELECT * FROM demo_users
RIGHT OUTER JOIN demo_phones
ON demo_users.userid = demo_phones.userid;
```

```sql
+--------+-------+------+------+----------+-------------+--------+
| userid | name  | id   | area | number   | description | userid |
+--------+-------+------+------+----------+-------------+--------+
|      1 | Cathy |    1 | 555  | 111-1111 | Work        |      1 |
|      1 | Cathy |    2 | 555  | 222-2222 | Cell        |      1 |
|      2 | Alice |    3 | 555  | 333-3333 | Home        |      2 |
|      4 | Billy |    4 | 555  | 444-4444 | Home        |      4 |
|      5 | David |    5 | 555  | 555-5555 | Cell        |      5 |
|      3 | Emily | NULL | NULL | NULL     | NULL        |   NULL |
|   NULL | NULL  |    6 | 555  | 777-7777 | NULL        |      6 |
+--------+-------+------+------+----------+-------------+--------+
```

There are other operations, like CONCAT:

```sql
SELECT userid, name,
CONCAT('(', area, ') ', number)
FROM demo_users
NATURAL LEFT OUTER JOIN demo_phones
ORDER BY name;
```

The results are as follows. Note the column names, which will be how we access results later when we connect this to Java.

```sql
+--------+-------+---------------------------------+
| userid | name  | CONCAT('(', area, ') ', number) |
+--------+-------+---------------------------------+
|      2 | Alice | (555) 333-3333                  |
|      4 | Billy | (555) 444-4444                  |
|      1 | Cathy | (555) 111-1111                  |
|      1 | Cathy | (555) 222-2222                  |
|      5 | David | (555) 555-5555                  |
|      3 | Emily | NULL                            |
+--------+-------+---------------------------------+
```

For a better column name, use the `AS` clause:

```sql
SELECT userid, name,
CONCAT('(', area, ') ', number) AS phone
FROM demo_users
NATURAL LEFT OUTER JOIN demo_phones
ORDER BY name;
```

```sql
+--------+-------+----------------+
| userid | name  | phone          |
+--------+-------+----------------+
|      2 | Alice | (555) 333-3333 |
|      4 | Billy | (555) 444-4444 |
|      1 | Cathy | (555) 111-1111 |
|      1 | Cathy | (555) 222-2222 |
|      5 | David | (555) 555-5555 |
|      3 | Emily | NULL           |
+--------+-------+----------------+
```

We can also use aggregate functions in combination with `GROUP BY` to do some interesting things:

```sql
SELECT name,
count(number) AS 'phone numbers'
FROM demo_users
NATURAL LEFT OUTER JOIN demo_phones
GROUP BY userid;
```

```sql
+-------+---------------+
| name  | phone numbers |
+-------+---------------+
| Alice |             1 |
| Billy |             1 |
| Cathy |             2 |
| David |             1 |
| Emily |             0 |
+-------+---------------+
```

This is especially useful for calculating averages, maximums, etc.

<a href="sql-intro-enforcing.html" class="button is-primary"><span>Next: Enforcing Relationships</span>&nbsp;<i class="fas fa-arrow-alt-right"></i></a>
