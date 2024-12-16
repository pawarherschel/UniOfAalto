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
    show-footer: false,
    font: "JetBrainsMonoNL NF",
  ),
  config-page(
    footer: none,
    header: none,
    margin: (top: 1em, right: 1em, bottom: 1em, left: 1em),
  ),
)

#show heading.where(depth: 1): set heading(numbering: (..n) => "=" * 1)
#show heading.where(depth: 2): set heading(numbering: (..n) => "=" * 2)
#show heading.where(depth: 3): set heading(numbering: (..n) => "=" * 3)
#show heading.where(depth: 4): set heading(numbering: (..n) => "=" * 4)

#title-slide[]

= Self Introduction

#grid(
  columns: 2,
  rows: 1,
  align: horizon + center,
  column-gutter: 2%,
  [#image("me.png", alt: "image of Herschel Pravin Pawar", height: 82%)],
  [
    #block(height: auto)[#text(size: 33.6pt)[
        *Herschel Pravin Pawar*
        #text(size: 0.8em)[
          #box(image("kibty.svg", height: 1em))
          #link("https://sakurakat.systems")[
            sakurakat.systems
          ]]
      ]]
    #align(bottom)[
      #grid(
        columns: 2,
        rows: 1,
        align: left + horizon,
        column-gutter: 2%,
        [#image("cc.logo.svg", height: 1em)],
        [
          #link("https://github.com/pawarherschel/UniOfAalto")[
            #text(size: 16pt)[GitHub:pawarherschel/UniOfAalto]
          ]
        ],
      )
    ]
  ],
)



#focus-slide(theme: "blue", show-counter: false)[#text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[= Highlights]

  #align(left)[
    #text(fill: white, size: 28pt)[
      #enum(numbering: n => "+")[
        #link("https://github.com/pawarherschel/CovUniGJ2024")[Coventry University's Summer School Game Jam]][
        #link("https://github.com/pawarherschel/GMTK2023")[GMTK's 2023 Game Jam]][
        Bevy
      ]
    ]
  ]
]

= Game Development projects

#focus-slide(theme: "blue", show-counter: false)[#text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[== #link("https://github.com/pawarherschel/CovUniGJ2024")[Coventry University's Summer School Game Jam]]]

#focus-slide(theme: "lblue", show-counter: false)[
  #table(columns: 1, rows: 2, stroke: 0pt,
    [#block(height: 50%, width: 100%)[Continous Change]],
    table.hline(stroke: 1pt),
    [#block(height: 50%, width: 100%)[2D Platformer]]
  )
]

#align(center)[=== Hero Switching]
#figure(
  image("hero switching.gif", height: 50%),
  caption: [Hero Switching],
)

#align(center)[=== Us]
#figure(
  image("shashank and me.jpg", height: 75%),
  caption: [Us],
)

#align(center)[=== Player Architecture]
#figure(
  image("player.svg", height: 75%),
  caption: [Player Architecture],
)

#focus-slide(theme: "blue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[== #link("https://github.com/pawarherschel/GMTK2023")[GMTK's 2023 Game Jam]]
]


#focus-slide(theme: "lblue", show-counter: false)[Roles Reversed]

#align(center)[=== Screenshot]
#figure(
  image("Cosmos Conquerors.png", height: 68%),
  caption: [Screenshot],
)

#pagebreak()

#align(center)[=== Invaders Shooting]
#columns(2)[
  #figure(
    image("invaders shooting.gif", height: 60%),
    caption: [Invaders Shooting],
  )
  #colbreak()
  #figure(
    image("two invaders shooting.gif", height: 80%),
    caption: [Two Invaders Shooting],
  )
]

#focus-slide(theme: "dblue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
    size: 42pt,
    fill: rgb("#00000077"),
  )[#smallcaps[This Page Has Been Intentionally Left Blank]]
]

#focus-slide(theme: "blue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[== Bevy]
  #align(left)[
    #text(fill: white, size: 28pt, font: "JetBrains Mono NL")[
      + #link("https://github.com/pawarherschel/bevy-pong")[Pong] (you can imagine)
    ]
  ]
]

#focus-slide(theme: "blue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[= Other Technical Projects]
]

