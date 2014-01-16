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
js: people.js
---

<a class="anchor" name="faculty"> </a>
### Faculty

<ul id="faculty-slider">
  <li>Some information about our faculty</li>
  <li>Some more information about our faculty</li>
</ul>

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


<a class="anchor" name="postdocs"> </a>
### Post Docs/Researchers
<ul class="faculty-list">
{% for person in site.data.researchers %}
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

<a class="anchor" name="students"> </a>
### Students

<ul class="student-list">
{% assign this_person = 1 %}
{% for person in site.data.students %}
  <li>
    <a rel="student-fancybox-link" href="#student-{{this_person}}">
      <div class="student-box">
        <img src="{{person.picture}}" />
        <h4>{{ person.name }}</h4>
      </div>
    </a>
    
    <div id="student-{{this_person}}" class="student-box-expand">
      <img src="{{person.picture}}" />
      <h4>{{ person.name }}</h4>
      <div id="student-info">
        {% if person.interests %}
          <h5 style="display:inline">Interests:</h5> {{person.interests}}
          <br />
        {% endif %}
        {% if person.lab %}
          <h5 style="display:inline">Lab: </h5> 
            {% if person.laburl %} <a href="{{person.lab.url}}">{% endif %}
            {{person.lab}}
            {% if person.laburl %} </a> {% endif %}
        {% endif %}
        {% if person.goals %}
          <br />
          <h5 style="display:inline">Research Goals:</h5> {{person.goals}}
          <br />
        {% endif %}
      </div>
      <a href="{{person.url}}" target="_blank"><h6>Personal URL</h6></a>
    </div>
  </li>
  {% assign this_person = this_person | plus: 1 %}
{% endfor %}
</ul>

<a class="anchor" name="alumni"> </a>
### Alumni
<ul class="student-list">
{% assign this_person = 1 %}
{% for person in site.data.alumni %}
  <li>
    <a class="student-fancybox-link" href="#student-{{this_person}}">
      <div class="student-box">
        <img src="{{person.picture}}" />
        <h4>{{ person.name }}</h4>
        <a href="{{person.url}}" target="_blank"><h6>Personal URL</h6></a>
      </div>
    </a>
    
    <div id="student-{{this_person}}" class="student-box-expand">
      <img src="{{person.picture}}" />
      <h4>{{ person.name }}</h4>
      {% if person.interests %}
        <h5 style="display:inline">Interests:</h5> {{person.interests}}
        <br />
      {% endif %}
      {% if person.lab %}
        <h5 style="display:inline">Lab: </h5> 
          {% if person.laburl %} <a href="{{person.lab.url}}">{% endif %}
          {{person.lab}}
          {% if person.laburl %} </a> {% endif %}
      {% endif %}
      <a href="{{person.url}}" target="_blank"><h6>Personal URL</h6></a>
    </div>
  </li>
  {% assign this_person = this_person | plus: 1 %}
{% endfor %}
</ul>