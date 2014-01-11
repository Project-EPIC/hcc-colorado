---
layout: page
title : Current News
tagline: and Updates in HCC
group: navigation
---

<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>

    In the future, this will list a lot more, in fact, it will list all of the posts...