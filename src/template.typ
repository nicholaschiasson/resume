#import "@preview/fontawesome:0.1.0": *

#let resume(
	name: "",
	address: "",
	phone: "",
	email: "",
	homepage: "",
	github: "",
	linkedin: "",
  twitter: "",
	ambition: "",
	body,
) = {
  set document(author: name, title: name + " CV")
  set page(
    paper: "us-letter",
    margin: (left: 10mm, right: 10mm, top: 15mm, bottom: 15mm),
		footer: [
			#set align(right)
			#set text(8pt)
			#name | #counter(page).display(
				"1 of 1",
				both: true
			)
		],
  )
  set text(font: "Linux Libertine", hyphenate: false, lang: "en")

  let bottom_padding = 0.5em

  // Title row and personal details.
  align(center)[
    #block(below: bottom_padding, text(weight: 700, 1.75em, name))

    #if address.len() > 0 [
      #block(below: bottom_padding, [#fa-house() #address])
    ]

    #{
      let contacts = ()

      if phone.len() > 0 {
        contacts.push((content: link("tel:" + phone)[ #phone], symbol: fa-phone()))
      }

      if email.len() > 0 {
        contacts.push((content: link("mailto:" + email)[ #email], symbol: fa-envelope()))
      }

      if homepage.len() > 0 {
        contacts.push((content: link(homepage)[ #homepage.trim(regex("^https?://"))], symbol: fa-link()))
      }

      if github.len() > 0 {
        contacts.push((content: link("http://github.com/" + github)[ #github], symbol: fa-github()))
      }

      if linkedin.len() > 0 {
        contacts.push((content: link("https://linkedin.com/in/" + linkedin)[ #linkedin], symbol: fa-linkedin()))
      }

      if twitter.len() > 0 {
        contacts.push((content: link("https://twitter.com/" + twitter)[ #twitter], symbol: fa-twitter()))
      }

      let c = contacts.enumerate().map(contact =>
        if calc.even(contact.at(0)) {
          (align(right)[#contact.at(1).content #contact.at(1).symbol], align(center)[*|*])
        } else {
          align(left)[#contact.at(1).symbol #contact.at(1).content]
        }
      ).flatten();

      grid(columns: (1fr, 0.05fr, 1fr), row-gutter: bottom_padding, ..c)
    }

    #if ambition.len() > 0 [
      #block(below: 0.5em, ambition)
    ]
  ]

  // Main body.
  set par(justify: true)
  set list(marker: ([•], [--]))

  body
}

#let experience(
  organization: "",
  role: "",
  location: "",
  start: "",
  end: "",
  skills: (),
  responsibilities: (),
) = {
  assert(organization.len() > 0)
  assert(role.len() > 0)
  assert(start.len() > 0)

  set block(below: 0.75em)

  [
    - #block[
      #grid(columns: (2fr, 1fr), row-gutter: 0.5em,
        align(left, strong(organization)),
        align(right, if location.len() > 0 {strong[#fa-location-dot() #location]}),
        align(left, emph(role)),
        align(right)[#emph[#start #if end.len() > 0 [ --- #end ]]],
      )

      #if skills.len() > 0 [
        *Applied Skills:* #skills.join(", ")
      ]

      #if responsibilities.len() > 0 [
        *Responsibilities*:
        #for responsibility in responsibilities [
          - #responsibility
        ]
      ]
    ]
  ]
}

#let skills(
  category: "",
  ..skills
) = {
  if category.len() > 0 [*#category*: ]
  skills.pos().join(", ")
}

#let education(
  institution: "",
  degree: "",
  location: "",
  start: "",
  end: "",
  highlights: (),
) = {
  assert(institution.len() > 0)
  assert(degree.len() > 0)
  assert(start.len() > 0)

  set block(below: 0.75em)

  [
    - #block[
      #grid(columns: (4fr, 1fr), row-gutter: 0.5em,
        align(left, strong(institution)),
        align(right, if location.len() > 0 {strong[#fa-location-dot() #location]}), align(left, emph(degree)),
        align(right)[#emph[#start #if end.len() > 0 [ --- #end ]]],
      )

      #for highlight in highlights [
        - *#highlight.metric*: #highlight.result
      ]
    ]
  ]
}

#let project(
  name: "",
  start: "",
  end: "",
  skills: (),
  responsibilities: (),
) = {
  assert(name.len() > 0)
  assert(start.len() > 0)

  set block(below: 0.75em)

  [
    - #block[
      #grid(columns: (2fr, 1fr), row-gutter: 0.5em,
        align(left, strong(name)),
        align(right)[#emph[#start #if end.len() > 0 [ --- #end ]]],
      )

      #if skills.len() > 0 [
        *Applied Skills:* #skills.join(", ")
      ]

      #if responsibilities.len() > 0 [
        *Responsibilities*:
        #for responsibility in responsibilities [
          - #responsibility
        ]
      ]
    ]
  ]
}
