#import "template.typ": resume;

#show: resume.with(
  name: "Nicholas Chiasson",
  phone: " +16138753155",
  email: "nicholasomerchiasson@gmail.com",
//  homepage: "https://nicholaschiasson.github.io",
  github: "nicholaschiasson",
  linkedin: "nicholaschiasson",
)

== Experience

#line(length: 100%, stroke: 0.5pt)

#include "pages/experience.typ";

== Core Technical Skills

#line(length: 100%, stroke: 0.5pt)

#include "pages/skills.typ";

== Education

#line(length: 100%, stroke: 0.5pt)

#include "pages/education.typ";

== Applied Projects

#line(length: 100%, stroke: 0.5pt)

#include "pages/projects.typ";
