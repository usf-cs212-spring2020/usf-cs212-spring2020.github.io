---
title: Schedule
navbar: Schedule
---

The following is the current weekly schedule. This schedule is subject to change and will be frequently updated throughout the semester. The latest deadlines may also be found on [Canvas]({{ site.data.info.links.canvas.link }}).

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

<!-- quick navigation -->
<div class="buttons has-addons is-centered">
  <a class="button is-small is-outlined" disabled>
    Weeks:
  </a>

  {% for week in site.data.schedule.weeks %}

  <a class="button is-small is-link is-outlined" href="#week-{{ week.week }}{{ week.text | slugify }}">
    {{ week.week }}{{ week.text }}
  </a>
  {%- endfor %}
</div>

<!-- schedule -->
{% for week in site.data.schedule.weeks %}
{% include week.html week = week %}
{% endfor %}

<!-- icon legend -->
<div class="buttons is-centered">
  {%- for icon in site.data.schedule.icons %}
  <span class="button is-small is-static">
    <i class="{{ icon[1].class }}"></i>&nbsp;{{ icon[1].label }}
  </span>
  {%- endfor %}
</div>
