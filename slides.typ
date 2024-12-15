#import "@preview/touying:0.5.3": *
#import "@preview/touying-unistra-pristine:1.2.0": *

#show: unistra-theme.with(
  config-info(
    title: [Introduction Video],
    subtitle: [University of Aalto],
    author: [Herschel Pravin Pawar],
    date: datetime(year: 2024, month: 12, day: 15).display("[month repr:long] [day], [year repr:full]"),
  ),
  config-store(
    color-theme: colorthemes.hazy,
    // show-header: true,
    show-footer: false,
    footer-show-subtitle: false,
  ),
  config-page(
    footer: none,
    header: none,
    margin: (top: 1em, right: 1em, bottom: 1em, left: 1em),
  )
)

#show heading.where(depth: 2): set heading(
  numbering: (..n) => text(fill: rgb("#00ff00ff"))[>]
)

#title-slide[]

= Self Introduction

== Who am I?

#grid(columns: 2, rows: 1, align: horizon + center, column-gutter: 2%,
  [#image("me.png", alt: "image of Herschel Pravin Pawar", height: 83%)],
  [
    #block(height: auto)[#text(size: 40pt)[*Herschel Pravin Pawar*]]
    #align(bottom)[
        #grid(columns: 2, rows: 1, align: left + horizon, column-gutter: 2%,
          [#image("cc.logo.svg", height: 1em)],
          [
            #link("https://github.com/pawarherschel/UniOfAalto")[
              #text(size: 20pt)[GitHub:pawarherschel/UniOfAalto]
            ]
          ]
        )
      ]
  ]
)

// = Highlights

// #text(fill: white)[
//   #enum(numbering: n => "+")[
//     Coventry University's Summer School Game Jam][
//     GMTK's 2023 Game Jam][
//     Bevy
//   ]
// ]

// = Game Development projects

// == Coventry University's Summer School Game Jam


// #table(columns: 1, stroke: none)[
//   #block(height: 50%, width: 100%)[#align(center)[#text(size: 80pt, tracking: 5pt)[#highlight(radius: 25%, extent: 15pt, fill: s-color)[Continuous Change]]]]
// ][#table.hline()][
//   #block(height: 50%, width: 100%)[#align(center)[#text(size: 80pt, tracking: 5pt)[#highlight(radius: 25%, extent: 15pt, fill: s-color)[2D Platformer]]]]
// ]

// todo!(show hero switching)

// == GMTK's 2023 Game Jam
// == Bevy