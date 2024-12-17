#let slide = counter("slide")

#let next-slide() = [
  #slide.step()
  #rect(width: 100%, height: 3em)[
    #align(horizon + center)[/ slide: #context slide.display()]
  ]
]

#next-slide()

This is my introduction video for Aalto University's Game Design and Development program.

And today's date is December 17th, 2024.

#next-slide()

= Self Introduction

Heya, my name is Herschel Pravin Pawar. This video has been recorded as part of deliverables for the admission process of Aalto School of Science's Game Design and Development. Everything you see in this video—scripts, links, and images—are a part of a Typst document available freely on GitHub under a public domain licence. There are clickable links to everything I mention in the video. If I'm missing any, it's considered an error.

#next-slide()

= Highlights

Let's start with some highlights from my game development experience.

I participated in Coventry University's summer school, where we were taught game development using Unity. As a finale, a game jam was held, and my team got 2nd place. Other than Unity, I taught myself Godot, since I love free and open source software. I created clones of small games to learn Godot. Then, I participated in GMTK's 2023 Game Jam and got an average rank of 4612th position out of over 6700 participants. Recently, I've been exploring Bevy, a game engine made in rust that uses ECS.

Lemme tell you more about the game development projects.

#next-slide()

== Coventry University's Summer School Game Jam

#next-slide()

The themes for the game jam were Continuous Change and 2D Platformer.

#next-slide()

We created Fractured Elements. The gimmick for the game was that the player character has elemental powers; however, they aren't powerful enough yet to control them. Thus, the player's power keeps cycling between different elements and weapons.

#next-slide()

We were a team of 2. My partner worked on level design, finding art and sounds, and the lore while I worked on the code.

#next-slide()

I am pretty proud of the fact that the code I wrote for the player was almost reused for the final boss.

I also made the high-level code generic over the weapon and elemental power.

#next-slide()

== GMTK's 2023 Game Jam

#next-slide()

The theme for the game jam was roles reversed.

#next-slide()

My plan was to reverse the role of whom you, the player, controls, in space invaders. So, instead of killing aliens, you are a group of aliens who need to kill heroes to survive.

#next-slide()

Let's talk about how I planned to make the game fun and not just a generic copy of Space Invaders with controls flipped.

When the player presses the space bar to shoot, a random invader will shoot the bullet. Thus, the more invaders you have, the more health you have.
But you need to balance the health with the amount of predictability you want.

#next-slide()

The number of invaders doesn't reset, so if you lose too many invaders, you will lose quicker. Thus, you cannot play the game indefinitely.

#next-slide()

== Bevy

It's early days of me learning Bevy; so far I've only followed one tutorial where we made a space invaders clone. After that, I remade pong. I'm in the process of rewriting the pong game with online multiplayer in mind. I have always wanted to make an online multiplayer game. My plan is to get an idea of how the code needs to be structured for networking. I will then use the experience I get from pong to then create online chess. I can compile Bevy and Rust to Wasm, so I can host the Wasm binary on my website as a playable demo.

#next-slide()

= other technical projects

I have a few long-running projects that I work on.

#next-slide()

== VRCX Insights

I am interested in scientific research. My current research project is to mine friend circles using activity frequencies. But that in and of itself is not research paper worthy for me. Currently, it runs on the CPU. The first version was single-threaded only, then I moved to multithreading. This version uses all the cores available. My current aim is to port the code to run on a GPU using WGPU, an implementation of the WebGPU specification in rust.

#next-slide()

== Booth Archiver

Booth Archiver was my first project written in rust. It scrapes your wish list on booth.pm which is a Japanese marketplace. The first prototype was made using Power Automate, which I then ported to Python, and now it's in rust.

#next-slide()

= Creative exploration

I am not just a programmer though, I also have some other creative skills which I've learnt over the years.

#next-slide()

== Photoshop

I taught myself how to use Photoshop to create textures and assets.

#next-slide()

I have an OC I made using vroid Studio, where I used those Photoshop skills.

#next-slide()

== Pixel Art and Vector Graphics

Other than that, I have done some pixel art. I made quite a few textures for custom items in Minecraft.

I have also done some basic vector icons in Krita. Unfortunately, I cannot share these works as I don't have access to them any more.

#next-slide()

=== Pixel Art

I can however show you some fan art I made for an online meetup I attend.

#next-slide()

=== Logo

