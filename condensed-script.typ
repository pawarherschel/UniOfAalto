#let slide = counter("slide")

#let next-slide(content) = [
  #rect(width: 100%, height: 3em)[
    #align(horizon + center)[/ slide: #context slide.display() | #[#content]]
  ]
  #slide.step()
]

#let slow-down-hint(content) = {
  [---\/ #highlight[#content] \/---]
}

OUTLINE:
#context {
  for slide in query(<slides>) {
    let page = slide.location()
    let title = slide.children.at(1).at("body").children.at(1).body.description.children.last()
    [+ #title #box(width: 1fr)[#repeat()[---]] #link(page)[#page.page()]]
  }
}

text written like #slow-down-hint[this] is hard for me to speak fast and needs to be spoken slower

#set page(margin: (left: 15em, right: 15em))

#next-slide()[Title Slide]<slides>

This is my introduction video for #slow-down-hint[Aalto University's Game Design and Development program].

I'm going to talk fast, so you might need to pause the video to read the contents of the slide.

#next-slide()[Self Introduction]<slides>

---

#next-slide()[Who am I?]<slides>

Heya, my name is Herschel Pravin Pawar. This video has been recorded as part of #slow-down-hint[deliverables] for the admission process. Everything you see in this video -- scripts, links, and images -- are a part of a Typst document available freely on GitHub under a public domain licence.

#next-slide()[Coventry University]<slides>

I participated in #slow-down-hint[Coventry University's Summer School for Game Development with Unity].

#next-slide()[Result]<slides>

The summer school concluded with a game jam, and these are the results.

#next-slide()[Themes]<slides>

The themes were #slow-down-hint[Continuous Change] and #slow-down-hint[2D Platformer].

#next-slide()[The Team]<slides>

We created #slow-down-hint[Fractured Elements], featuring a player with cycling elemental powers.

#next-slide()[Main Mechanic]<slides>

I focused on making the gameplay while my partner focused on the creative aspects of the game.

#next-slide()[Player Architecture]<slides>

I'm proud that the player code I wrote was adaptable enough to be reused for the final boss and the high-level code was generic over weapons and elemental powers.

#next-slide()[Game Maker ToolKit's 2023 Game Jam]<slides>

I taught myself Godot by creating small games and eventually participated in GMTK's 2023 Game Jam.

#next-slide()[Result]<slides>

These were the results.
There were over six thousand seven hundred submissions.

#next-slide()[Theme]<slides>

The theme was Roles Reversed.

#next-slide()[Gameplay]<slides>

I designed a twist on Space Invaders: instead of killing aliens, the player controls a group of aliens fighting to survive against heroes.

#next-slide()[Main Mechanic]<slides>

The main game mechanic involved a random alien firing while space bar was pressed. This made it so the player had to choose between having predictability and having more health.

#next-slide()[Bevy]<slides>

Recently, I've been learning Bevy, a Rust-based ECS game engine.

#next-slide()[EMPTY SLIDE]<slides>

So far, I've remade pong without using any tutorials. Currently, I'm using the pong codebase to learn how to make online multiplayer games.

#next-slide()[Other Projects]<slides>

---

#next-slide()[VRCX Insights]<slides>

Some other projects I've worked on include VRCX Insights which involves data mining. It extracts friend circles by using data points of entering and leaving a room.

#next-slide()[Output Metadata]<slides>

Heres some information about the output produced.

#next-slide()[Booth Archiver]<slides>

Another project is Booth Archiver, which compiles your Booth wish list into a simple, user-friendly Excel spreadsheet.

#next-slide()[Krita/GIMP Palette Generator]<slides>

I've also created a palette generator that quantizes an image and generates a palette from it.

#next-slide()[Kait]<slides>

Other than programming, I also taught myself how to use Photoshop to create textures for my OC --- Kait.

#next-slide()[Current Interests]<slides>

In no specific order these are some of the topics im interested in learning, you can pause the video to read about them in more detail:

- WGPU
- Cranelift
- Stateless Abstractions
- Technical art
- GPGPU
- Giving technical talks

#next-slide()[Why Aalto]<slides>

I actively participate in local Rust and queer meetups, always striving to create a welcoming atmosphere and support others.

#next-slide()[Acknowledgement]<slides>

This collaborative spirit is something I value deeply and is one of the main reasons that the multidisciplinary, project-based approach at Aalto resonates with me.

#next-slide()[Heavily Inspired by]<slides>

I believe that innovation thrives when people from diverse backgrounds come together, and Aalto's environment offers the perfect space to exchange ideas and grow, both technically and personally.
