---
layout: page
title : People
tagline: Our Faculty, PostDocs, Researchers, and Students
group: navigation
permalink: /people/
scroller:
  Faculty: faculty
 #Post Docs: postdocs
  Current Students: students
  Recent Alumni: alumni
js: people.js
css: people.css
---
<a class="anchor" name="faculty"> </a>

### Faculty

<ul class="faculty list">
{% assign this_person = 1 %}
{% for person in site.data.faculty %}
	<li>
		<a rel="faculty-fancy-box-link" href="#person-faculty-{{this_person}}">
		<div class="faculty box">
			{% if person.picture %}
				<img src="{{site.JB.BASE_PATH}}{{person.picture}}" height="150" width="105"/>
			{% endif %}
			<h3>{{ person.name }}</h3>
		</div>
		</a>

		<!--This is the pop-up box-->
		<div id="person-faculty-{{this_person}}" class="faculty info-expand">
			<div class="faculty info">
				<div class="profile-image">
					<img src="{{site.JB.BASE_PATH}}{{person.picture}}" />
				</div>
				<div class="faculty name-box">
					<h3>{{person.name}}</h3>
					<p>{{person.affiliation}}</p>
					{% if person.interests %}
						<h5>Interests</h5>
						<p>{{person.interests}}</p>
					{% endif %}
				</div>
        
        <div class="faculty teaser">
				{% if person.teaser %}	
          <h5>Research Area</h5>
					<p>{{person.teaser}}</p>
				{% endif %}
        </div>
				{% if person.url %}
					<center><a href="{{person.url}}" target="_blank">Personal Website</a></center>
				{% endif %}
			</div>
		</div>
	</li>
	{% assign this_person = this_person | plus: 1 %}
{% endfor %}
</ul>


<!--                   THIS IS THE STUDENT SECTION                  -->
<a class="anchor" name="students"> </a>

### Students

<ul class="student list">
{% assign this_person = 1 %}
{% for student in site.data.students %}
  <li>
    <a rel="student-fancy-box-link" href="#person-student-{{this_person}}">
    <div class="student box">
      {% if student.picture %}
        <img src="{{site.JB.BASE_PATH}}{{student.picture}}" height="150" width="105"/>
      {% else %}
        <img src="http://upload.wikimedia.org/wikipedia/commons/5/59/Empty.png" height="150" width="105"/>
      {% endif %}
      <h4>{{ student.name }}</h4>
    </div>
    </a>

    <!--This is the pop-up box-->
    <div id="person-student-{{this_person}}" class="student info-expand">
      <div class="student info">
        <div class="profile-image">
          <img src="{{site.JB.BASE_PATH}}{{student.picture}}" />
        </div>
        <div class="student name-box">
          <h3>{{student.name}}</h3>
          <p>{{student.affiliation}}</p>
          {% if student.interests %}
            <h5>Interests</h5>
            <p class="interests">{{student.interests}}</p>
          {% endif %}

          {% if student.advisor %}
            <h5>Advisor</h5>
            <p>{{student.advisor}}</p>
          {% endif %}

        </div>
        <div class="student goals">
        {% if student.goals %}
          <h5>Research Goals</h5>
          <p>{{student.goals}}</p>
        {% endif %}
        </div>
        {% if student.url %}
          <center><a href="{{student.url}}" target="_blank">Personal Website</a></center>
        {% endif %}
      </div>
    </div>
  </li>
  {% assign this_person = this_person | plus: 1 %}
{% endfor %}
</ul>





<!--                   THIS IS THE ALUMNI SECTION                  -->
<a class="anchor" name="alumni"> </a>

### Recent Alumni Since 2011 

<ul class="alumni list">
{% assign this_person = 1 %}
{% for alumni in site.data.alumni %}
  <li>
    <a rel="student-fancy-box-link" href="#person-alumni-{{this_person}}">
    <div class="alumni box">
      {% if alumni.picture %}
        <img src="{{site.JB.BASE_PATH}}{{alumni.picture}}" height="150" width="105"/>
      {% else %}
        <img src="http://upload.wikimedia.org/wikipedia/commons/5/59/Empty.png" height="150" width="105"/>
      {% endif %}
      <h4>{{ alumni.name }}</h4>
    </div>
    </a>

    <!--This is the pop-up box-->
    <div id="person-alumni-{{this_person}}" class="alumni info-expand">
      <div class="alumni info">
        <div class="profile-image">
          <img src="{{site.JB.BASE_PATH}}{{alumni.picture}}" />
        </div>
        <div class="alumni name-box">
          <h3>{{alumni.name}}</h3>
          <p>{{alumni.affiliation}}</p>
          {% if alumni.interests %}
            <h5>Interests</h5>
            <p>{{alumni.interests}}</p>
          {% endif %}
          {% if alumni.advisor %}
            <h5>Former Advisor</h5>
            <p>{{alumni.advisor}}</p>
          {% endif %}
        </div>

        <div class="alumni goals">
        {% if alumni.bio %}
            <p>{{alumni.bio}}</p>
        {% endif %}
        </div>
        {% if alumni.url %}
          <center><a href="{{alumni.url}}" target="_blank">Personal Website</a></center>
        {% endif %}
      </div>
    </div>
  </li>
  {% assign this_person = this_person | plus: 1 %}
{% endfor %}
</ul>