And the logo I designed based on my online username and then made it by editing and mixing two emojis. I am in the process of modelling it in Blender so I can use it in other places.

#next-slide()

== Scanlation

Another hobby I have is manga; I have also dipped my toes in scanlation. Scanlation is a grey area of work where you take Japanese manga and edit the pages to have English text instead of Japanese. I erased the Japanese text and drew the background which was below the said text. I also have some experience with typesetting due to scanlation work.

#next-slide()

Furthermore, I have tried to mix programming and creative work a few times but due to lack of technical knowledge on the art side, they turn out worse than I hope.

#next-slide()

== GIMP Palette Creator

I created a GIMP palette creator, which Krita can import. It takes an image as input and the level of quantization. It quantizes the image, and then creates the palette file. Another input you can give to the creator is similarity amount, which it uses to reduce the number of quantized colours.

#next-slide()

Here is an example output

The original image was captured in VRChat and the quantization level was set to 5.

You can see the full 8k image on the repository.

#next-slide()


=== Rosettacode

I contributed the code I wrote to Rosettacode.

#next-slide()

Another experiment I did was to try to create psychedelic GIFs programmatically by doing hue shift on an image, however, this one was a massive failure due to lack of knowledge.

#next-slide()

= Background

My love for game development started when I played minecraft. I learnt Java to make plugins for minecraft. And while I didn't get too far with that, it still inspired me to become a game developer.

Then I found `The Coding Train` on YouTube and fell in love with how simple processing was and how easy it was to experiment.

After a few years, I finally decided to take the plunge and decided to learn Godot. Godot, made me fall in love with game development and programming again.

Currently, I am interested in learning how to accelerate software using GPU, for which I am going to learn WGPU, an implementation of WebGPU standard in rust.

Other than game development, I have also experimented with DevOps, and self-hosting. I had a home lab and exposed it to the internet via Cloudflare tunnels. I have also played with Cranelift, an alternative to LLVM written completely in rust. Not only that, but I also want to create an open source smartwatch with continuos health monitoring. I had to learn how to solder for that.

Beyond technical stuff, I actively participate in communities which share my interests.
I attend local rust meet ups, I have travelled to other states to attend technical events. I'm also preparing to give a talk at the local rust meetup about Bevy.
Furthermore, I make an effort to participate in queer events when I can afford to.
This extends to online communities, I am active in queer friendly rust communities and game development discord servers.
I always try my best to create a friendly atmosphere and help others.
During my time at college, my peers often came to me for advice and guidance, and I continued to do the same during the Coventry University Summer School.
There, I helped classmates with Unity, had practice sessions together, and took time during the game jam to help others.

#next-slide()

= Why Aalto?

The multidisciplinary approach at Aalto University resonates deeply with me. Along with the project-based approach, It allows me to gain experience by experimenting. I have always learnt more by experimenting, whether it's Godot, or bevy, or Rust, once I get over the first hump of understanding, I can usually get momentum with learning by just exploring and reading. Moreover, the programme welcomes students with any Bachelor's degree, which means I get to collaborate with people from various educational background. As a neurodivergent person, this inclusive environment for students feels like a perfect fit for me, someone who fails to fit in anywhere.

For me, the program at Aalto represents more than just a chance to further my technical skills. It is an opportunity to grow alongside other people who see the world differently.

Due to my seemingly mismatching experience, the one thing I truly believe, is that the future needs collaboration from different fields. Innovation can only happen when there's exchange of ideas, and knowledge, and experience, from different disciplines. And I believe that Aalto provides the perfect environment to explore it.

#next-slide()

= Conclusion

Overall, I am very passionate about both learning and creating, and I look forward to whatever the future brings.
I am eager to collaborate, share knowledge, and contribute to the communities I'm part of.
I am excited to see how Aalto university's atmosphere will shape me.
I love learning and exploring new domains.
Each new field I explore feels like a gift, an opportunity to learn more.

#next-slide()

To close my video, I want to share something I saw on Tumblr. It's a post which ended with, “I am a mosaic of everyone I've ever loved, even for a heartbeat.” and

#next-slide()

I feel like it's a very beautiful statement which resonated very deeply with me.

#next-slide()

If I was more creatively inclined, I would adapt it to the process of learning and how it shapes us; But I'm not.
The best I can come up with is,

#next-slide()

I am the culmination of everything I've learnt.

#next-slide()

= Acknowledgement

#next-slide()

= Heavily Inspired by
