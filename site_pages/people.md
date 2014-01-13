---
layout: page
title : People
tagline: Our Faculty, PostDocs and Students
group: navigation
scroller:
  Faculty: faculty
  Post Docs: postdocs
  Current Students: students
  Alumni: alumni
---

<a class="anchor" name="faculty">&nbsp;</a>
### Faculty

<ul class="faculty-list">
{% for person in site.data.faculty %}
  <li><a href="{{person.url}}"><h3>{{ person.name }}</h3></a>

  {% if person.interests %}
    <h5 style="display:inline">Interests:</h5> {{person.interests}}
    <br />
  {% endif %}
  {% if person.lab.name %}
    <h5 style="display:inline">Lab: </h5> 
    {% if person.lab.url %}
      <a href="{{person.lab.url}}">
    {% endif %}
    {{person.lab.name}}
    {% if person.lab.url %}
      </a>
    {% endif %}
  {% endif %}
  </li>
{% endfor %}
</ul>


<a class="anchor" name="postdocs">&nbsp;</a>
### Post Docs/Researchers

<a class="anchor" name="students">&nbsp;</a>
### Faculty

<ul class="student-list">
{% for person in site.data.students %}
  <li><a href="{{person.url}}"><h3>{{ person.name }}</h3></a>

  {% if person.interests %}
    <h5 style="display:inline">Interests:</h5> {{person.interests}}
    <br />
  {% endif %}
  {% if person.lab.name %}
    <h5 style="display:inline">Lab: </h5> 
    {% if person.lab.url %}
      <a href="{{person.lab.url}}">
    {% endif %}
    {{person.lab.name}}
    {% if person.lab.url %}
      </a>
    {% endif %}
  {% endif %}
  </li>
{% endfor %}
</ul>


<a class="anchor" name="alumni">&nbsp;</a>
### Alumni