#let slide = counter("slide")
#let time-elapsed = state("time-elapsed", 0)

#let script-target = 110

#let double-digit(number) = if str(number).len() >= 2 {
  number
} else {
  [0#number]
}

#let double-digit-trunc(number) = if str(calc.trunc(number)).len() >= 2 {
  calc.trunc(number)
} else {
  [0#calc.trunc(number)]
}

#let format-time(seconds) = if seconds < 60 {
  [00:#double-digit-trunc(seconds)]
} else {
  let minutes = calc.trunc(seconds / 60)
  let seconds = calc.rem(seconds, 60)
  [#double-digit-trunc(minutes):#double-digit-trunc(seconds)]
}

#let next-slide(budget: 0, content) = [
  #rect(width: 100%, inset: 1em)[
    #align(horizon + center)[
      #block[
        / slide: #context slide.display() | #[#content]

        #let time = context {
          format-time(time-elapsed.get())
        }

        #let time-left = context {
          format-time(script-target - time-elapsed.get())
        }

        #align(left)[
          Budget: #double-digit(budget)\s #linebreak()
          Time Elapsed: #time#linebreak()
          Time Left: #time-left
        ]

        #time-elapsed.update(x => x + budget)
      ]
    ]
  ]
  #slide.step()
]

#let slow-down-hint(content) = [

  ---\/ #highlight[#content] \/---

]

#let breath = [
  |#box(width: 1fr)[
    #repeat[---]
  ]
  BREATH
  #box(width: 1fr)[
    #repeat[---]
  ]|
]

OUTLINE:

#context {
  for slide in query(<slides>) {
    let page = slide.location()

    let title = slide
      .children
      .at(1)
      .body
      .children
      .at(1)
      .body
      .children
      .at(1)
      .body
      .children
      .at(1)
      .description
      .children
      .last()

    [+ #title #box(width: 1fr)[#repeat()[---]] #link(page)[#page.page()]]
  }
}

text written like #slow-down-hint[this] is hard for me to speak fast

and needs to be spoken slower

script target (in seconds): #script-target (#format-time(script-target))

#set page(margin: (left: 15em, right: 15em))

#next-slide(budget: 2.5)[Title Slide]<slides>

I'm going to talk fast,

so you might need to pause

and

read the slides.

#breath

#next-slide(budget: 0.5)[Self Introduction]<slides>

Heya,

#next-slide(budget: 4.5)[Who am I?]<slides>

my name is Herschel Pravin Pawar.

This video has been recorded as part of my

Aalto application.

#breath

#next-slide(budget: 2.5)[Coventry University Summer School Game Jam]<slides>

I participated in the

#slow-down-hint[Summer School] for #slow-down-hint[Game Development].

#next-slide(budget: 2)[Result]<slides>

We wrapped up with a game jam,

and these are the results.

#next-slide(budget: 2)[Themes]<slides>

The themes were #slow-down-hint[Continuous Change] and #slow-down-hint[2D Platformer].

#breath

#next-slide(budget: 3.5)[The Team]<slides>

We created #slow-down-hint[Fractured Elements],

featuring a player with cycling #slow-down-hint[elemental] powers

#next-slide(budget: 4)[Main Mechanic]<slides>

I focused on making the gameplay

while my partner focused on

the creative aspects of the game.

#breath

#next-slide(budget: 6)[Player Architecture]<slides>

the player code I wrote

was reused for the final boss

and the high-level code was #slow-down-hint[generic] over #slow-down-hint[weapons]

and

#slow-down-hint[elemental powers].

#breath

#next-slide(budget: 2.5)[#[Game Maker ToolKit's 2023 Game Jam]]<slides>

I taught myself Godot

and

participated in a game jam.

#next-slide(budget: 3)[Result]<slides>

These were the results.

There were over #slow-down-hint[six thousand seven hundred] submissions.

#next-slide(budget: 1.5)[Theme]<slides>

The theme was #slow-down-hint[Roles Reversed].

#breath

#next-slide(budget: 3.5)[Gameplay]<slides>

