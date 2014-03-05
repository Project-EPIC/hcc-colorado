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
css: people.css
---

````Faculty Slider Here````

<!--                   This is the Faculty section                  -->
<a class="anchor" name="faculty"> </a>
### Faculty
<ul class="faculty-list">
{% assign this_person = 1 %}
{% for person in site.data.faculty %}
	<li>
		<a rel="faculty-fancy-box-link" href="#person-faculty-{{this_person}}">
		<div class="faculty-box">
			{% if person.profile_pic %}
				<img src="{{person.profile_pic}}"/>
			{% endif %}
			<h3>{{ person.name }}</h3>
		</div>
		</a>

		<!--This is the pop-up box-->
		<div id="person-faculty-{{this_person}}" class="faculty-info-expand">
			<div class="faculty-info">
				<div class="profile-image">
					<img src="{{person.profile_pic}}" />
				</div>
				<div class="faculty-name-box">
					<h3>{{person.name}}</h3>
					<p>{{person.affiliation}}</p>
					{% if person.interests %}
						<ul class="interests">
						<h5>Interests</h5>
						{% for interest in person.interests %}
							<li>{{interest}}.</li>
						{% endfor %}
						</ul>
					{% endif %}
				</div>
				{% if person.teaser %}
					<div class="faculty-teaser">
						<p>{{person.teaser}}</p>
					</div>
				{% endif %}
				{% if person.url %}
					<center><a href="{{person.url}}">Personal Website</a></center>
				{% endif %}
			</div>
		</div>
	</li>
	{% assign this_person = this_person | plus: 1 %}
{% endfor %}
</ul>

<!--                   This is the PostDocs section                  -->


<a class="anchor" name="postdocs"> </a>
### Post Docs/Researchers
<ul class="faculty-list">
{% assign this_person = 1 %}
{% for person in site.data.researchers %}
  <li>
    <a rel="faculty-fancy-box-link" href="#person-researcher-{{this_person}}">
    <div class="faculty-box">
      {% if person.profile_pic %}
        <img src="{{person.profile_pic}}"/>
      {% endif %}
      <h3>{{ person.name }}</h3>
    </div>
    </a>

    <!--This is the pop-up box-->
    <div id="person-researcher-{{this_person}}" class="faculty-info-expand">
      <div class="faculty-info">
        <div class="profile-image">
          <img src="{{person.profile_pic}}" />
        </div>
        <div class="faculty-name-box">
          <h3>{{person.name}}</h3>
          <p>{{person.affiliation}}</p>
          {% if person.interests %}
            <ul class="interests">
            <h5>Interests</h5>
            {% for interest in person.interests %}
              <li>{{interest}}.</li>
            {% endfor %}
            </ul>
          {% endif %}
        </div>
        {% if person.teaser %}
          <div class="faculty-teaser">
            <p>{{person.teaser}}</p>
          </div>
        {% endif %}
        {% if person.url %}
          <center><a href="{{person.url}}">Personal Website</a></center>
        {% endif %}
      </div>
    </div>
  </li>
  {% assign this_person = this_person | plus: 1 %}
{% endfor %}
</ul>


<!--                   This is the Student section                  -->

<a class="anchor" name="students"> </a>
### Students
<ul class="student-list">
{% assign this_person = 1 %}
{% for student in site.data.students %}
  <li>
    <a rel="student-fancy-box-link" href="#person-student-{{this_person}}">
    <div class="student-box">
      {% if student.profile_pic %}
        <img src="{{student.profile_pic}}"/>
      {% endif %}
      <h4>{{ student.name }}</h4>
    </div>
    </a>

    <!--This is the pop-up box-->
    <div id="person-student-{{this_person}}" class="student-info-expand">
      <div class="student-info">
        <div class="profile-image">
          <img src="{{student.profile_pic}}" />
        </div>
        <div class="student-name-box">
          <h3>{{student.name}}</h3>
          <p>{{student.affiliation}}</p>
          {% if student.interests %}
            <ul class="interests">
            <h5>Interests</h5>
            {% for interest in student.interests %}
              <li>{{interest}}.</li>
            {% endfor %}
            </ul>
          {% endif %}
        </div>
        {% if student.goals %}
          <div class="student-goals">
            <p>{{student.goals}}</p>
          </div>
        {% endif %}
        {% if student.url %}
          <center><a href="{{student.url}}">Personal Website</a></center>
        {% endif %}
      </div>
    </div>
  </li>
  {% assign this_person = this_person | plus: 1 %}
{% endfor %}
</ul>





<!--                   This is the alumni section                  -->

<a class="anchor" name="alumni"> </a>
### Alumni
<ul class="student-list">
{% assign this_person = 1 %}
{% for student in site.data.alumni %}
  <li>
    <a rel="student-fancy-box-link" href="#person-alumni-{{this_person}}">
    <div class="student-box">
      {% if student.profile_pic %}
        <img src="{{student.profile_pic}}"/>
      {% endif %}
      <h4>{{ student.name }}</h4>
    </div>
    </a>

    <!--This is the pop-up box-->
    <div id="person-alumni-{{this_person}}" class="student-info-expand">
      <div class="student-info">
        <div class="profile-image">
          <img src="{{student.profile_pic}}" />
        </div>
        <div class="student-name-box">
          <h3>{{student.name}}</h3>
          <p>{{student.affiliation}}</p>
          {% if student.interests %}
            <ul class="interests">
            <h5>Interests</h5>
            {% for interest in student.interests %}
              <li>{{interest}}.</li>
            {% endfor %}
            </ul>
          {% endif %}
        </div>
        {% if student.bio %}
          <div class="student-goals">
            <p>{{student.bio}}</p>
          </div>
        {% endif %}
        {% if student.url %}
          <center><a href="{{student.url}}">Personal Website</a></center>
        {% endif %}
      </div>
    </div>
  </li>
  {% assign this_person = this_person | plus: 1 %}
{% endfor %}
</ul>
