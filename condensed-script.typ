#let slide = counter("slide")

#let next-slide(content) = [

  #rect(width: 100%, height: 3em)[

    #align(horizon + center)[/ slide: #context slide.display() | #[#content]]

  ]

  #slide.step()

]

#let slow-down-hint(content) = [

  ---\/ #highlight[#content] \/---

]

#let breath = [|#box(width: 1fr)[#repeat[---]]#{[BREATH]}#box(width: 1fr)[#repeat[---]]|]

OUTLINE:

#context {
  for slide in query(<slides>) {
    let page = slide.location()

    let title = slide.children.at(1).at("body").children.at(1).body.description.children.last()

    [+ #title #box(width: 1fr)[#repeat()[---]] #link(page)[#page.page()]]
  }
}

text written like #slow-down-hint[this] is hard for me to speak fast

and

needs to be spoken slower

#set page(margin: (left: 15em, right: 15em))

#next-slide[Title Slide]<slides>

I'm going to talk fast,

so you might need to pause

and

read the slides.

#breath

#next-slide[Self Introduction]<slides>

Heya,

#next-slide[Who am I?]<slides>

my name is Herschel Pravin Pawar.

This video has been recorded as part of my Aalto application.

#breath

#next-slide[Coventry University Summer School Game Jam]<slides>

I participated in the

#slow-down-hint[Summer School] for #slow-down-hint[Game Development].

#next-slide[Result]<slides>

We wrapped up with a game jam,

and these are the results.

#next-slide[Themes]<slides>

The themes were #slow-down-hint[Continuous Change] and #slow-down-hint[2D Platformer].

#breath

#next-slide[The Team]<slides>

We created #slow-down-hint[Fractured Elements],

featuring a player with cycling #slow-down-hint[elemental] powers

#next-slide[Main Mechanic]<slides>

I focused on making the gameplay

while my partner focused on

the creative aspects of the game.

#breath

#next-slide[Player Architecture]<slides>

the player code I wrote

was reused for the final boss

and the high-level code was #slow-down-hint[generic] over weapons

and

#slow-down-hint[elemental powers].

#breath

#next-slide[Game Maker ToolKit's 2023 Game Jam]<slides>

I taught myself Godot

and

participated in a game jam.

#next-slide[Result]<slides>

These were the results.

There were over #slow-down-hint[six thousand seven hundred] submissions.

#next-slide[Theme]<slides>

The theme was #slow-down-hint[Roles Reversed].

#breath

#next-slide[Gameplay]<slides>

In the game,

players control aliens

fighting to survive

against heros.

#next-slide[Main Mechanic]<slides>

A random alien fires

while space bar was pressed

This required the player

to choose between

having #slow-down-hint[predictability]

or

having more health.

#breath

#next-slide[Bevy]<slides>

Recently,

I've been learning Bevy,

a #slow-down-hint[Rust-based] #slow-down-hint[ECS] #slow-down-hint[game engine].

#next-slide[EMPTY SLIDE]<slides>

So far,

I've remade pong.

I'm using the project to learn

how to make online games.

#breath

#next-slide[Other Projects]<slides>

Some other projects include:

#next-slide[VRCX Insights]<slides>

VRCX Insights

A #slow-down-hint[data mining] tool to extract friend circles

by corelating

people who are in the same room.

#next-slide[Output Metadata]<slides>

You can see

why I had to zoom out the image so much.

#breath

#next-slide[Booth Archiver]<slides>

Another project is Booth Archiver,

which compiles your Booth wish list

into a spreadsheet.

#next-slide[Krita/GIMP Palette Generator]<slides>

I also created a tool which quantizes given image

and

generates a palette from it.

#breath

#next-slide[Kait]<slides>

The textures for my OC

were made using Photoshop.

#next-slide[Goals for 2024]<slides>

These are some of my goals

for

2025

#next-slide[Goal --- Short Description --- Why?]<slides>

the most important being

#slow-down-hint[WGPU] and #slow-down-hint[public speaking]

#breath

#next-slide[Why Aalto]<slides>

I'm active in #slow-down-hint[Rust]

and

#slow-down-hint[queer meetups],

always striving to create a #slow-down-hint[welcoming atmosphere]

and

support others.

#breath

#next-slide[Acknowledgement]<slides>

This #slow-down-hint[collaborative] spirit is something I value deeply

and

is one of the main reasons that the #slow-down-hint[multidisciplinary],

project-based approach at Aalto resonates with me.

#breath

#next-slide[Heavily Inspired by]<slides>

I believe that innovation #slow-down-hint[thrives] when people from #slow-down-hint[diverse backgrounds] come together,

#breath

and Aalto's environment offers

the perfect space

to exchange ideas

and

grow,

both

technically

and

personally.
