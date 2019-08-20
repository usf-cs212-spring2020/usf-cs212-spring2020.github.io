---
title:  Welcome
navbar: Home
icon:   fas fa-home
---

Welcome to <strong class="has-text-usf-green">{{ site.data.info.code }} {{ site.data.info.name }}</strong> for <strong class="has-text-usf-green">{{ site.data.info.term }}</strong>. {{ site.data.info.blurb }}

{% for item in site.data.info.pages -%}
Visit the [{{ item.name }}]({{ item.link | relative_url }}) for {{ item.info }}.
{% endfor -%}
{% for values in site.data.info.links -%}
{% assign label = values[0] -%}
{% assign item = site.data.info.links[label] -%}
Visit the [{{ item.name }}]({{ item.link }}) for {{ item.info }}.
{% endfor %}

## Upcoming Schedule

Here is the upcoming course schedule, which includes links to lecture material, assigned quizzes and homework, and more:

<style>
ul.icons {
  list-style-type: none;
  margin-left: 1.5em;
  margin-top: 0em;
}

ul.icons > li {
  position: relative;
}

ul.icons > li > i {
  width: 1.25em;
  left: -1.5em;
  position: absolute;
  text-align: center;
  line-height: inherit;
}

.content li.bump {
  margin-top: 0.8rem;
}
</style>

{%- assign today_date = 'now' | date: '%Y-%m-%d' -%}
{%- assign today = today_date | date: '%s'| abs -%}
{%- assign beg_date = site.data.syllabus.beg_date | date: '%s' | abs -%}
{%- assign beg_index = 0 -%}

{%- if today > beg_date -%}
  {%- assign end_index = site.data.schedule.weeks | size | minus: 2 -%}
  {%- for week in site.data.schedule.weeks limit:end_index -%}
    {%- assign first_day = week.days | first -%}
    {%- if first_day.date -%}
      {%- assign as_seconds = first_day.date | date: '%s' | abs -%}
      {%- if as_seconds > today -%}
        {%- break -%}
      {%- endif -%}
    {%- endif -%}
    {%- assign beg_index = forloop.index0 -%}
  {%- endfor -%}
{%- endif -%}

{% for week in site.data.schedule.weeks offset:beg_index limit:2 %}
{% include week.html week = week %}
{% endfor %}

## Google Calendar

Here is the combined calendar for this course, which includes the latest office hours schedule, upcoming deadlines, and more:

<iframe src="https://calendar.google.com/calendar/embed?height=600&amp;wkst=1&amp;bgcolor=%23ffffff&amp;ctz=America%2FLos_Angeles&amp;src=Y3MudXNmY2EuZWR1XzNnaDZiMmkybDM0cnNoNm1iY29zOHFyYXBnQGdyb3VwLmNhbGVuZGFyLmdvb2dsZS5jb20&amp;src=Y3MudXNmY2EuZWR1X200cGZ1Z2l2ZXM5ODI0c3ZtcWk5NHZ1Y2hrQGdyb3VwLmNhbGVuZGFyLmdvb2dsZS5jb20&amp;src=c3NnNGRvcXRpb2RmcWVlZW5pYjBnaDZucWhxaXJoNXNAaW1wb3J0LmNhbGVuZGFyLmdvb2dsZS5jb20&amp;color=%23B39DDB&amp;color=%239E69AF&amp;color=%238E24AA&amp;title=CS%20212%20Fall%202019&amp;showPrint=0&amp;showCalendars=0&amp;showNav=1&amp;mode=WEEK" style="border-width:0; height: 600px;" width="100%" height="600" frameborder="0" scrolling="no"></iframe>
