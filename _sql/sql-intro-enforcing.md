---
title: 'SQL Intro: Enforcing Relationships'
navbar: Guides
layout: guides
key: 1.3
---

But wait, there is something weird going on in our tables now:

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
|  4 | 555  | 444-4444 | Home        |      4 |
|  5 | 555  | 555-5555 | Cell        |      5 |
|  6 | 555  | 777-7777 | NULL        |      6 |
+----+------+----------+-------------+--------+
```

Do we have a user with id `6` in our table?

```sql
SELECT * FROM demo_users WHERE userid=6;
```

```
Empty set (0.01 sec)
```

Why did our database let us add an entry for a non-existent user? For now, lets get rid of the invalid data:

```sql
DELETE FROM demo_phones WHERE id=6;
```

```sql
Query OK, 1 row affected (0.06 sec)
```

So, if we want MySQL to enforce relationships between our table we need to make sure we are using a database engine that enforces foreign key constraints, like `InnoDB`. Let’s fix our tables so this works, starting with demo_users. To see the details about this table, use the following command:

```sql
SHOW CREATE TABLE demo_users;
```

You should see something similar to:

```sql
+------------+-------------------------------+
| Table      | Create Table                  |
+------------+-------------------------------+
| demo_users | CREATE TABLE `demo_users` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(15) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8         |
+------------+-------------------------------+
```

If it isn’t using InnoDB as the ENGINE, then run the following commands:

```sql
ALTER TABLE demo_users ENGINE=InnoDB;
ALTER TABLE demo_phones ENGINE=InnoDB;
```

Next, we have to add in the `FOREIGN KEY` constraint:

```sql
ALTER TABLE demo_phones
ADD FOREIGN KEY (userid)
REFERENCES demo_users(userid);
```

Now, when we try to add a row with a non existent user, we get an error. Try it out:

```sql
INSERT INTO demo_phones
(number, userid)
VALUES ('777-7777', 6);
```

```sql
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`user104`.`demo_phones`, CONSTRAINT `demo_phones_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `demo_users` (`userid`))
```

That is the entire example! Now that we are done with it, you might want to do some cleanup of your database. To remove the tables, do:

```sql
DROP TABLE demo_phones, demo_users;
SHOW TABLES;
```

```sql
Empty set (0.00 sec)
```
