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
  config-info(
    title: [Introduction Video],
    subtitle: [
      University of Aalto
      #text(size: 0.8em)[
        #par(justify: true)[
          #alert[Context:]
          - Text #underline(stroke: (paint: alert-secondary-color, dash: "densely-dashed"))[underlined with dashes] are links
          - Acknowledgements at the end of the presentation
          - Text using #text(font: "Noto Serif")[Noto Serif] are supposed to be "#text(font: "Noto Serif")[creative]" elements
          - List of tables, images, and links are in the Appendix at the end
            - Download the presentation from #[#link("https://github.com/pawarherschel/UniOfAalto/blob/main/condensed-slides.pdf")[Link to slides: GitHub:pawarherschel/UniOfAalto:condensed-slides.pdf] <links>] to view them
        ]
      ]
    ],
    author: [Herschel Pravin Pawar],
    date: datetime.today().display("[month repr:long] [day], [year repr:full]"),
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

#set quote(block: true)
#show quote: set align(center)
#show quote: set text(font: "Noto Serif")
#show quote: it => {
  grid(
    rows: 3,
    columns: 3,
    text(size: 3em, baseline: 0.5em)[“], [], [],
    [], text(style: "italic")[#it.body], [],
    [], [], text(size: 3em)[”],
  )
  align(right)[-- #it.attribution]
}

#let blank-slide = focus-slide(config: (freeze-slide-counter: false))[
  #text(
    font: "Noto Serif",
    style: "italic",
    weight: "light",
    stretch: 70%,
    size: 39.3pt,
    fill: focus-text-color,
  )[
    #smallcaps[This Page Has Been Intentionally Left Blank]
  ]
]

#let filepath(file, full-file: none) = {
  let file = file.codepoints().map(c => [#sym.wj#c]).join()
  let file-at = "preview file".codepoints().map(c => [#sym.wj#c]).join()
  let full-file-at = "original file".codepoints().map(c => [#sym.wj#c]).join()
  let joiner = [~#sym.wj\@#sym.wj~]
  if full-file == none {
    text(size: 0.7em)[#linebreak()#full-file-at#joiner#file]
  } else {
    text(size: 0.7em)[
      #linebreak()
      #file-at#joiner#file
      #linebreak()
      #full-file-at#joiner#full-file
    ]
  }
}

#title-slide()

= \= Outline <touying:hidden>

#align(top)[
  #outline(title: none)
]

= Self Introduction

== Who am I?

#grid(
  columns: 2,
  rows: 1,
  align: center,
  column-gutter: 2%,
  block(height: 1fr)[
    #figure(
      image(
        "me.png",
        alt: "image of Herschel Pravin Pawar",
        fit: "contain",
        height: 1fr,
      ),
      caption: [Image of me #filepath("me.png")],
    )
  ],
  align(left + horizon)[
    #text(size: 27pt)[
      #grid(
        rows: 1,
        columns: 2,
        column-gutter: 2%,
        image("kibty.svg", height: 3em),
        align(left + horizon)[
          #alert[Herschel Pravin Pawar]
          #linebreak()
          #text(
            font: "Noto Serif",
            size: 0.8em,
          )[#link("https://sakurakat.systems")[sakurakat.systems] <links>]
        ],
      )
    ]
    #align(bottom)[
      #text(size: 1em)[
        #par(justify: true)[
          #text(size: 0.695em)[
            Everything you see in this video --- scripts, links, and images --- are a part of a Typst document available freely on GitHub under a public domain licence.
          ]
        ]
        #grid(
          rows: 1,
          columns: 2,
          align: left + horizon,
          column-gutter: 2%,
          image("cc.logo.svg", height: 1em),
          [#link("https://github.com/pawarherschel/UniOfAalto")[GitHub:pawarherschel/UniOfAalto] <links>],
        )
      ]
    ]
  ],
)

= #[#link("https://github.com/pawarherschel/CovUniGJ2024")[Coventry University Summer School Game Jam] <links>]

