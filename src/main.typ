#import "template.typ": resume;

#show: resume.with(
  name: "Nicholas Chiasson",
  phone: "+16138753155",
  email: "nicholasomerchiasson@gmail.com",
  homepage: "https://nicholas.chiasson.dev",
  github: "nicholaschiasson",
  linkedin: "nicholaschiasson",
  ambition: "Senior Software Engineer specializing in high-scale API platforms, reliability, and cloud infrastructure."
  // ambition: "Platform engineer with deep experience building and operating API gateways at global scale, delivering resilient traffic control, observability, and secure automation."
  // ambition: "Platform engineer delivering resilient API gateways, observability, and IaC automation."
)

#box[
  == Experience

  #line(length: 100%, stroke: 0.5pt)

  #include "pages/experience.typ";
]

#v(1em)

#box[
  #grid(
    columns: (1.5fr, 1fr),
    gutter: 1em,
    row-gutter: 0.5em,
    [
      == Technical Skills

      #line(length: 100%, stroke: 0.5pt)

      #include "pages/skills.typ";
    ],
    [
      == Education

      #line(length: 100%, stroke: 0.5pt)

      #include "pages/education.typ";
    ],
  )
]

#v(1em)

#box[
  == Projects

  #line(length: 100%, stroke: 0.5pt)

  #include "pages/projects.typ";
]