In the game,

players control aliens

fighting to survive

against heros.

#next-slide(budget: 6.5)[Main Mechanic]<slides>

A random alien fires

while space bar is pressed

requiring the player

to choose between

having #slow-down-hint[predictability]

or

having more health.

#breath

#next-slide(budget: 4)[Bevy]<slides>

Recently,

I've been learning Bevy,

a #slow-down-hint[Rust-based] #slow-down-hint[ECS] #slow-down-hint[game engine].

#next-slide(budget: 4.5)[EMPTY SLIDE]<slides>

So far,

I've remade pong.

I'm using the project to learn

how to make online #slow-down-hint[multiplayer] games.

#breath

#next-slide(budget: 1.5)[Other Projects]<slides>

Some other projects include:

#next-slide(budget: 5.5)[VRCX Insights]<slides>

VRCX Insights

A #slow-down-hint[data mining] tool to extract friend circles

by corelating

people who are in the same room.

#next-slide(budget: 2)[Output Metadata]<slides>

You can see

why I had to zoom out the image so much.

#breath

#next-slide(budget: 4.5)[Booth Archiver]<slides>

Another project is Booth Archiver,

which compiles your Booth wish list

into a spreadsheet.

#next-slide(budget: 4)[Krita/GIMP Palette Generator]<slides>

I also created a tool

which quantizes given image

and

generates a palette from it.

#next-slide(budget: 3)[Rosettacode]<slides>

I also contributed

the code I wrote

to Rosettacode.

#breath

#next-slide(budget: 2.5)[Kait]<slides>

The textures for my OC

were made using Photoshop.

#next-slide(budget: 2)[Other Creative Stuff]<slides>

Here are some of the artworks I've made

#next-slide(budget: 2)[Goals for 2024]<slides>

These are some of my goals

for

2025

#next-slide(budget: 3)[Goal --- Short Description --- Why?]<slides>

the most important being

#slow-down-hint[WGPU] and #slow-down-hint[public speaking]

#breath

#next-slide(budget: 4.5)[Why Aalto]<slides>

I'm active in #slow-down-hint[Rust]

and

#slow-down-hint[queer meetups],

always striving to create a #slow-down-hint[welcoming atmosphere]

and

support others.

#breath

#next-slide(budget: 7.5)[Acknowledgement]<slides>

This #slow-down-hint[collaborative] spirit is something I value deeply

and

is one of the main reasons that the #slow-down-hint[multidisciplinary],

project-based approach at Aalto resonates with me.

#breath

#next-slide(budget: 3.5)[Heavily Inspired by]<slides>

I believe that innovation #slow-down-hint[thrives] when people from #slow-down-hint[diverse backgrounds] come together,

#next-slide(budget: 6.5)[End Slide]<slides>

and Aalto's #slow-down-hint[environment] provides

the perfect space

to exchange ideas

and grow,

both technically

and personally.

#next-slide(budget: 2.5)[Ending Note]<slides>

To close,

I'd like to share something

I saw on Tumblr

#next-slide(budget: 2)[Tumblr Post]<slides>

Its a post by

#slow-down-hint[viridian masquerade]

#next-slide(budget: 1.5)[THE Line]<slides>

This resonated very deeply with me

#next-slide(budget: 5)[EMPTY SLIDE]<slides>

If I was more creative,

I'd adapt it to

learning

and

growth

but I'm not

the best I can come up with is

#next-slide(budget: 2)[My heart]<slides>

#breath

...

...

...

Thank you.

#next-slide(budget: 0)[THE END]<slides>

#block[
  #align(center)[
    #text(size: 3em)[
      #box(width: 1fr)[#repeat([-])]
      Target time: #context format-time(script-target)
      #box(width: 1fr)[#repeat([-])]

      #box(width: 1fr)[#repeat([-])]

      #box(width: 1fr)[#repeat([-])]
      Total time: #context format-time(time-elapsed.get())
      #box(width: 1fr)[#repeat([-])]
    ]
  ]
]