#text(font: "Noto Serif")[#link("https://pawarherschel.itch.io/fractured-elements")[#alert[Fractured Elements]] <links>]

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
      caption: [#link("https://itch.io/jam/summer-school-24/rate/2856755")[Coventry University Game Jam Results] <links>],
    )

    #align(left)[
      #rect(stroke: alert-secondary-color)[
        #box(inset: 2%)[
          #par(justify: true)[
            #text(size: 0.8em)[
              Judge Feedback:
              ```
              Visually nice platformer game with a pixel art approach and switching characters that allow either melee or ranged attacks. Multiple levels make it interesting and force the player to master their jumping and attacking skills. There is a final boss for the finale. One improvement I would suggest is that I was unsure what caused me to change between the characters - I was not sure if it was timed, depending on where I was in the level or a button press. Well done to all involved in the game and the hard work you put into it!
              ```
            ]
          ]
        ]
      ]
    ]
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

== The Team

#block(height: 1fr, width: 100%)[
  #align(center + horizon)[
    #figure(
      image(
        "shashank and me.jpg",
        height: 1fr,
        fit: "contain",
      ),
      caption: [Us #filepath("shashank and me.jpg")],
    )
  ]
]

== Main Mechanic

#block(height: 1fr, width: 100%)[
  #figure(
    image("hero switching.gif", height: 1fr, fit: "contain"),
    caption: [Hero Switching Mechanic #filepath("hero switching.gif")],
  )
]

== Player Architecture

#block(height: 1fr, width: 100%)[
  #figure(
    image("player.svg", fit: "contain", height: 1fr),
    caption: [Player Architecture #filepath("player.svg")],
  )
]

= #[#link("https://github.com/pawarherschel/GMTK2023")[Game Maker ToolKit's 2023 Game Jam] <links>]

#text(font: "Noto Serif")[#link("https://pawarherschel.itch.io/cosmos-conquerors")[#alert[Cosmos Conquerors]] <links>]

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
      caption: [#link("https://itch.io/jam/gmtk-2023/rate/2155150")[GMTK's 2023 Game Jam Results] <links>],
    )
  ]
]

== Theme

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
      caption: [Screenshot #filepath("Cosmos Conquerors.png")],
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
      caption: [All Invaders Shooting #filepath("invaders shooting.gif")],
    ),
    figure(
      image("two invaders shooting.gif", width: 100%, fit: "contain"),
      caption: [Two Invaders Shooting #filepath("two invaders shooting.gif")],
    ),
  )
]

= #[#link("https://bevyengine.org/")[Bevy] <links>]

#text(font: "Noto Serif")[#link("https://github.com/pawarherschel/bevy-pong")[#alert[Pong]] <links>]

#blank-slide

= Other Projects

== #text(font: "Noto Serif")[#link("https://github.com/pawarherschel/vrcx-insights")[VRCX Insights] <links>]

#block(height: 1fr, width: 100%)[
  #figure(
    image("cropped-direct-preview.png", height: 1fr, fit: "contain"),
    caption: [A _VERY_ zoomed out view of the graph produced #filepath("cropped-direct-preview.png", full-file: "cropped-direct.jpg")],
  )
]

---

=== Output Metadata

#text(size: 0.822em)[
  number of labels in the DOT file: #alert[$ 1835 "labels" $]

  total lines in the DOT file: #alert[$ 102,560 "lines" $]

  size of svg: #alert[$ 33.7 "MB" (35,402,018 "bytes") $]

  png output code (using #alert[typst]):
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

== #text(font: "Noto Serif")[#link("https://github.com/pawarherschel/booth_archiver")[Booth Archiver] <links>]

#block(height: 1fr, width: 100%)[
  #figure(
    image("booth_archiver.png", height: 1fr, fit: "contain"),
    caption: [One of the spreadsheets generated by the program #filepath("booth_archiver.png")],
  )
]

