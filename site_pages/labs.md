---
layout: page
title : Research Labs
tagline: in Human Centered Computing at CU
group: navigation
scroller:
  EPIC : epic
  Craft: craft
  L3D  : l3d
  Scalable Design: scalable
  Wellness Innovation: wii
  Digital Learning Sciences: dls
js: labs.js
css: labs.css
---

There are 6 active labs in human centered computing at CU Boulder.  Each lab has their own space on campus and website.  Labs are highlighted here with a link to their website.

<div class="lab odd">
<a class="anchor" name="epic"> </a>
<img src="{{JB.BASE_PATH}}{{site.IMG_PATH}}/lab_logos/epic.png" class="logo">

<h3>EPIC – Empowering the Public with Information in Crisis</h3>

<ul id="epic-slider">
{% for image in site.data.hcc_photos.epic %}
  <li>
    <img src="{{ image.url }}" title="{{image.title}}" description="{{image.description}}">
  </li>
{% endfor %}
</ul>

<p>
PROJECT EPIC, which launched in September 2009, is supported by a $2.8M grant from the US National Science Foundation. It is a multi-disciplinary, multi-university, multi-lingual research effort to support the information needs by members of the public during times of mass emergency. In this age of social media, we bring our behavioral and technical knowledge of “computer mediated communication” to the world of crisis studies and emergency response. As researchers, we are committed to careful study of socio-technical transformation and building human-centered computation. In addition to empirical observational study that requires new ways of studying massive “widescale” coordination across the internet, we conduct “action research” and employ “participatory design” oriented approaches. We aim to look beyond today’s state of the art and anticipate future socio-technical change.
</p>
<a href="http://epic.cs.colorado.edu" class="website" target="_blank">Project EPIC Website</a>
</div>





<div class="lab even">
<a class="anchor" name="craft"> </a>
<img src="{{JB.BASE_PATH}}{{site.IMG_PATH}}/lab_logos/craft_technology_group.png" class="logo">

<h3>Craft Technology Group</h3>

<ul id="craft-slider">
{% for image in site.data.hcc_photos.craft %}
  <li>
    <img src="{{ image.url }}" title="{{image.title}}" description="{{image.description}}">
  </li>
{% endfor %}
</ul>
<p>
Craft Technology is our term for the interwaeving of computation with craft materials.This blending can take many forms, including the application of specialized software to aid in the design and constructuion of craft(such as mechanical toys and paper scuptlure) and in the creation of craft objects with embedded intelligence. Our particular interests lie in the  educational realm - that is, we are especially interested in extending the landscape of children's craft activities.
</p>
<a href="http://epic.cs.colorado.edu" target="_blank" class="website">Craft Technology Group Website</a>
</div>







<div class="lab odd">
<a class="anchor" name="l3d"> </a>
<img src="{{JB.BASE_PATH}}{{site.IMG_PATH}}/lab_logos/lifelong_learning_and_design.png" class="logo">

<ul id="l3d-slider">
{% for image in site.data.hcc_photos.l3d %}
  <li>
    <img src="{{ image.url }}" title="{{image.title}}" description="{{image.description}}">
  </li>
{% endfor %}
</ul>
<p>
The Center for LifeLong Learning and Design (L3D) is part of the Department of Computer Science and the Institute of Cognitive Science at the University of Colorado Boulder. The mission of the center is to establish the scientific foundations for the environment, design, development, and assessment of socio-technical systems that serve as amplifiers of human capabilities and that will bring dramatic and transformative improvements in the ways people live, learn, work, and collaborate.
</p>
<a href="http://epic.cs.colorado.edu" class="website">Center for Lifelong Learning and Design Website</a>
</div>





<div class="lab even">
<a class="anchor" name="scalable"> </a>
<img src="{{JB.BASE_PATH}}{{site.IMG_PATH}}/lab_logos/scalable_game_design.png" class="logo">

<ul id="scalable-slider">
{% for image in site.data.hcc_photos.scalable %}
  <li>
    <img src="{{ image.url }}" title="{{image.title}}" description="{{image.description}}">
  </li>
  {% endfor %}
</ul>

<p>
The goal of this project is to get computer science back to middle schools. Our strategy is to reform middle school IT education at a systemic level exploring the notion of scalable game design as an approach to carefully balance educational and motivational aspects of IT fluency. The original iDREAMS project (Integrative Design-based Reform-oriented Educational Approach for Motivating Students) was designed to spark an interest in IT through students' natural attraction to game design. The second phase of the project, called CT4TC (Computational Thinking for Teaching Computing) continues the original project by looking deeper into how game design helps students learn STEM concepts through collection and analysis of performance data.
</p>
<a href="http://sgd.cs.colorado.edu/wiki/Scalable_Game_Design_wiki" target="_blank" class="website">Scalable Game Design Initiative Website</a>
</div>




<div class="lab odd">
<a class="anchor" name="wii"> </a>

<h3>Wellness Innovation and Interaction (WII) Lab</h3>

<ul id="wellness-slider">
{% for image in site.data.hcc_photos.wii %}
  <li>
    <img src="{{ image.url }}" title="{{image.title}}" description="{{image.description}}">
  </li>
{% endfor %}
</ul>

<p>The Wellness Innovation and Interaction (WII) Lab designs, implements, and evaluates mobile applications that can improve a population’s health and wellness. Our research motivations are two fold – we want to provide people with easier solutions to improve their health and wellness while assisting researchers in other disciplines study new, technical interventions.
</p>
<a href="http://wii.soic.indiana.edu/" target="_blank" class="website">Wellness Innovation and Interaction Website</a>
</div>




<div class="lab even">
<a class="anchor" name="dls"> </a>
<img src="{{JB.BASE_PATH}}{{site.IMG_PATH}}/lab_logos/digital_learning_sciences.png" class="logo">
<h3>Digital Learning Sciences</h3>

<ul id="dls-slider">
{% for image in site.data.hcc_photos.dls %}
  <li>
    <img src="{{ image.url }}" title="{{image.title}}" description="{{image.description}}">
  </li>
{% endfor %}
</ul>
<p>
Digital Learning Sciences is a mission-centered, not-for-profit organization dedicated to improving learning through the use of digital content and tools. We develop systems and services that enable science and educational organizations – universities, school districts, libraries, and publishers – to organize, manage, comprehend, and enrich online resources to improve learning outcomes and learner engagement.
</p>
<a href="http://dls.ucar.edu/" target="_blank" class="website">Digital Learning Sciences Website</a>
</div>