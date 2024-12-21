#import "@preview/touying:0.5.5": *
#import themes.metropolis: *
#import "@preview/typpuccino:0.1.0"

#import "@preview/numbly:0.1.0": numbly

// taken from catppuccin mocha
#let text-color = rgb(206, 215, 244) // text
#let alert-primary-color = rgb(247, 192, 231) // pink
#let alert-secondary-color = rgb(242, 225, 219) // rosewater
#let header-background-color = rgb(180, 190, 253) // lavender
#let slide-background-color = rgb(30, 30, 46) // base
#let focus-background-color = rgb(17, 18, 27) // crust
#let focus-text-color = rgb(48, 50, 67) // surface 0

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
      day: 21,
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

#show link: underline
#show link: set underline(stroke: (paint: alert-secondary-color, dash: "densely-dashed"))

#set table(stroke: text-color)
#set text(font: "JetBrains Mono")

#let blank-slide = focus-slide[
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
    #text(size: 24pt)[
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
      #text(size: 18pt)[
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
      grid.hline(stroke: 1pt + alert-secondary-color),
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
    align: bottom + center,
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

#blank-slide

= Other Projects

== VRCX Insights

#block(height: 1fr, width: 100%)[
  #figure(
    image("cropped-direct.jpg", height: 1fr, fit: "contain"),
    caption: [A _VERY_ zoomed out view of the graph produced],
  )
]

---

#text(size: 0.893em)[
  number of labels in the DOT file: #alert[$ 1835 "labels" $]

  total lines in the DOT file: #alert[$ 102,560 "lines" $]

  size of svg: #alert[$ 33.7 "MB" (35,402,018 "bytes") $]

  png output code:
  #align(center)[
    #rect(stroke: alert-secondary-color)[
      ```typst
      #page(height: (7680pt * 5), width: (7680pt * 5))[
        #image("dot_edge_no_label.dot.neato.with_sand.svg")
      ]
      ```
    ]
  ]

  size of png produced: #alert[$ 3.34 "GB" (3,597,062,134 "bytes") $]
]

== Booth Archiver

#block(height: 1fr, width: 100%)[
  #figure(
    image("booth_archiver.png", height: 1fr, fit: "contain"),
    caption: "One of the spreadsheets generated by the program",
  )
]

== Krita/GIMP Palette Generator

#block(height: 1fr, width: 100%)[
  #columns(2)[
    #figure(
      image("env.png", width: 100%, fit: "contain"),
      caption: "Original Image",
    )
    #colbreak()
    #figure(
      image("env.png.5.png", width: 100%, fit: "contain"),
      caption: "Quantized Image",
    )
  ]
  #block(height: 1fr)[
    #figure(
      image(
        "env.png.5.png.gpl.png.linear.png",
        height: 1fr,
        fit: "contain",
      ),
      caption: "Color palette generated with quantization level 5",
    )
  ]
]

== Kait

#block(height: 1fr, width: 100%)[
  #figure(
    image(
      "kait.png",
      height: 1fr,
      fit: "contain",
    ),
    caption: "OC Kait - Made with the help of VRoid Studio",
  )
]

= Current Interests

---

- #alert[WGPU] --- an implementation of WebGPU spec in rust --- to offload work to the gpu
- #alert[Cranelift] --- an alternative to LLVM --- creating custom scripting languages for game engines
- #alert[Stateless Abstractions] --- Inspired by NixOS, functional programming, WGPU --- Creating good abstractions which reduce conginitive load
- #alert[Technical art] --- bridging programming, art, and mathematics --- I am facinated by gpus and shaders
- #alert[GPGPU] --- Hardware Acceleration --- Offloading tasks and doing them in parallel
- #alert[Giving technical talks] --- Inspiring Others --- Kate Compton inspired me, and I want to inspire others, just like her

= Why Aalto

= Acknowledgement

---

#align(horizon)[
  #text[
    - #alert[fivepb] for helping me push through when I wasn't able to
    - #alert[mlembug] for going through the script
    - #alert[Shashank] and #alert[Divyesh] for checking the presentation
    - #alert[Henna] for helping me practice and pushing me towards getting higher education
    - and many many many other people
  ]
]

== Heavily Inspired by

#align(horizon)[
  #text[
    - #link("https://www.youtube.com/@Acerola_t")[#alert[Acerola]] for the general vibes of the presentation
    - #link("https://www.youtube.com/@NoBoilerplate")[#alert[No Boilerplate]] for the introduction
  ]
]

#align(bottom)[
  Made with #text(fill: rgb("#b19cd9"))[#emoji.heart.purple] using
  - #box[#image("typst.svg", height: 1em)] #link("https://typst.app/")[#alert[Typst]]
  - #box[#image("touying.png", alt: "Touying", height: 1em)] #link("https://touying-typ.github.io/")[#alert[Touying]]
  - #box[#image("catppuccin.png", height: 1em)] #link("https://catppuccin.com/")[#alert[Catppuccin Theme]]
  - #link("https://www.jetbrains.com/lp/mono/")[#alert[#text(font: "Jetbrains Mono")[JetBrains Mono]]] and #alert[#link("https://fonts.google.com/noto/specimen/Noto+Serif")[#text(font: "NotoSerif NF")[NotoSerif]]]
]