== #text(
  font: "Noto Serif",
)[#link("https://github.com/pawarherschel/krita-palette-creator")[Krita/GIMP Palette Generator] <links>]

#block(height: 1fr, width: 100%)[
  #columns(2)[
    #figure(
      image("env-preview.png", width: 100%, fit: "contain"),
      caption: [Original Image #filepath(
        "env-preview.png",
        full-file: "env.png"
        )],
    )
    #colbreak()
    #figure(
      image("env.png.5-preview.png", width: 100%, fit: "contain"),
      caption: [Quantized Image #filepath("env.png.5-preview.png", full-file: "env.png.5.png")],
    )
  ]
  #block(height: 1fr)[
    #figure(
      image(
        "env.png.5.png.gpl.png.linear.png",
        height: 1fr,
        fit: "contain",
      ),
      caption: [Color palette generated with quantization level 5 #filepath("env.png.5.png.gpl.png.linear.png")],
    )
  ]
]

---

#block(width: 100%, height: 1fr)[
  #align(top)[=== Rosettacode]

  #align(center)[
    #block(height: 1fr, width: 100%)[
      #text(size: 0.7em)[
        #alert[Note: the funny color bar on top of the frog image is intentional.]
      ]

      #grid(
        rows: 1,
        columns: 2,
        inset: 2%,
        figure(
          image("Quantum_frog.png", height: 1fr, fit: "contain"),
          caption: [Original Image #filepath("Quantum_frog.png")],
        ),
        figure(
          image("Quantum_frog.png.rust.4.png", height: 1fr, fit: "contain"),
          caption: [Quantized Image #filepath("Quantum_frog.png.rust.4.png")],
        ),
      )
    ]
  ]

  #align(center)[
    Contribution available at #link("https://rosettacode.org/wiki/Color_quantization#Rust")[Color quantization/Rust]
  ]
]

== #text(font: "Noto Serif")[Kait]

#block(height: 1fr, width: 100%)[
  #figure(
    image(
      "kait.png",
      height: 1fr,
      fit: "contain",
    ),
    caption: [OC #text(font: "Noto Serif")[Kait] - Made with the help of VRoid Studio #filepath("kait.png")],
  )
]

== #text(font: "Noto Serif")[Other Creative Stuff]

#block(height: 1fr, width: 100%)[
  #text(size: 0.8em)[
    #grid(
      rows: 1,
      columns: 3,
      inset: 1%,
      figure(
        image(
          "rfl.png",
          height: 1fr,
          fit: "contain",
        ),
        caption: [Fanart for the meetup "#link("lunch.rs")[Rust for Lunch]" #filepath("rfl.png")],
      ),
      figure(
        image(
          "fractured-elements-logo.png",
          height: 1fr,
          fit: "contain",
        ),
        caption: [Logo for the game "Fractured Elements" #filepath("fractured-elements-logo.png")],
      ),
      figure(
        image(
          "kibty.svg",
          height: 1fr,
          fit: "contain",
        ),
        caption: [Logo for my website #filepath("kibty.svg")],
      ),
    )
  ]
]

= Goals for 2025

#text(size: 0.8em)[#text(fill: white)[These are in no specific order]]

== Goal --- Short Description --- Why?

#par(justify: true)[
  #text(
    stroke: alert-secondary-color,
  )[- #[#link("https://wgpu.rs/")[#alert[WGPU]] <links>] --- an implementation of WebGPU spec in rust --- to interact with the GPU]
  - #alert[GPGPU] --- Hardware Acceleration --- Offloading tasks and doing them in parallel
  - #[#link("https://cranelift.dev/")[#alert[Cranelift]] <links>] --- an alternative to LLVM --- creating custom scripting languages for game engines
  - #alert[Technical art] --- bridging programming, art, and mathematics --- I am facinated by gpus and shaders
  - #alert[Good Stateless Abstractions] --- Inspired by #[#link("https://nixos.org/")[#alert[NixOS]]<links>], functional programming, and #[#link("https://wgpu.rs/")[#alert[WGPU]] <links>] --- Creating good abstractions which reduce conginitive load
  #text(
    stroke: alert-secondary-color,
  )[- #alert[Giving technical talks] --- Inspiring Others --- #[#link("https://www.galaxykate.com/")[#alert[Kate Compton]] <links>] inspired me, and I want to inspire others, just like her (#[#link("https://www.youtube.com/watch?v=WumyfLEa6bU")[#alert[video]]<links>])]
]

