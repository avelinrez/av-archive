---
layout: page
title: Home
id: home
permalink: /
last_modified_at: 2025-06-03T15:48:00
---

# welcome, traveler.

Wondering why you're here? Maybe take a quick look at <span style="font-weight: bold">[short note](/av-archive/short-note)</span> first ;)

### recently updated notes.

<ul>
  {% assign recent_notes = site.notes | sort: "last_modified_at" | reverse %}
{% for note in recent_notes limit: 5 %}
  <li>
    {{ note.last_modified_at | date: "%Y-%m-%d" }} — 
    <a class="internal-link" href="{{ site.baseurl }}{{ note.url }}">{{ note.title }}</a>
  </li>
{% endfor %}
</ul>

<style>
  .wrapper {
    max-width: 46em;
  }
</style>
