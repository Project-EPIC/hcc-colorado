---
layout: news
title : Latest News
tagline: and Updates
#group: navigation
js: news.js
permalink: /news/
---


{% assign posts_collate = site.posts %}
<ul class="posts">
  {% for post in posts_collate %}
    <div class="post">
      <h3 class="post-title"><a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></h3>
      <h4 class="tagline">{{post.tagline}}</h4>
        {{ post.date | date_to_string }}
			  {% if post.author %} <span class="author">by {{ post.author }}</span>{% endif %}
			   <p class="post_content">{{ post.content }}</p>
    </div>
    <hr>
	{% endfor %}
</ul>
