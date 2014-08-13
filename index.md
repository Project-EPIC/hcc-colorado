---
layout: page
title: HCC
tagline: University of Colorado Boulder
js: homepage.js
---

<ul id="homepage-slider">
{% for image in site.data.hcc_photos.header %}
  <li>
    <img src="{{ image.url }}" title="{{image.title}}" description="{{image.description}}">
  </li>
{% endfor %}
</ul>


**Human-Centered Computing** has had a long history at the [University of Colorado at Boulder (CU)](http://www.colorado.edu), beginning with Professors Peter Polson, Tom Landauer, Gerhard Fischer, Clayton Lewis, Skip Ellis and Walter Kintsch, among others. Today’s faculty continue this legacy, and can be found in academic homes across the university. Four of CU’s faculty have been elected to the CHI Academy including one SIGCHI Lifetime Achievement Award and one Social Impact Award.

[The Computer Science Department](http://cs.colorado.edu) houses several active CU faculty in Human-Centered Computing. We conduct research in social computing, health informatics, computer supported cooperative work, human-computer interaction (HCI), computer supported cooperative learning, graphical programming, digital libraries, digital divide, broadening CS participation, computer animation, game programming, universal design, web engineering, hypermedia, crisis informatics and more.

Our graduate students include National Science Foundation Graduate Fellows, and our faculty are NSF CAREER awardees, CHI Academy Fellows, and ACM Fellows. We welcome enthusiastic and motivated students to join our pioneering research programs.

{% include JB/setup %}