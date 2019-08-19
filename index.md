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

*Pending*

## Google Calendar

Here is the combined calendar for this course, which includes the latest office hours schedule, upcoming deadlines, and more:

*Pending*
