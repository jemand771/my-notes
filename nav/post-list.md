---
layout: page
title: Post List
---

This list is auto-generated and might not be useful if you're looking for anything specific.

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>
