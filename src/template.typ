#import "@preview/fontawesome:0.1.0": *;

#let darkgray = rgb("#666666");

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
    margin: (left: 0.5in, right: 0.5in, top: 0.5in, bottom: 0.5in),
    footer: [
      #set align(right)
      #set text(8pt)
      #name | #counter(page).display("1 of 1", both: true)
    ],
  )
  set text(font: "Times New Roman", hyphenate: false, lang: "en", 10.5pt)
  set list(indent: 1em)

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
        contacts.push((content: link("tel:" + phone)[#phone], symbol: fa-phone()))
      }

      if email.len() > 0 {
        contacts.push((content: link("mailto:" + email)[#email], symbol: fa-envelope()))
      }

      if homepage.len() > 0 {
        contacts.push((content: link(homepage)[#homepage.trim(regex("^https?://"))], symbol: fa-link()))
      }

      if github.len() > 0 {
        contacts.push((content: link("https://github.com/" + github)[#github], symbol: fa-github()))
      }

      if linkedin.len() > 0 {
        contacts.push((content: link("https://linkedin.com/in/" + linkedin)[#linkedin], symbol: fa-linkedin()))
      }

      if twitter.len() > 0 {
        contacts.push((content: link("https://twitter.com/" + twitter)[#twitter], symbol: fa-twitter()))
      }

      let c = contacts.map(contact => [#contact.symbol #contact.content]).flatten()

      set text(10pt)
      c.join[ *|* ]
    }

    #if ambition.len() > 0 [
      #set text(12pt)
      #block(below: bottom_padding + 0.5em, ambition)
    ]
  ]

  // Main body.
  set par(justify: true)
  set list(marker: ([•], [--]))

  show heading: set text(fill: darkgray)

  body
}

#let experience(
  organization: "",
  role: "",
  coop: false,
  location: "",
  start: "",
  end: "",
  skills: (),
  responsibilities: (),
  compact: false,
) = {
  assert(organization.len() > 0)
  assert(role.len() > 0)
  assert(start.len() > 0)

  block(inset: (left: 1em))[
    #if compact {
      grid(
        columns: (1fr, 1fr, 1fr),
        row-gutter: 0.5em,
        align(left)[*#role* #if coop { super[_CO-OP_] }],
        align(center, strong[#organization#if location.len() > 0 [ (#location)]]),
        align(right)[#emph[#start #if end.len() > 0 [ --- #end ]]],
      )
    } else {
      grid(
        columns: (2fr, 1fr),
        row-gutter: 0.5em,
        align(left, strong(organization)), align(right, if location.len() > 0 { strong[#fa-location-dot() #location] }),
        align(left)[_#role #if coop { super[CO-OP] }_], align(right)[#emph[#start #if end.len() > 0 [ --- #end ]]],
      )
    }

    #if skills.len() > 0 [
      #skills.map(s => text(fill: darkgray, raw(s))).join(", ")
    ]

    #if responsibilities.len() > 0 [
      #for responsibility in responsibilities [
        - #responsibility
      ]
    ]
  ]
}

#let skills(
  category: "",
  ..skills,
) = {
  block(inset: (left: 1em))[
    #if category.len() > 0 [*#category*: ]
    #skills.pos().map(s => text(fill: darkgray, raw(s))).join(", ")
  ]
}

#let education(
  institution: "",
  degree: "",
  discipline: "",
  distinction: "",
  focus: "",
  minors: (),
  location: "",
  start: "",
  end: "",
  highlights: (),
  compact: false,
) = {
  assert(institution.len() > 0)
  assert(degree.len() > 0)
  assert(discipline.len() > 0)
  assert(start.len() > 0)

  let title = if compact {
    (degree + " " + discipline).split(" ").map(s => upper(s.at(0))).join(".") + if distinction.len() > 0 [ #distinction]
  } else {
    let t = degree + " of " + discipline
    if distinction.len() > 0 {
      t += [ #distinction]
    }
    if focus.len() > 0 {
      t += [, #focus]
    }
    if minors.len() > 0 {
      if minors.len() > 1 {
        t += [, Minors ]
      } else {
        t += [, Minor in ]
      }
      t += minors.join(", ")
    }
    t
  }

  block(inset: (left: 1em))[
    #if compact {
      grid(
        columns: (1fr, 1fr, 1fr),
        row-gutter: 0.5em,
        align(left, strong(title)),
        align(center, strong[#institution#if location.len() > 0 [ (#location)]]),
        align(right)[#emph[#start #if end.len() > 0 [ --- #end ]]],
      )
    } else {
      grid(
        columns: (1fr, 1fr),
        gutter: 1em,
        row-gutter: 0.5em,
        align(left, strong(institution)), align(right, if location.len() > 0 { strong[#fa-location-dot() #location] }),
        align(left, emph(title)), align(right)[#emph[#start #if end.len() > 0 [ --- #end ]]],
      )
    }

    #for highlight in highlights [
      - #highlight.metric: #highlight.result
    ]
  ]
}

#let project(
  name: "",
  description: "",
  start: "",
  end: "",
  skills: (),
  responsibilities: (),
  repo: "",
) = {
  assert(name.len() > 0)
  assert(description.len() > 0)
  assert(start.len() > 0)

  let proj = strong(if repo.len() > 0 {
    link(repo)[#name]
  } else {
    name
  })

  if skills.len() > 0 {
    proj = [#proj | #skills.map(s => text(fill: darkgray, raw(s))).join(", ")]
  }

  block(inset: (left: 1em))[
    #grid(
      columns: (2fr, 1fr),
      row-gutter: 0.5em,
      align(left, proj), align(right)[#emph[#start #if end.len() > 0 [ --- #end ]]],
    )

    - #description
    #if responsibilities.len() > 0 [
      #for responsibility in responsibilities [
        - #responsibility
      ]
    ]
  ]
}
