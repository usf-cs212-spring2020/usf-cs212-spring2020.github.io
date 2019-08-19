---
title: Syllabus
navbar: Syllabus
---

{::nomarkdown}
<div class="columns hidden-print">
  <div class="column">
    <p>This syllabus is similar to a contract between students and the instructor, and as such it is quite long (with many sections required by the university). A few key points from this syllabus are highlighted here:</p>

    <ul>
      <li>Use <a href="{{ site.data.info.links.piazza.link }}">Piazza</a> for all course communication. (See: <a href="#{{ "Communication Policy" | slugify }}">Communication Policy</a>)

      <li>You should be stuck for an hour on a problem before seeking help, but you should definitely seek help if you have been stuck for an hour. (See: <a href="#{{ "Getting Help" | slugify }}">Getting Help</a>)

      <li>Do not cheat. This includes working too closely with your classmates or the CS tutors.
      (See: <a href="#{{ "Cheating Policy" | slugify }}">Cheating Policy</a>)

      <li>You must pass at least one exam to avoid an automatic F in this class.
      (See: <a href="#{{ "Pass Requirements" | slugify }}">Pass Requirements</a>)

      <li>You must make enough progress on projects to avoid an automatic F in this class.
      (See: <a href="#{{ "Pass Requirements" | slugify }}">Pass Requirements</a>)

      <li>Treat this class like a part-time job and plan to spend 10 to 20 hours coding per week outside of class.
      (See: <a href="#{{ "Credit Hour Policy" | slugify }}">Credit Hour Policy</a>)

    </ul>

    <p>Students are still required to read through the entire syllabus below.</p>

  </div>

  <div class="column is-narrow">
    <div class="box">
      <strong>Table of Contents</strong>

      <p>
        <a href="#{{ "Course Details" | slugify }}">Basic Information</a><br/>
        <a href="#{{ "Course Requirements" | slugify }}">Course Requirements</a><br/>
        <a href="#{{ "Course Policies" | slugify }}">Course Policies</a><br/>
        <a href="#{{ "University Policies" | slugify }}">University Policies</a>
      </p>
    </div>
  </div>
</div>
{:/}

{% include anchor.html level="h2" text="Course Details" class="is-uppercase" %}

This section covers basic information about the course, instructor, and teacher assistants.

<h3 class="title">{{ site.data.info.code }} {{ site.data.info.name }}</h3>
<h4 class="subtitle has-text-weight-light">{{ site.data.info.term }} &bull; {{ site.data.info.credits }} Credits</h4>

This course gives students experience with advanced programming topics, including inheritance and polymorphism, multithreaded programming, networking, database programming, and web development. Students will also learn techniques for designing, debugging, refactoring, and reviewing code.

<p>
  <a href="https://www.usfca.edu/catalog/course/212-software-development" class="button is-link">
    <span class="icon is-small">
      <i class="fas fa-book"></i>
    </span>
    <span>CS 212 Course Catalog</span>
  </a>
</p>

{% include anchor.html level="h3" text="Lecture Sections" %}

The class times for {{ site.data.info.code }} are:

<div class="columns">
  {% for element in site.data.syllabus.lectures %}
  <div class="column is-narrow">
    <strong>{{ element.label }}</strong><br/>
    {% include items.html items=element.items %}
  </div>
  {% endfor %}
</div>

Class time will consist of traditional lectures, live coding sessions, quizzes, discussions, guest speakers, and more.

{% include anchor.html level="h3" text="Lab Sessions" %}

Students should plan to attend one lab session per week. The lab sessions are:

<div class="columns">
  {% for element in site.data.syllabus.labs %}
  <div class="column is-narrow">
    <strong>{{ element.label }}</strong><br/>
    {% include items.html items=element.items %}
  </div>
  {% endfor %}
</div>

Lab sessions give students an additional opportunity to interact with teacher assistants and meet with the instructor for one-on-one code reviews.

{% include anchor.html level="h3" text="Instructor" %}

The course instructor and office hours will be as follows:

<div class="columns">
  {% for element in site.data.syllabus.instructor %}
  <div class="column is-narrow">
    <div class="box">
      <!-- nested columns for profile photo -->
      <div class="columns is-mobile is-variable is-1">
        {% if element.image %}
        <div class="column is-narrow">
          <div class="image is-64x64">
            <img class="is-rounded" src="{{ element.image | relative_url }}">
          </div>
        </div>
        {% endif %}

        <div class="column">
          <strong>{{ element.label }}</strong><br/>
          {% include items.html items=element.items %}
        </div>
      </div> <!-- end nested columns -->
    </div>
  </div>
  {% endfor %}
