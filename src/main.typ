#import "template.typ": resume;

#show: resume.with(
  name: "Nicholas Chiasson",
  phone: " +16138753155",
  email: "nicholasomerchiasson@gmail.com",
  homepage: "https://nicholaschiasson.github.io",
  github: "nicholaschiasson",
)

#line(length: 100%, stroke: 0.5pt)

== Experience

#include "pages/experience.typ";

#line(length: 100%, stroke: 0.5pt)

== Core Technical Skills

#include "pages/skills.typ";

#line(length: 100%, stroke: 0.5pt)

== Education

#include "pages/education.typ";

#line(length: 100%, stroke: 0.5pt)

== Applied Projects

#include "pages/projects.typ";
