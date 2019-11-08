---
title: 'SQL Demo: Creating Tables'
navbar: Guides
layout: guides
key: 2.1
---

<style>
table {
  width: auto !important;
}

.content figure {
  text-align: unset;
}
</style>

First, we should figure out what tables we need. In the table above, note the following:

  - Every professor has a first and last name, but not all professors have a middle name.
  - Every professor has a unique email address based off their USF username. This means we can use this username as a primary key for each professor.
  - Only some professors have Twitter accounts. Each Twitter account is unique.
  - Each professor teaches a different number of undergraduate courses.

We do not want to overcomplicate things by creating too many tables, but we also do not want a lot of wasted space in each table.

One way we can do this is by creating three tables: one for professors, one mapping professors to Twitter accounts, and one mapping professors to the recent undergraduate courses they have taught. We will need to setup some relationships for these tables, namely that the Twitter and courses tables refer to a professor that already exists in the professors table.

### Create Professor Table

We will create a `contact_names` table with 1 row per professor that stores:

  - The USF username (named `usfid`), which must be unique, may not be null, and can be used as the primary key for this table and the foreign key for other tables.

  - The `first`, `middle`, and `last` names in separate columns. Only the `middle` name may be null. None of these columns need to be unique. (For example, more than one person has the first name `David` in the department.)

**Exercise:** See if you can create a `contact_names` table that will match the following:

| Field  | Type        | Null | Key | Default | Extra |
|--------|-------------|------|-----|---------|-------|
| usfid  | char(10)    | NO   | PRI | NULL    |       |
| first  | varchar(20) | NO   |     | NULL    |       |
| middle | varchar(20) | YES  |     | NULL    |       |
| last   | varchar(20) | NO   |     | NULL    |       |

<details>
<summary>See Answer.</summary>

{% highlight sql %}
CREATE TABLE contact_names (
usfid   CHAR(10)    NOT NULL PRIMARY KEY,
first   VARCHAR(20) NOT NULL,
middle  VARCHAR(20),
last    VARCHAR(20) NOT NULL
);
{% endhighlight %}

</details><br/>

Once you have the table created, you can insert values as follows:

```sql
INSERT INTO contact_names
(usfid, first, middle, last)
VALUES
('apjoshi',         'Alark',   NULL,      'Joshi'   ),
('benson',          'Greg',    NULL,      'Benson'  ),
('byuksel',         'Beste',   NULL,      'Yuksel'  ),
('dgbrizan',        'David',   'Guy',     'Brizan'  ),
('ejung2',          'EJ',      NULL,      'Jung'    ),
('hlee84',          'Haden',   'Hooyeon', 'Lee'     ),
('jajohnson9',      'Jeffrey', NULL,      'Johnson' ),
('kjones12',        'Kristin', NULL,      'Jones'   ),
('mmalensek',       'Matthew', NULL,      'Malensek'),
('okarpenko',       'Olga',    NULL,      'Karpenko'),
('sjengle',         'Sophie',  NULL,      'Engle'   ),
('snrollins',       'Sami',    NULL,      'Rollins' ),
('vpournaghshband', 'Vahab',   NULL,      'Pournaghshband'),
('wolberd',         'David',   NULL,      'Wolber'  );
```

### Create the Twitter Table

We will create a `contact_twitter` table that tracks Twitter accounts for professors that stores:

  - The Twitter account (named `twitterid`) which must not be null, must be unique, and may be used as the primary key for this table.

  - The ID for the professor this Twitter account belongs to, which must not be null. This should reference the `usfid` primary key in the `contact_names` table.

**Exercise:** See if you can create a `contact_twitter` table that will match the following:

| Field     | Type     | Null | Key | Default | Extra |
|-----------|----------|------|-----|---------|-------|
| twitterid | char(15) | NO   | PRI | NULL    |       |
| usfid     | char(10) | NO   | MUL | NULL    |       |

<details>
<summary>See Answer.</summary>

{% highlight sql %}
CREATE TABLE contact_twitter (
twitterid   CHAR(15) NOT NULL PRIMARY KEY,
usfid       CHAR(10) NOT NULL,
FOREIGN KEY (usfid)
REFERENCES  contact_names (usfid)
);
{% endhighlight %}

</details><br/>

Once you have the table created, you can insert values as follows:

```sql
INSERT INTO contact_twitter
(usfid, twitterid)
VALUES
('benson',    'gregorydbenson'),
('mmalensek', 'MatthewMalensek'),
('sjengle',   'sjengle'),
('apjoshi',   'alark'),
('snrollins', 'samirollins'),
('byuksel',   'BesteFYuksel'),
('dgbrizan',  'davidguybrizan'),
('wolberd',   'wolberd');
```

### Create the Courses Table

We will create a `contact_courses` table that tracks the undergraduate courses that professors have taught recently. Since courses will not be unique in the same way as Twitter accounts or USF usernames, we need a separate primary key:

  - The course ID (named `courseid`) which must not be null, must be unique, and is an auto-incremented primary key.

  - The ID for the professor that taught this course, which must not be null. This should reference the `usfid` primary key in the `contact_names` table.

  - The course number (named `course`) to identify the course taught by this professor (e.g. `CS 212`).

**Exercise:** See if you can create a `contact_courses` table that will match the following:

<details>
<summary>See Answer.</summary>

{% highlight sql %}
CREATE TABLE contact_courses (
courseid INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
usfid    CHAR(10) NOT NULL,
course   CHAR(10) NOT NULL,
FOREIGN KEY (usfid)
REFERENCES  contact_names (usfid)
);
{% endhighlight %}

</details><br/>

Once you have the table created, you can insert values as follows:

```sql
INSERT INTO contact_courses
(usfid, course)
VALUES
('apjoshi',   'CS 360'),
('apjoshi',   'CS 112'),
('apjoshi',   'CS 110'),
('benson',    'CS 326'),
('benson',    'CS 315'),
('byuksel',   'CS 490'),
('byuksel',   'CS 110'),
('byuksel',   'CS 107'),
('dgbrizan',  'CS 245'),
('ejung2',    'CS 245'),
('ejung2',    'CS 112'),
('jajohnson9', 'CS 107'),
('jajohnson9', 'CS 110'),
('jajohnson9', 'CS 490'),
('kjones12',  'CS 107'),
('kjones12',  'CS 345'),
('mmalensek', 'CS 220'),
('mmalensek', 'CS 326'),
('okarpenko', 'CS 112'),
('okarpenko', 'CS 212'),
('okarpenko', 'CS 245'),
('okarpenko', 'CS 490'),
('sjengle',   'CS 212'),
('sjengle',   'CS 360'),
('snrollins', 'CS 212'),
('snrollins', 'CS 112'),
('wolberd',   'CS 107'),
('wolberd',   'CS 110'),
('wolberd',   'CS 112'),
('vpournaghshband', 'CS 336'),
('vpournaghshband', 'CS 221');
```


<a href="sql-demo-selecting.html" class="button is-primary"><span>Next: Selecting Data</span>&nbsp;<i class="fas fa-arrow-alt-right"></i></a>