</div>

See the [Communication Policy](#{{ "Communication Policy" | slugify }}) for how to contact the instructor and teacher assistants.

{% include anchor.html level="h3" text="Teacher Assistants" %}

The teacher assistant(s) assigned to this course are:

<div class="columns">
  {% for element in site.data.syllabus.assistants %}
  <div class="column is-narrow">
    <div class="box">
      <!-- nested columns for profile photo -->
      <div class="columns is-mobile is-variable is-1">
        {% if element.image %}
        <div class="column is-narrow">
          <div class="image is-64x64">
            <img class="is-rounded" src="{{ element.image | relative_url }}">
          </div>
        </div>
        {% endif %}

        <div class="column">
          <strong>{{ element.label }}</strong><br/>
          {% include items.html items=element.items %}
        </div>
      </div> <!-- end nested columns -->
    </div>
  </div>
  {% endfor %}
</div>

See the [Communication Policy](#{{ "Communication Policy" | slugify }}) for how to contact the instructor and teacher assistants.

{% include anchor.html level="h3" text="Prerequisites" %}

Students must have completed [CS 112 Introduction to Computer Science II](https://www.usfca.edu/catalog/course/112-introduction-computer-science-ii) and [CS 245 Data Structures and Algorithms](https://www.usfca.edu/catalog/course/245-data-struct-algorithms) with grades of C or better before taking this class.

{% include anchor.html level="h3" text="Learning Outcomes" %}

At the end of this course, students should be able to:

  {% for outcome in site.data.syllabus.learning_outcomes -%}
  - {{ outcome }}
  {% endfor %}

Assessment of these outcomes will be done by a combination of quizzes, exams, homework, projects, and code review. See [Course Requirements](#{{ "Course Requirements" | slugify }}) below for details.

{% include anchor.html level="h3" text="Required Materials" %}

This course utilizes freely-available resources and software. Students will need to create a [free Github account](https://github.com/join) for this course. There are no required books.

{% include anchor.html level="h3" text="Important Dates" %}

The following are important dates and deadlines for the course. These dates are fixed (i.e. they should *not* change as the semester progresses).

<table class="table is-hoverable" style="width: auto;">
  <thead>
    <tr>
      <th>Date</th>
      <th>Description</th>
    </tr>
  </thead>

  <tbody>
    {% assign sorted_dates = site.data.syllabus.important_dates | sort: 'date' %}
    {% for element in sorted_dates %}
    <tr>
      <td>
        <tt>
          {{ element.date | date: '%a %m/%d' }}
          {% if element.stop %}
          &ndash;<br/>
          {{ element.stop | date: '%a %m/%d' }}
          {% endif %}
        </tt>
      </td>
      <td>
        {% if element.icon %}
        <i class="fa-fw {{ element.icon }}{% if element.type %} has-text-{{ element.type }}{% endif %}"></i>
        {% endif %}
        {% if element.link %}
        <a href="{{ element.link }}">
          {{ element.text }}
        </a>
        {% else %}
        <span>
          {{ element.text }}
        </span>
        {% endif %}

        {% if element.info %}
        <br/>
        <small class="has-text-grey">
          {{ element.info }}
        </small>
        {% endif %}
      </td>
    </tr>
    {% endfor %}
  </tbody>
</table>

See the [Schedule]({{ "/schedule.html" | relative_url }}) for the latest weekly schedule.

<hr>

{% include anchor.html level="h2" text="Course Requirements" class="is-uppercase" %}

This section covers how the learning outcomes for this course will be assessed. This course will be a hybrid flipped classroom, with an emphasis on mastery learning. The majority of the grade will be derived from projects and exams. See the following subsections for details.

{% include anchor.html level="h3" text="Pass Requirements" %}

To ensure students are meeting the [learning outcomes](#{{ "Learning Outcomes" | slugify }}) for this course, students must meet the following minimum requirements to receive a non-failing grade (D- or higher) in this course:

  - **Exam Pass Requirement:** Students must receive a C letter grade or higher on at least one exam (including retakes).

  - **Project Pass Requirement 1:** Students must pass project 1 functionality, project 1 code review, and project 2 functionality by the project cutoff 1 deadline.

  - **Project Pass Requirement 2:** Students must pass project 2 code review and project 3 functionality by the project cutoff 2 deadline.

**Failure to meet 1 or more of the following requirements will result in an automatic F letter grade for this course, regardless of what your current letter grade is in Canvas.**
{:.has-text-danger}

If students are concerned about not meeting one or more of these requirements by the withdraw deadline, they are encouraged to withdraw from the class to avoid the F letter grade on their transcripts. Note, however, that a W (withdraw) counts as an attempt and CS majors and minors have restrictions on how many times they may attempt CS courses.

Meeting the pass requirements does not guarantee a passing grade. See the [Grade Breakdown](#{{ "Grade Breakdown" | slugify }}) section below for how the final grade will be calculated.

{% include anchor.html level="h3" text="Grade Breakdown" %}

If the [pass requirements](#{{ "Pass Requirements" | slugify }}) are met, then the final grade will be calculated as follows:

<table class="table is-hoverable" style="width: auto;">
  <thead>
    <tr>
      <th>Category</th>
      <th>Percent</th>
    </tr>
  </thead>

  <tbody>
    {% for element in site.data.syllabus.grade_breakdown %}
    <tr>
      <td>
        <a href="{{ element.link }}">
          {{ element.text }}
        </a>
      </td>

      <td class="has-text-right">
        {{ element.value}}%
      </td>
    </tr>
    {% endfor %}

  </tbody>
</table>

Each of these categories are described more below.

{% include anchor.html level="h4" text="Participation" %}

Participation includes pass/fail assignments such as participating in surveys, discussions on Piazza, in-class exercises, attending labs, lab exercises, and participating in other on-campus or off-campus CS events. *Late submissions are not accepted for participation assignments.*{:.has-text-danger}

{% include anchor.html level="h4" text="Quizzes" %}

Quizzes are sometimes given unannounced at the start of class, but students will often be given an opportunity to retake those quizzes. Quizzes will be conducted on [Canvas]({{ site.data.info.links.canvas.link }}), and the answers will automatically be released after the quiz deadline. Because of this, *late submissions are not accepted for quizzes.*{:.has-text-danger}

{% include anchor.html level="h4" text="Exams" %}

There will be two exams. The exams are *not* comprehensive. Each exam will have a retake opportunity where students may earn back a small fraction of the points missed on the original attempt. See [Important Dates](#{{ "Important Dates" | slugify }}) for the exact exam and exam retake dates.

Instead of a final exam, students will have a final project graded during finals week. A signup sheet will be posted towards the end of the semester. If you have travel plans during finals week, please confirm your travel dates first with the instructor.

Students must receive a C letter grade or higher on at least one exam (including retakes). See the [Pass Requirements](#{{ "Pass Requirements" | slugify }}) for more.

{% include anchor.html level="h4" text="Homework" %}

Homework programming assignments are assigned on a semi-weekly basis, and usually due the following week. Students may work on these assignments during their lab session, allowing them to get immediate help from the teacher assistants.

Homework will receive a late deduction if submitted after the deadline as follows:

  - &ndash;10% deduction for homework submitted 15 minutes to 24 hours after the deadline
  - &ndash;20% deduction for homework submitted 24 hours to 48 hours after the deadline

*Homework submitted over 48 hours after the deadline will not be graded.*{:.has-text-danger} However, students may request extra credit opportunities on [Piazza]({{ site.data.info.links.piazza.link }}) The lowest homework grade will also be dropped at the end of the semester.

{% include anchor.html level="h4" text="Projects" %}

Programming projects place an emphasis on code quality&mdash;it is not enough to achieve correct results. Each project must pass several functionality tests and then undergo multiple rigorous code reviews checking for specific criteria, such as proper encapsulation and generalization, efficiency, and maintainability.

We use a **mastery learning** approach with projects: students must perfect the current project before moving on to the next project. The final project grade will depend on when and how many projects are completed.

Each project grade is split into two components: functionality (evaluated with automated software tests) and design (evaluated with one-on-one code reviews). The project functionality must be passed before the code review may be passed, students must pass code review for each project sequentially, and may only have one review appointment per week.

There are only 2 hard deadlines for projects: the project cutoff 1 deadline before the withdraw deadline, and the project cutoff 2 deadline at the end of the semester. See the [Pass Requirements](#{{ "Pass Requirements" | slugify }}) for details.

{% include anchor.html level="h3" text="Grading Scales" %}

The following is the grading scale mapping percentage to letter grade and GPA for this course. Please keep in mind that the [Pass Requirements](#{{ "Pass Requirements" | slugify }}) must be met to avoid an automatic F letter grade.

<table class="table is-hoverable" style="width: auto;">
  <thead>
    <tr>
      <th colspan="3" class="has-text-centered">Letter</th>
      <th>GPA</th>
    </tr>
  </thead>
  <tbody>
    {% assign prior = 100 %}
    {% for element in site.data.syllabus.grade_scale %}
    <tr {% if element.points < 2.0 %}class="has-text-danger"{% endif %}>
      <td class="has-text-right">{{ element.cutoff }}% &leq;</td>
      <td>{{ element.letter }}</td>
      <td>&lt; {{ prior }}%</td>
      <td class="has-text-centered">{{ element.points }}</td>
      {% assign prior = element.cutoff %}
    </tr>
    {% endfor %}
  </tbody>
</table>

Non-passing grades are <span class="has-text-danger">highlighted in red</span>. See the [Undergraduate Regulations](https://www.usfca.edu/catalog/regulations/student) for more about letter grades and GPA.

<hr>

{% include anchor.html level="h2" text="Course Policies" class="is-uppercase" %}

This section includes miscellaneous policies specific to this course, including communication, attendance, credit hours, cheating, and more. These policies are *in addition* to the standard USF policies included later.

{% include anchor.html level="h3" text="Communication Policy" %}

Most course-related communication will be handled using [Piazza]({{ site.data.info.links.piazza.link }})&mdash;a FERPA-compliant Q&amp;A platform that supports public, anonymous, and private posts. When making posts on Piazza, please keep the following in mind:

  - Make a **public post** when appropriate. This lets us answer questions once for all students. You can **post anonymously** if you are uncomfortable with attaching your name to a post or a response. When posting anonymously, your classmates will not be able to see your identity, but instructors will still be able to see your name (necessary to give you credit for participation and ensure everyone is following the code of conduct).

  - Do not post code on Piazza. If you have a question regarding your specific code, please commit and push your code to your GitHub repository and [post a link](https://help.github.com/en/articles/creating-a-permanent-link-to-a-code-snippet). That ensures only those with access to your repository (instructor and teacher assistants) will see your code.

  - Make posts regarding grades or specific solutions **private** to the instructor and teacher assistants. When making private posts, they should always be marked as visible by both the instructor and teacher assistants so there is no confusion.

In addition to [Piazza]({{ site.data.info.links.piazza.link }}), the instructor will also use [Canvas]({{ site.data.info.links.canvas.link }}) to notify students of missing assignments or warn about low grades. Both the instructor and teacher assistants will use [Github]({{ site.data.info.links.github.link }}) for project-related communication. You may also ask for help in-person during office hours, lectures, or lab sessions. These are the *only* officially approved channels of communication for contacting the instructor or teacher assistants.

**Under no circumstances should you reach out to the teacher assistants via any unapproved communication channel.**{:.has-text-danger .has-text-weight-normal} Instructors and teacher assistants must provide all students equal opportunity for course-related help. Using unapproved communication channels creates an unfair advantage over other students and will be treated as a violation of the [Student Conduct Code](https://myusf.usfca.edu/fogcutter).

*For example, it is appropriate to use text messages to invite a teacher assistant to lunch as friends. It is NOT appropriate to start asking that teacher assistant questions about the course during that lunch! It is also NOT appropriate to directly text message course-related questions to that teacher assistant, even if you are friends and were able to get help from them before. You can, however, ask that teacher assistant for help during official office hours.*
{:.has-text-grey .is-size-7}

{% include anchor.html level="h3" text="Announcements Policy" %}

All announcements will be posted on [Piazza]({{ site.data.info.links.piazza.link }}). All students are expected to enroll in Piazza and monitor the announcements in a timely manner. This includes any changes to the lecture, lab, office hour, or deadline schedule.

{% include anchor.html level="h3" text="Attendance Policy" %}

Students are expected to be on-time to all classes to minimize disruption. Attendance is mandatory for all exams, quizzes, guest speakers, and in-class exercises. Exam dates will be posted on the course schedule.

Attendance is mandatory for all one-on-one code review appointments. Students must be on-time to these appointments. If a student arrives more than 5 minutes late, the appointment will be canceled. *Students risk a grade penalty for repeated canceled or missed appointments.*{:.has-text-danger}

{% include anchor.html level="h3" text="Credit Hour Policy" %}

All courses must comply with the [Credit Hour Policy](https://myusf.usfca.edu/sites/default/files/usf_credit_hour_policy_0.pdf), which states:

> One unit of credit in lecture, seminar, and discussion work should approximate one hour of direct faculty instruction and a minimum of two hours of out-of-class student work per week through one 15-week semester.

As this is a 4 credit course, students must spend a **minimum** of 8 hours of out-of-class work per week to earn a passing (D&ndash; or higher) letter grade. To earn a C or higher letter grade (as required for the CS major), students should expect to spend closer to **10 to 20 hours per week** on projects, homework, and participation assignments.

*Think of this class like a part-time job. If you do not put in the time, you will not make it to the final project. Many students do not pass due to poor time management!*{:.has-text-grey .is-size-7}

{% include anchor.html level="h3" text="Cheating Policy" %}

All students are expected to know and adhere to the University's [Honor Code](https://myusf.usfca.edu/academic-integrity/). In short, students must never represent another person's work as their own. Examples of honor code violations include (but are not limited to):

  - Copying and pasting code (especially without attribution) from the web
  - Copying from another student (past or current)
  - Having anyone other than yourself complete your work (including tutors)
  - Working too closely with others such that your code no longer represents an individual contribution
  - Sharing your solutions with others (either directly or indirectly)

Keep in mind that unauthorized collaboration or discussion that results in the same or very similar code indicates that you have not placed enough independent work into your submission and is a violation of the honor code, regardless of whether you directly copied any code!

**Flagrant or repeat violations of the honor code will result in an F in the course, [a report to the Academic Integrity Committee (AIC)](https://myusf.usfca.edu/academic-integrity/review-process), and a report to the Dean.**{:.has-text-danger} At the discretion of the instructor, a less severe penalty may be imposed for minor or first offenses. This is at the sole discretion of the instructor and any violation may result in an F in the course.

{% include anchor.html level="h3" text="Policy Exceptions" %}

Exceptions to most course policies are made only in the case of verifiable exceptional circumstances. This includes medical emergencies, mental health and well-being crises, or family-related emergencies. Extensions must be arranged prior to the original deadline unless in case of extreme emergency (such as an emergency room visit).

*Have travel plans for a family event (such as a wedding or graduation) or academic/professional conference (such as Grace Hopper or an internship interview)? Contact the instructor ahead of time to make arrangements. Keep in mind you will likely be asked to submit assignments early versus getting an extension. Please note exceptions will not be made for other events (such as concerts, comic cons, and so on).*
{:.has-text-grey .is-size-7}


{% include anchor.html level="h3" text="Getting Help" %}

A good rule of thumb is to seek help after you have been stuck for an hour. There are many ways to get help with this class:

  - Ask questions on [Piazza]({{ site.data.info.links.piazza.link }}). Most questions receive a response in under 24 hours (sometimes within 30 minutes). You may figure out your problem before you get a response, but then you can delete your question or mark it as solved.

  - Ask questions during the instructor office hours. Office hours are first-come first-serve and there is lots of seating (including power outlets for charging).

  - Ask the teacher assistants for help during lab sessions or their office hours. All of the teacher assistants for this course took CS 212 previously with Professor Engle.

  - Ask a tutor for help at the [CS Tutoring Center](http://tutoringcenter.cs.usfca.edu/). Many of the tutors took CS 212 previously (and many of them also took it with Professor Engle). However, even tutors that did not take CS 212 may be able to help. Sometimes, it just helps to talk about your code with someone (see [rubber duck debugging](https://en.wikipedia.org/wiki/Rubber_duck_debugging)).

  - Ask your classmates for high-level help or hints, but be careful! To avoid violating the cheating policy and honor code, make sure you never share code with your classmates or look at the code of your classmates.

If you are feeling generally overwhelmed (including emotionally) and need advice, do not hesitate to reach out to the instructor. Since office hours can be crowded at times, you are welcome to schedule an appointment with the instructor via [Piazza]({{ site.data.info.links.piazza.link }}) to chat in private.

<hr>

{% include anchor.html level="h2" text="University Policies" class="is-uppercase" %}

This section includes the standard abridged University policies and legal declarations that apply to all courses. Visit the linked websites for more details.

{% include anchor.html level="h3" text="Students with Disabilities" %}

If you are a student with a disability or disabling condition, or if you think you may have a disability, please contact [USF Student Disability Services (SDS)](https://myusf.usfca.edu/sds) for information about accommodations.

{% include anchor.html level="h3" text="Behavioral Expectations" %}

All students are expected to behave in accordance with the [Student Conduct Code](https://myusf.usfca.edu/fogcutter) and other University policies.

{% include anchor.html level="h3" text="Academic Integrity" %}

USF upholds the standards of honesty and integrity from all members of the academic community. All students are expected to know and adhere to the University's [Honor Code](https://myusf.usfca.edu/academic-integrity/).

{% include anchor.html level="h3" text="Counseling and Psychological Services (CAPS)" %}

CAPS provides confidential, free [counseling](https://myusf.usfca.edu/student-health-safety/caps) to student members of our community.

{% include anchor.html level="h3" text="Confidentiality, Mandatory Reporting, and Sexual Assault" %}

For information and resources regarding sexual misconduct or assault visit the [Title IX](https://myusf.usfca.edu/TITLE-IX) coordinator or USF's [Callisto website](http://usfca.callistocampus.org/).
