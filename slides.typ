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

#show list: set list(marker: [-])

// Taken from the theme repository
#let _custom-quote(it, lquote, rquote) = {
  v(1em)
  box(
    fill: luma(86.27%, 0%), // alpha changed from 100% to 0%
    outset: 1em,
    width: 90%, // changed width from 100% to 90%
    // smartquote() doesn't work properly here,
    // probably because we're in a block
    lquote
      + it.body
      + rquote
      + if it.attribution != none {
        set text(size: 0.8em)
        linebreak()
        h(1fr)
        [\~ #it.attribution] // added a `~` to the start of attribution
      },
  )
}


#show quote: it => [
  #_custom-quote(it, "« ", " »")
]

#title-slide[]

= Self Introduction

#grid(
  columns: 2,
  rows: 1,
  align: horizon + center,
  column-gutter: 2%,
  [#image("me.png", alt: "image of Herschel Pravin Pawar", height: 82%)],
  [
    #align(left)[
      #grid(
        columns: 2,
        rows: 1,
        column-gutter: 2%,
        [#image("kibty.svg", height: 3em)],
        [
          *Herschel Pravin Pawar*
          #link("https://sakurakat.systems")[
            #text(fill: black)[
              sakurakat.systems
            ]
          ]
        ],
      )
    ]
    #align(bottom)[
      #grid(
        columns: 2,
        rows: 1,
        align: left + horizon,
        column-gutter: 2%,
        [#image("cc.logo.svg", height: 1em)],
        [
          #link("https://github.com/pawarherschel/UniOfAalto")[
            #text(size: 16pt, fill: black)[GitHub:pawarherschel/UniOfAalto]
          ]
        ],
      )
    ]
  ],
)



#focus-slide(theme: "blue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[= Highlights]

  #box(width: 80%)[
    #align(horizon + left)[
      #text(fill: white, size: 28pt)[
        #enum(numbering: n => "+")[
          #link("https://github.com/pawarherschel/CovUniGJ2024")[#text(
              fill: white,
            )[Coventry University's Summer School Game Jam]]][
          #link("https://github.com/pawarherschel/GMTK2023")[#text(fill: white)[GMTK's 2023 Game Jam]]][
          Bevy
        ]
      ]
    ]
  ]
]

#focus-slide(theme: "blue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[
    == #link("https://github.com/pawarherschel/CovUniGJ2024")[
      #text(fill: white)[Coventry University's Summer School Game Jam]
    ]
  ]
]

#focus-slide(theme: "lblue", show-counter: false)[
  #table(
    columns: 1, rows: 2, stroke: 0pt,
    [#block(height: 50%, width: 100%)[Continous Change]],
    table.hline(stroke: 1pt + white),
    [#block(height: 50%, width: 100%)[2D Platformer]]
  )
]

#focus-slide(theme: "lblue", show-counter: false)[
  #text(size: 28pt)[
    #figure(
      image("hero switching.gif", height: 70%),
      caption: [Hero Switching],
    )
  ]
]

#focus-slide(theme: "lblue", show-counter: false)[
  #text(size: 28pt)[
    #figure(
      image("shashank and me.jpg", height: 73%),
      caption: [Us],
    )
  ]
]

#focus-slide(theme: "lblue", show-counter: false)[
  #text(size: 28pt)[
    #figure(
      image("player.svg", height: 70%),
      caption: [Player Architecture],
    )
  ]
]

#focus-slide(theme: "lblue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[== #link("https://github.com/pawarherschel/GMTK2023")[#text(fill: white)[GMTK's 2023 Game Jam]]]
]


#focus-slide(theme: "lblue", show-counter: false)[Roles Reversed]

#focus-slide(theme: "lblue", show-counter: false)[
  #text(size: 28pt)[
    #figure(
      image("Cosmos Conquerors.png", height: 68%),
      caption: [Screenshot],
    )
  ]
]

#focus-slide(theme: "lblue", show-counter: false)[
  #columns(2)[
    #text(size: 28pt)[
      #figure(
        image("invaders shooting.gif", height: 75%),
        caption: [Invaders Shooting],
      )
      #colbreak()
      #figure(
        image("two invaders shooting.gif", height: 75%),
        caption: [Two Invaders Shooting],
      )
    ]
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

#focus-slide(theme: "blue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[== Bevy]
  #block(width: 80%)[
    #align(left)[
      #text(fill: white, size: 28pt, font: "JetBrains Mono NL")[
        #enum(numbering: it => text(fill: white)[#it.])[
          #link("https://github.com/pawarherschel/bevy-pong")[#text(fill: white)[Pong]] (you can imagine)
        ]
      ]
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
  )[== #link("https://github.com/pawarherschel/vrcx-insights")[#text(fill: white)[VRCX Insights]]]
  #box(width: 80%)[
    #align(horizon + left)[
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
]

