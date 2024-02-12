---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

Education
======
* Ph.D. in Mathematics, University of Virginia, expected 2027.
* B.A. in Mathematics, Vanderbilt University, 2022.
* B.S. in Computer Science, Vanderbilt University, 2022.

Publications
======
  <ul>{% for post in site.publications %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>
  
Talks
======
  <ul>{% for post in site.talks %}
    {% include archive-single-talk-cv.html %}
  {% endfor %}</ul>
  
Teaching
======
  <ul>{% for post in site.teaching %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>
  
Honors and Awards
======
* Dean's Doctoral Fellowship, University of Virginia
* Wilson & Nellie Pyle Miser Award, Vanderbilt University