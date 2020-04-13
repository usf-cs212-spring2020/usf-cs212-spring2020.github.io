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

{% for week in site.data.schedule.weeks offset:11 limit:2 %}
{% include week.html week = week %}
{% endfor %}

## Google Calendar

Here is the combined calendar for this course, which includes the latest office hours schedule, upcoming deadlines, and more:

<iframe src="https://calendar.google.com/calendar/embed?height=600&amp;wkst=1&amp;bgcolor=%23ffffff&amp;ctz=America%2FLos_Angeles&amp;src=Y2xhc3Nyb29tMTE1NDQzMzU3NzE3MzEwODkwNTE4QGdyb3VwLmNhbGVuZGFyLmdvb2dsZS5jb20&amp;src=ZW4udXNhI2hvbGlkYXlAZ3JvdXAudi5jYWxlbmRhci5nb29nbGUuY29t&amp;color=%23005c63&amp;color=%231F753C&amp;title=USF%20CS212%20Spring%202020&amp;mode=WEEK" style="border-width:0; height: 600px;" width="100%" height="600" frameborder="0" scrolling="no"></iframe>
