---
title: 'SQL Demo: Selecting Data'
navbar: Guides
layout: guides
key: 2.2
---

<style>
table {
  width: auto !important;
}

.content figure {
  text-align: unset;
}
</style>

We will work up to the primary table we want. Lets start with something a little bit less complex first. When working on these, keep in mind there are many ways to write equivalent `SELECT` statements, so your solution may be different from the one given.

### Twitter Table

See if you can re-create the following table with a `SELECT` statement:

| name             | twitter          |
|------------------|------------------|
| Greg Benson      | @gregorydbenson  |
| David Brizan     | @davidguybrizan  |
| Sophie Engle     | @sjengle         |
| Alark Joshi      | @alark           |
| Matthew Malensek | @MatthewMalensek |
| Sami Rollins     | @samirollins     |
| David Wolber     | @wolberd         |
| Beste Yuksel     | @BesteFYuksel    |


<details>
<summary>See Answer.</summary>

{% highlight sql %}
SELECT
CONCAT(first, ' ', last) AS 'name',
CONCAT('@', twitterid) AS 'twitter'
FROM faculty_names
NATURAL JOIN faculty_twitter
ORDER BY faculty_names.last;
{% endhighlight %}
</details><br/>

### Courses Table

Next, lets see if we can create a list of courses and who teaches them. It is easier to start by just counting the number of people that teach each course:

| course | professors |
|--------|------------|
| CS 107 |          4 |
| CS 110 |          4 |
| CS 112 |          5 |
| CS 212 |          3 |
| CS 220 |          1 |
| CS 221 |          1 |
| CS 245 |          3 |
| CS 315 |          1 |
| CS 326 |          2 |
| CS 336 |          1 |
| CS 345 |          1 |
| CS 360 |          2 |
| CS 490 |          3 |

<details>
<summary>See Answer.</summary>

{% highlight sql %}
SELECT
course,
COUNT(usfid) AS 'professors'
FROM faculty_courses
NATURAL LEFT OUTER JOIN faculty_names
GROUP BY course
ORDER BY course, last;
{% endhighlight %}
</details><br/>

Now, we can move to the full table:

| course | professors                                                      |
|--------|-----------------------------------------------------------------|
| CS 107 | Jeffrey Johnson, Kristin Jones, David Wolber, Beste Yuksel      |
| CS 110 | Jeffrey Johnson, Alark Joshi, David Wolber, Beste Yuksel        |
| CS 112 | Alark Joshi, EJ Jung, Olga Karpenko, Sami Rollins, David Wolber |
| CS 212 | Sophie Engle, Olga Karpenko, Sami Rollins                       |
| CS 220 | Matthew Malensek                                                |
| CS 221 | Vahab Pournaghshband                                            |
| CS 245 | David Brizan, EJ Jung, Olga Karpenko                            |
| CS 315 | Greg Benson                                                     |
| CS 326 | Greg Benson, Matthew Malensek                                   |
| CS 336 | Vahab Pournaghshband                                            |
| CS 345 | Kristin Jones                                                   |
| CS 360 | Sophie Engle, Alark Joshi                                       |
| CS 490 | Jeffrey Johnson, Olga Karpenko, Beste Yuksel                    |


<details>
<summary>See Answer.</summary>

{% highlight sql %}
SELECT
course,
GROUP_CONCAT(
	CONCAT(first, ' ', last)
	ORDER BY last
	SEPARATOR ', '
	) AS 'professors'
FROM faculty_courses
NATURAL LEFT OUTER JOIN faculty_names
GROUP BY course
ORDER BY course, last;
{% endhighlight %}
</details><br/>

### Faculty Table

Next, we can try and combine everything together. As before, I suggest you first work on a query that just gives counts:

| name                 | email                | twitter | courses |
|----------------------|----------------------|---------|---------|
| Greg Benson          | benson@usfca.edu     |       2 |       2 |
| David Guy Brizan     | dgbrizan@usfca.edu   |       1 |       1 |
| Sophie Engle         | sjengle@usfca.edu    |       2 |       2 |
| Jeffrey Johnson      | jajohnson9@usfca.edu |       0 |       3 |
| Kristin Jones        | kjones12@usfca.edu   |       0 |       2 |
| Alark Joshi          | apjoshi@usfca.edu    |       3 |       3 |
| EJ Jung              | ejung2@usfca.edu     |       0 |       2 |
| Olga Karpenko        | okarpenko@usfca.edu  |       0 |       4 |
| Haden Hooyeon Lee    | hlee84@usfca.edu     |       0 |       0 |
| Matthew Malensek     | mmalensek@usfca.edu  |       2 |       2 |
| Vahab Pournaghshband | vpournaghs@usfca.edu |       0 |       2 |
| Sami Rollins         | snrollins@usfca.edu  |       2 |       2 |
| David Wolber         | wolberd@usfca.edu    |       3 |       3 |
| Beste Yuksel         | byuksel@usfca.edu    |       3 |       3 |

<details>
<summary>See Answer.</summary>

{% highlight sql %}
SELECT
CONCAT(first, ' ', IFNULL(CONCAT(middle, ' '), ''), last) AS 'name',
CONCAT(usfid, '@usfca.edu') AS 'email',
COUNT(twitterid) AS 'twitter',
COUNT(course) AS 'courses'
FROM faculty_names
NATURAL LEFT OUTER JOIN faculty_twitter
NATURAL LEFT OUTER JOIN faculty_courses
GROUP BY faculty_names.usfid
ORDER BY faculty_names.last;
{% endhighlight %}
</details><br/>

Now, we can work on creating the final version of our output:

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

<details>
<summary>See Answer.</summary>

{% highlight sql %}
SELECT
CONCAT(first, ' ', IFNULL(CONCAT(middle, ' '), ''), last) AS 'name',
CONCAT(usfid, '@usfca.edu') AS 'email',
IFNULL(CONCAT('@', twitterid), '') AS 'twitter',
GROUP_CONCAT(course ORDER BY course SEPARATOR ', ') AS 'courses'
FROM faculty_names
NATURAL LEFT OUTER JOIN faculty_twitter
NATURAL LEFT OUTER JOIN faculty_courses
GROUP BY faculty_names.usfid
ORDER BY faculty_names.last;
{% endhighlight %}
</details>
