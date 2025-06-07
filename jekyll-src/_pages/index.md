---
layout: page
title: Home
id: home
permalink: /
last_modified_at: 2025-06-03T15:48:00
---

# welcome, traveler.

Wondering why you're here? Maybe take a quick look at this [short note](/av-archive/short-note). 

As a rule of thumb, any notes I write in this corner ==will mostly be in WIP state==, which means I'll add or edit things whenever I want.

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