#focus-slide(theme: "blue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[== #link("https://github.com/pawarherschel/booth_archiver")[#text(fill: white)[Booth Archiver]]]
  #box(width: 80%)[
    #align(left)[
      #text(fill: white, size: 28pt)[
        #enum(
          numbering: (
            ..,
            n,
          ) => text(stroke: white)[#n.],
        )[
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
]

#focus-slide(theme: "blue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[= Creative exploration]
]

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
  )[== Pixel Art and #linebreak() Vector Graphics]
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
      caption: [Fanart for the meetup "#link("https://lunch.rs/")[#text(fill: white)[Rust for Lunch]]"],
    )
  ]
]

#focus-slide(theme: "lblue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[=== Logo]
  #text(size: 26pt)[
    #figure(
      image("kibty.svg", height: 60%),
      caption: [Logo],
    )
  ]
]

#focus-slide(theme: "lblue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[== Scanlation]
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
  == #link("https://github.com/pawarherschel/krita-palette-creator")[#text(fill: white)[GIMP/Krita Palette Creator]]
]

#focus-slide(theme: "lblue", show-counter: false)[
  #text(size: 20pt)[
    #columns(2)[
      #figure(
        image("env.png", height: 57.3%),
        caption: [Original Image],
      )
      #colbreak()
      #figure(
        image("env.png.5.png", height: 57.3%),
        caption: [Quantized Image],
      )
    ]
    #figure(
      image("env.png.5.png.gpl.png", height: 10%),
      caption: [Generated Palette with Quantization = 5],
    )
  ]
]

#focus-slide(theme: "lblue", show-counter: false)[
  #text(
    font: "NotoSerif NF",
    style: "italic",
    weight: "light",
    stretch: 70%,
  )[=== Rosettacode]
  #linebreak()
  #text(size: 0.8em)[
    Contribution available at
    #linebreak()
    #link("https://rosettacode.org/wiki/Color_quantization#Rust")[#text(fill: white)[Color quantization/Rust]]
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
  )[= Background]
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

#focus-slide(theme: "lblue", show-counter: false)[
  #text(size: 28pt)[
    #figure(
      image("viridianmasquerade.png", height: 90%),
      caption: [Tumblr Post by #link("https://viridianmasquerade.tumblr.com/")[#text(fill: white)[viridianmasquerade]]],
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
  )[
    #quote(
      attribution: link("https://viridianmasquerade.tumblr.com/post/634434560565936128/smokeinsilence-have-you-ever-noticed-you-pick-up")[#text(
          fill: white,
        )[viridianmasquerade]],
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
    size: 38pt,
  )[
    #quote[I am the culmination of everything I've learnt]
  ]
]

= Acknowledgement

#align(horizon)[
  #text[
    - #highlight(fill: colorthemes.lblue.at(1), extent: 10pt, radius: 30%)[fivepb] for helping me push through when I wasn't able to
    - #highlight(fill: colorthemes.lblue.at(1), extent: 10pt, radius: 30%)[mlembug] for going through the script
    - #highlight(fill: colorthemes.lblue.at(1), extent: 10pt, radius: 30%)[Shashank] and #highlight(fill: colorthemes.lblue.at(1), extent: 10pt, radius: 30%)[Divyesh] for checking the presentation
    - #highlight(fill: colorthemes.lblue.at(1), extent: 10pt, radius: 30%)[Henna] for helping me practice and pushing me towards getting higher education
    - and many many many other people
  ]
]

= Heavily Inspired by

#align(horizon)[
  #text[
    - #link("https://www.youtube.com/@Acerola_t")[#text(fill: black)[Acerola]] for the general vibes of the presentation
    - #link("https://www.youtube.com/@NoBoilerplate")[#text(fill: black)[No Boilerplate]] for the introduction
  ]
]

#align(bottom)[
  Made with #text(fill: rgb("#b19cd9"))[#emoji.heart.purple] using
  - #link("https://typst.app/")[#text(fill: black)[#image("typst.svg", alt: "Typst", height: 1em)]]
  - #box[#link("https://touying-typ.github.io/")[#text(fill: black)[#image("touying.png",alt: "Touying", height: 1em)]]] and #link("https://github.com/spidersouris/touying-unistra-pristine")[#text(fill: black)[Unistra Pristine Theme]]
  - #link("https://www.jetbrains.com/lp/mono/")[#text(fill: black, font: "Jetbrains Mono")[JetBrains Mono]] and #link("https://fonts.google.com/noto/specimen/Noto+Serif")[#text(fill: black, font: "NotoSerif NF")[NotoSerif]]
]