#focus-slide(theme: "blue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[== #link("https://github.com/pawarherschel/vrcx-insights")[VRCX Insights]]

  #align(left)[
    #text(fill: white, size: 28pt)[
      #enum(numbering: (.., n) => text(stroke: white)[#n.])[
        Single Threaded
      ][
        Multithreading
      ][
        ???
      ][
        GPU
      ][
        Profit?
      ]
    ]
  ]
]

#focus-slide(theme: "blue", show-counter: false)[#text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[== #link("https://github.com/pawarherschel/booth_archiver")[Booth Archiver]]

  #align(left)[
    #text(fill: white, size: 28pt)[
      #enum(numbering: (
        ..,
        n,
      ) => text(stroke: white)[#n.])[
        Manually Maintained Excel Sheet
      ][
        Power Automate
      ][
        Python
      ][
        Rust Single Threaded
      ][
        Multithreading
      ]
    ]
  ]
]

#focus-slide(theme: "blue", show-counter: false)[#text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[= Creative exploration]]

#focus-slide(theme: "lblue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[== Photoshop]
]

#focus-slide(theme: "lblue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[=== VRoid Model]
  #text(size: 28pt)[
    #figure(image("kait.png", height: 70%), caption: [VRoid Model "Kait"])
  ]
]

#focus-slide(theme: "lblue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[== Pixel Art and Vector Graphics]
]

#focus-slide(theme: "lblue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[=== Pixel Art]
  #text(size: 26pt)[
    #figure(
      image("rfl.png", height: 70%),
      caption: [Fanart for the meetup "#link("https://lunch.rs/")[Rust for Lunch]"],
    )
  ]
]

#focus-slide(theme: "lblue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[== Logo]
  #text(size: 26pt)[
    #figure(
      image("kibty.svg", height: 60%),
      caption: [Logo],
    )
  ]
]

#focus-slide(theme: "dblue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
    size: 42pt,
    fill: rgb("#00000077"),
  )[#smallcaps[This Page Has Been Intentionally Left Blank]]
]

#focus-slide(theme: "lblue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[== Scanlation]
]

== #link("https://github.com/pawarherschel/krita-palette-creator")[GIMP Palette Creator]

#text(size: 22pt)[
  #columns(2)[
    #figure(
      image("env.png", height: 52.3%),
      caption: [Original Image],
    )
    #colbreak()
    #figure(
      image("env.png.5.png", height: 63.1%),
      caption: [Quantized Image],
    )
  ]
  #figure(
    image("env.png.5.png.gpl.png", height: 10%),
    caption: [Generated Palette with Quantization = 5],
  )
]

#pagebreak()

#focus-slide(theme: "dblue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
    size: 42pt,
    fill: rgb("#00000077"),
  )[#smallcaps[This Page Has Been Intentionally Left Blank]]
]

#focus-slide(theme: "lblue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[= Background]
]

#focus-slide(theme: "dblue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
    size: 42pt,
    fill: rgb("#00000077"),
  )[#smallcaps[This Page Has Been Intentionally Left Blank]]
]

#focus-slide(theme: "lblue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[= Why Aalto?]
]

#focus-slide(theme: "lblue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[= Conclusion]
]

#focus-slide(theme: "dblue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
    size: 42pt,
    fill: rgb("#00000077"),
  )[#smallcaps[This Page Has Been Intentionally Left Blank]]
]

#focus-slide(theme: "lblue", show-counter: false)[
  #text(size: 28pt)[
    #figure(
      image("viridianmasquerade.png", height: 90%),
      caption: [Tumblr Post by #link("https://viridianmasquerade.tumblr.com/")[viridianmasquerade]],
    )
  ]
]

#focus-slide(theme: "lblue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
    size: 42pt,
    fill: rgb("#00000077"),
  )[
    #quote(
      attribution: link("https://viridianmasquerade.tumblr.com/post/634434560565936128/smokeinsilence-have-you-ever-noticed-you-pick-up")[viridianmasquerade],
    )[... I am a mosaic of everyone I've ever loved, even for a heartbeat.]
  ]
]

#focus-slide(theme: "dblue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
    size: 42pt,
    fill: rgb("#00000077"),
  )[#smallcaps[This Page Has Been Intentionally Left Blank]]
]
#focus-slide(theme: "lblue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
    size: 42pt,
    fill: rgb("#00000077"),
  )[
    #quote(attribution: [Herschel Pravin Pawar])[I am the culmination of everything I've learnt]
  ]
]