= Why Aalto
#text(size: 0.8em)[#text(fill: white)[and also acknowledgements]]

= \= Acknowledgement <touying:hidden>

---

#align(horizon)[
  #text[
    - #alert[fivepb] for helping me push through when I wasn't able to
    - #alert[mlembug] for going through the script
    - #alert[Shashank] for checking the presentation
    - #alert[Divyesh] for checking the script, presentation, and video
    - #alert[Henna] for helping me practice and pushing me towards getting higher education
    - and many many many other people
  ]
]

== Heavily Inspired by

#align(horizon)[
  #text[
    - #[#link("https://www.youtube.com/@Acerola_t")[#alert[Acerola]] <links>] for the general vibes of the presentation
    - #[#link("https://www.youtube.com/@NoBoilerplate")[#alert[No Boilerplate]] <links>] for the introduction
    - #[#link("https://www.youtube.com/@chrishayuk")[#alert[Chris Hay]] <links>] for some crative inspiration (webcam editing style)
    - #[#link("https://www.youtube.com/@Leadhead")[#alert[Leadhead]] <links>] for some more creative inspiration (game backgrounds while speaking to the camera)
  ]
]

#let catppuccin-gradient = gradient.linear(
  rgb(245, 224, 220),
  rgb(242, 205, 205),
  rgb(245, 194, 231),
  rgb(203, 166, 247),
  rgb(243, 139, 168),
  rgb(235, 160, 172),
  rgb(250, 179, 135),
  rgb(249, 226, 175),
  rgb(166, 227, 161),
  rgb(148, 226, 213),
  rgb(137, 220, 235),
  rgb(116, 199, 236),
  rgb(137, 180, 250),
  rgb(180, 190, 254),
)

#align(bottom)[
  Made with #text(fill: rgb("#b19cd9"))[#emoji.heart.purple] using
  - #box[#image("typst.svg", height: 1em)] #[#link("https://typst.app/")[#alert[Typst]] <links>] --- an alternative to LaTeX #text(size: 0.7em)[\/\/ sorry couldn't figure out how to do make the logo visible without altering it]
  - #box[#image("touying.png", alt: "Touying", height: 1em)] #[#link("https://touying-typ.github.io/")[#alert[Touying]] <links>] --- Slides
  - #box[#image("catppuccin.png", height: 1em)] #text(fill: catppuccin-gradient)[
      #[#link("https://catppuccin.com/")[Catppuccin Theme] <links>] --- Colors
      #box(width: 1fr)[
        #rect(
          height: 1em,
          stroke: none,
          fill: catppuccin-gradient,
          width: 100%,
        )
      ]
    ]
  - #[#link("https://www.jetbrains.com/lp/mono/")[#alert[#text(font: "Jetbrains Mono")[JetBrains Mono]]] <links>] --- General font
  - #text(
      font: "Noto Serif",
    )[#[#alert[#link("https://fonts.google.com/noto/specimen/Noto+Serif")[Noto Serif] <links>] --- Font for more "creative" aspects]]
]

== End Slide

