#let slide = counter("slide")

#let next-slide() = [
  #slide.step()
  #rect(width: 100%, height: 3em)[
    #align(horizon + center)[/ slide: #context slide.display()]
  ]
]

#next-slide()

This is my introduction video for Aalto University's Game Design and Development program.

// And today's date is #datetime(year: 2024, month: 12, day: 15).display("[month repr:long] [day], [year repr:full]").
Today's date is #datetime.today().display("[month repr:long] [day]th, [year repr:full]").

#next-slide()

= Self Introduction

Heya, my name is Herschel Pravin Pawar. This video has been recorded as part of deliverables for the admission process of Aalto School of Science's Game Design and Development. Everything you see in this video—scripts, links, and images—are a part of a Typst document available freely on GitHub under a public domain licence.

#next-slide()

= Coventry University

I participated in Coventry University's summer school on game development with Unity, where my team placed 2nd in a game jam. The themes were Continuous Change and 2D Platformer.

We created Fractured Elements, featuring a player with cycling elemental powers and weapons due to their lack of control. My teammate handled level design, art, sound, and lore, while I focused on coding.

I'm proud that the player code I wrote was adaptable enough to be reused for the final boss. I also designed the high-level code to be generic over weapons and elemental powers.

#next-slide()

= Game Maker ToolKit's 2023 Game Jam

Other than Unity, I taught myself Godot by creating clones of small games. I participated in GMTK's 2023 Game Jam, ranking around 4600th position out of 6700+ participants.

The theme was Roles Reversed, and I designed a twist on Space Invaders: instead of killing aliens, the player controls a group of aliens fighting to survive against heroes.

To make the gameplay unique, shooting mechanics involved a random alien firing while space bar was pressed. The players had to choose their trade off; More aliens meant more health but less predictability. Losing too many aliens increased the challenge, preventing indefinite gameplay.

#next-slide()

= Bevy

Recently, I've been learning Bevy, a Rust-based ECS game engine.

So far, I've followed a tutorial to make a Space Invaders clone and later remade Pong. Currently, I'm rewriting Pong with online multiplayer in mind to learn networking structures.

My goal is to apply this experience to create an online chess game.

#next-slide()

= Other

I've done data minig in my project VRCX Insights, it's cpu only right now but I'm learning WGPU to make it run on the GPU.

Another project is Booth Archiver which is a web scaper for a japanese market place. The prototype was made using Power Automate, then moved it to Python, and now its in Rust.

I've also created a tool which takes an image and creates a color palette out of it.

Other than programming, I also taught myself how to use Photoshop. I created textures for my OC --- Kait.

#next-slide()

= Interests

I'm currently interested in learning WGPU --- an implementation of WebGPU spec in rust, Cranelift --- an alternative to LLVM, open source hardware --- see PineTime.

I participate in the local rust meetups and queer meetups.

I always try my best to create a friendly atmosphere and help others.

#next-slide()

= Why Aalto

The multidisciplinary and project-based approach deeply resonates with me.

For me, the program at Aalto represents more than just a chance to further my technical skills. It is an opportunity to grow alongside other people who see the world differently.

I believe that the future of innovation relies on collaboration across disciplines, and Aalto provides the ideal space to explore and exchange ideas.
