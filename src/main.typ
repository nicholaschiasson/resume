#import "template.typ": resume;

#show: resume.with(
  name: "Nicholas Chiasson",
  phone: " +16138753155",
  email: "nicholasomerchiasson@gmail.com",
  // TODO: Replace linkedin link with homepage when personal site is renewed.
  // homepage: "https://nicholaschiasson.github.io",
  github: "nicholaschiasson",
  linkedin: "nicholaschiasson",
)

#v(1em)

#box[
  == Experience

  #line(length: 100%, stroke: 0.5pt)

  #include "pages/experience.typ";
]

#v(1em)

#box[
  == Core Technical Skills

  #line(length: 100%, stroke: 0.5pt)

  #include "pages/skills.typ";
]

#v(1em)

#box[
  == Education

  #line(length: 100%, stroke: 0.5pt)

  #include "pages/education.typ";
]

#v(1em)

#box[
  == Applied Projects

  #line(length: 100%, stroke: 0.5pt)

  #include "pages/projects.typ";
]