- #alert[Repository]: #[#link("https://github.com/pawarherschel/UniOfAalto")<links>]
- #alert[Script Source]: #[#link("https://github.com/pawarherschel/UniOfAalto/blob/main/condensed-script.typ")<links>]
- #alert[Compiled Script]: #[#link("https://github.com/pawarherschel/UniOfAalto/blob/main/condensed-script.pdf")<links>]
- #alert[Slides Source]: #[#link("https://github.com/pawarherschel/UniOfAalto/blob/main/condensed-slides.typ")<links>]
- #alert[Compiled Slides]: #[#link("https://github.com/pawarherschel/UniOfAalto/blob/main/condensed-slides.pdf")<links>]
- #alert[Portfolio Link]: #[#link("https://sakurakat.systems/portfolio/")<links>]
- #alert[Source of Truth for Portfolio and CV]: #[#link("https://github.com/pawarherschel/typst/blob/main/SOT.toml")<links>]
- #alert[CV]: #[#link("https://github.com/pawarherschel/typst/blob/main/output/CV.pdf")<links>]

= Ending Note

== Tumblr Post

#block(height: 1fr, width: 100%)[
  #figure(
    image("viridianmasquerade.png", height: 1fr, fit: "contain"),
    caption: [Tumblr Post by #[
      #link("https://viridianmasquerade.tumblr.com/")[
          viridianmasquerade
        ]<links>
      ] #filepath("viridianmasquerade.png")
    ],
  )
]

---

#align(top)[=== THE Line]

#quote(
  attribution: [
    #[
      #link("https://viridianmasquerade.tumblr.com/")[
        viridianmasquerade
      ]<links>
    ]
  ],
)[
  #link("https://viridianmasquerade.tumblr.com/post/634434560565936128/smokeinsilence-have-you-ever-noticed-you-pick-up")[
    I am a mosaic of everyone I've ever loved, even for a heartbeat.
  ]<links>
]

#blank-slide

#align(top)[=== My Heart]

#quote(attribution: [Herschel Pravin Pawar])[
  I am the culmination of everything I've learnt
]

#show: appendix

= Appendix

#focus-slide(config: (freeze-slide-counter: false))[
  *The page numbers refer to the _PDF_ page numbers and not the Slide page numbers*
]

== List of Images
#align(top + left)[
  #context {
    for figure in query(figure.where(kind: image)) {
      let caption = figure.caption
      let page = figure.location().page()

      text(size: 0.9em)[- #caption #h(1fr) #link(figure.location())[#page]]
    }
  }
]

== List of Tables

#align(top + left)[
  #context {
    for figure in query(figure.where(kind: table)) {
      let caption = figure.caption
      let page = figure.location().page()

      text(size: 0.9em)[- #caption #h(1fr) #link(figure.location())[#page]]
    }
  }
]

== Table of Links

#let content-to-text1 = c => if c.has("text") {
  c.text
} else if c.has("children") {
  c.children.map(child => content-to-text0(child))
} else if c.has("styled") {
  content-to-text0(c.child)
}

#let content-to-text0 = c => if c.has("text") {
  c.text
} else if c.has("children") {
  c.children.map(child => content-to-text1(child)).join("")
} else if c.has("child") {
  content-to-text1(c.child)
}

#let content-to-text = content-to-text0

#align(top + left)[
  #context {
    let q = query(<links>)
    let bodies = q.map(l => {
      if not l.has("body") {
        text(stroke: red, size: 30pt)[SOMETHING HAS WENT WRONG!!!!! --- #l]
      } else {
        content-to-text(l.body)
      }
    })
    let hyperlinks = q.map(l => {
      if not l.has("dest") {
        text(stroke: red, size: 30pt)[SOMETHING HAS WENT WRONG!!!!! --- #l]
      } else {
        l.dest
      }
    })
    let pages = q.map(l => l.location())

    let elems = bodies
      .zip(hyperlinks)
      .zip(pages)
      .map(e => {
        let ((a, b), c) = e

        (a, b, c)
      })

    show table.cell: box
    show table.cell: set box(inset: 5pt)
    show table.cell: set align(left + horizon)

    table(
      columns: 3,
      table.header(repeat: true, [pg#linebreak()no], [Accompanying Text], [Link Destination]),
      ..for (idx, (a, b, c)) in elems.enumerate() {
        ([#link(c)[#c.page()]], [#a], [#link(b)])
      },
    )
  }
]
