#import "@preview/touying:0.5.5": *
#import themes.metropolis: *
#import "@preview/typpuccino:0.1.0"

#import "@preview/numbly:0.1.0": numbly

#let text-color = white
#let alert-primary-color = white
#let alert-secondary-color = white
#let header-background-color = white
#let slide-background-color = white
#let focus-background-color = white
#let focus-text-color = white

#let primary = alert-primary-color
#let primary-light = alert-secondary-color
#let secondary = header-background-color
#let neutral-lightest = slide-background-color
#let neutral-dark = focus-background-color
#let neutral-darkest = text-color

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  navigation: none,
  footer-right: none,
  config-info(
    title: [Introduction Video],
    subtitle: [University of Aalto],
    author: [Herschel Pravin Pawar],
    date: datetime(
      year: 2024,
      month: 12,
      day: 15,
    ).display("[month repr:long] [day], [year repr:full]"),
  ),
  config-colors(
    primary: primary,
    primary-light: primary-light,
    secondary: secondary,
    neutral-lightest: neutral-lightest,
    neutral-dark: neutral-dark,
    neutral-darkest: neutral-darkest,
  ),
)

#show heading.where(depth: 1): set heading(numbering: (..n) => "=" * 1)
#show heading.where(depth: 2): set heading(numbering: (..n) => "=" * 2)
#show heading.where(depth: 3): set heading(numbering: (..n) => "=" * 3)
#show heading.where(depth: 4): set heading(numbering: (..n) => "=" * 4)

#show list: set list(marker: [-])

#set text(font: "JetBrains Mono")

#title-slide()

= Outline <touying:hidden>

#outline(title: none, indent: 1em, depth: 2)

= Self Introduction

== Who am I?

#grid(
  columns: 2,
  rows: 1,
  align: center,
  column-gutter: 2%,
  image("me.png", alt: "image of Herschel Pravin Pawar", fit: "contain", height: 1fr),
  align(left + horizon)[
    #text(size: 25pt)[
      #grid(
        rows: 1,
        columns: 2,
        column-gutter: 2%,
        image("kibty.svg", height: 3em),
        align(left + horizon)[
          #alert[Herschel Pravin Pawar]
          #linebreak()
          #link("https://sakurakat.systems")[
            #text(size: 0.8em)[sakurakat.systems]
          ]
        ],
      )
    ]

    #align(bottom)[
      #text(size: 16pt)[
        #grid(
          rows: 1,
          columns: 2,
          align: left + horizon,
          column-gutter: 2%,
          image("cc.logo.svg", height: 1em),
          link("https://github.com/pawarherschel/UniOfAalto")[GitHub:pawarherschel/UniOfAalto],
        )
      ]
    ]
  ],
)

= Coventry University

== Result

#block(height: 1fr, width: 100%)[
  #align(center + horizon)[
    #figure(
      table(
        rows: 5,
        columns: 4,
        [Criteria], [Rank], [Score\*], [Raw Score],
        [Gameplay], [2], [3.286], [3.600],
        [Presentation], [2], [3.469], [3.800],
        [Creativity], [3], [2.739], [3.000],
        [Enjoyment], [3], [2.921], [3.200],
      ),
      caption: "Coventry University Game Jam Results",
    )
  ]
]

== Themes

#text(
  size: 40pt,
  font: "Noto Serif",
  style: "italic",
  weight: "light",
  stretch: 70%,
)[
  #block(height: 1fr, width: 100%)[
    #grid(
      columns: 1,
      rows: 2,
      align: center + horizon,
      block(height: 50%, width: 100%)[#alert[Continuous Change]],
      grid.hline(stroke: 1pt),
      block(height: 50%, width: 100%)[#alert[2D Platformer]],
    )
  ]
]

== Main Mechanic

#block(height: 1fr, width: 100%)[
  #figure(
    image("hero switching.gif", height: 1fr, fit: "contain"),
    caption: [Hero Switching Mechanic],
  )
]

== The Team

#block(height: 1fr, width: 100%)[
  #figure(
    image("shashank and me.jpg", height: 1fr, fit: "contain"),
    caption: [Us],
  )
]

== Player Architecture

#block(height: 1fr, width: 100%)[
  #figure(
    image("player.svg", fit: "contain", height: 1fr),
    caption: [Player Architecture],
  )
]

= Game Maker ToolKit's 2023 Game Jam

== Result

#block(height: 1fr, width: 100%)[
  #align(center + horizon)[
    #figure(
      table(
        rows: 5,
        columns: 4,
        [Criteria], [Rank], [Score\*], [Raw Score],
        [Enjoyment], [4296], [2.237], [2.583],
        [Overall], [4652], [2.285], [2.639],
        [Presentation], [4720], [2.237], [2.583],
        [Creativity], [4780], [2.382], [2.750],
      ),
      caption: "GMTK's 2023 Game Jam Results",
    )
  ]
]

== Themes

#text(
  size: 40pt,
  font: "Noto Serif",
  style: "italic",
  weight: "light",
  stretch: 70%,
)[
  #block(height: 1fr, width: 100%)[
    #align(center + horizon)[Roles Reversed]
  ]
]

== Gameplay

#block(height: 1fr, width: 100%)[
  #align(center + horizon)[
    #figure(
      image("Cosmos Conquerors.png", height: 1fr),
      caption: [Screenshot],
    )
  ]
]

== Main Mechanic

#block(height: 1fr, width: 100%)[
  #grid(
    rows: 1,
    columns: 2,
    column-gutter: 2%,
    figure(
      image("invaders shooting.gif", width: 100%, fit: "contain"),
      caption: [All Invaders Shooting],
    ),
    figure(
      image("two invaders shooting.gif", width: 100%, fit: "contain"),
      caption: [Two Invaders Shooting],
    ),
  )
]

= Bevy

#focus-slide[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
    size: 39.3pt,
    fill: focus-text-color,
  )[
    #smallcaps[This Page Has Been Intentionally Left Blank]
  ]
]

= Other Projects


= Current Interests


= Why Aalto


