---
layout: page
title : Courses
group: navigation
scroller: 
  Undergraduate : undergrad
  Graduate : graduate
js: courses.js
---
<ul id="courses-slider">
  <li>Some information about our Courses</li>
  <li>Some more information about our Courses</li>
</ul>

<a class="anchor" name="undergrad"> </a>

###Undergraduate Courses
<ul class="undergraduate-course course-list">
{% assign this_course = 1 %}
{% for course in site.data.undergraduate %}
  <li>
	<a class="course-link" rel="underg-courses" href="#ug-course-{{this_course}}">
	<div class="course-box">
  		<h4 style="display:inline">{{ course.number }} </h4> <h4 style="display:inline" class="course-name"> {{course.name}}</h4>
  	</div>
  	</a>
  	<div id="ug-course-{{this_course}}" class="course-box-expand">
  		<h3>{{ course.number }} </h3><h3 >{{course.name}}</h3>
  		<p>{{course.description}}</p>
  	</div>
  </li>
  {% assign this_course = this_course | plus: 1 %}
{% endfor %}
</ul>



<a class="anchor" name="graduate"> </a>
###Graduate Courses
<ul class="graduate-course course-list">
{% assign this_course = 1 %}
{% for course in site.data.graduate %}
  <li>
	<a class="course-link" rel="grad-courses" href="#grad-course-{{this_course}}">
	<div class="course-box">
  		<h4 style="display:inline">{{ course.number }}</h4><h4 style="display:inline" class="course-name"> {{course.name}}</h4>
  	</div>
  	</a>
  	<div id="grad-course-{{this_course}}" class="course-box-expand">
  		<h3>{{ course.number }}</h3> <h3>{{course.name}}</h3>
  		<p>{{course.description}}</p>
  	</div>
  </li>
  {% assign this_course = this_course | plus: 1 %}
{% endfor %}
</ul>