#let slide = counter("slide")

#let next-slide(content) = [
  #slide.step()
  #rect(width: 100%, height: 3em)[
    #align(horizon + center)[/ slide: #context slide.display() | #content]
  ]
]

#let slow-down-hint(content) = highlight[#content]

#set page(margin: (left: 15em, right: 15em))

#next-slide()[Title Slide]

This is my introduction video for Aalto University's Game Design and Development program.

#next-slide()[Self Introduction]

Heya, my name is Herschel Pravin Pawar. This video has been recorded #slow-down-hint[as part of] deliverables for the admission process. Everything you see in this video—scripts, links, and images—are a part of a Typst document available freely on GitHub under a public domain licence.

#next-slide()[Coventry University]

#slow-down-hint[I participated in] Coventry University's Summer School for Game Development with Unity.

The summer school concluded with a game jam, and these are the results.

The themes were Continuous Change and 2D Platformer.

We created Fractured Elements, featuring a player with cycling elemental powers. I focused on making the gameplay while my partner focused on the creative aspects of the game.

I'm proud that the player code I wrote was adaptable enough to be reused for the final boss and the high-level code was generic over weapons and elemental powers.

#next-slide()[Game Maker ToolKit's 2023 Game Jam]

I taught myself Godot by creating small games and eventually participated in GMTK's 2023 Game Jam.

The theme was Roles Reversed.

I designed a twist on Space Invaders: instead of killing aliens, the player controls a group of aliens fighting to survive against heroes.

The main game mechanic involved a random alien firing while space bar was pressed. This made it so the player had to choose between having predictability and having more health.

#next-slide()[Bevy]

Recently, I've been learning Bevy, a Rust-based ECS game engine.

So far, I've remade pong without using any tutorials. Currently, I'm using the pong codebase to learn how to make online multiplayer games.

#next-slide()[Other]

Some other projects I've worked on include VRCX Insights which involves data mining. It extracts friend circles by using data points of entering and leaving a room.

Another project is Booth Archiver, which compiles your Booth wish list into a simple, user-friendly Excel spreadsheet.

I've also created Krita Palette Generator, a tool that quantizes an image and generates a palette from it.

Other than programming, I also taught myself how to use Photoshop to create textures for my OC --- Kait.

#next-slide()[Current Interests]

In no specific order these are some of the topics im interested in learning, you can pause the video to read about them in more detail:

- WGPU --- an implementation of WebGPU spec in rust --- to offload work to the gpu
- Cranelift --- an alternative to LLVM --- creating custom scripting languages for game engines
- Stateless Abstractions --- Inspired by NixOS, functional programming, WGPU --- Creating good abstractions which reduce conginitive load
- Technical art --- bridging programming, art, and mathematics --- I am facinated by gpus and shaders
- GPGPU --- Hardware Acceleration --- Offloading tasks and doing them in parallel
- Giving technical talks --- Inspiring Others --- Kate Compton inspired me, and I want to inspire others, just like her

#next-slide()[Why Aalto]

I actively participate in local Rust and queer meetups, always striving to create a welcoming atmosphere and support others. This collaborative spirit is something I value deeply and is one of the main reasons that the multidisciplinary, project-based approach at Aalto resonates with me. I believe that innovation thrives when people from diverse backgrounds come together, and Aalto's environment offers the perfect space to exchange ideas and grow, both technically and personally.
