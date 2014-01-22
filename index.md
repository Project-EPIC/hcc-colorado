---
layout: page
title: Human Centered Computing
tagline: University of Colorado Boulder
---
Commiting this line now.

Human-Centered Computing has had a long history at the University of Colorado at Boulder (CU), beginning with Professors Peter Polson, Tom Landauer, Gerhard Fischer, Clayton Lewis, Skip Ellis and Walter Kintsch, among others. Today’s faculty continue this legacy, and can be found in academic homes across the university. Four of CU’s faculty have been elected to the CHI Academy including one SIGCHI Lifetime Achievement Award and one Social Impact Award.

The Computer Science Department houses several active CU faculty in Human-Centered Computing. We conduct research in social computing, health informatics, computer supported cooperative work, human-computer interaction (HCI), computer supported cooperative learning, graphical programming, digital libraries, digital divide, broadening CS participation, computer animation, game programming, universal design, web engineering, hypermedia, crisis informatics and more.

Our graduate students include National Science Foundation Graduate Fellows, and our faculty are NSF CAREER awardees, CHI Academy Fellows, and ACM Fellows. We welcome enthusiastic and motivated students to join our pioneering research programs.

{% include JB/setup %}

### Latest News
<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>