= self introduction

Heya, My name is Herschel Pravin Pawar. This video has been recorded as part of deliverables for admission process of Aalto School of Science's Game Design and Development. Everything you see in this video: script, links, and images are part of a Typst document available freely on GitHub under a public domain license. 



= highlights

Lets start with some highlights from my game dev experience.

I participated in Coventry University's Summer School, where we were taught Game Development using Unity. As a finale, a game jam was held, and my team got 2nd place. Other than Unity, I taught myself Godot since I love free and open source software. I created clones of small games to learn Godot. Then, I participated in GMTK's 2023 Game Jam and got an average rank of 4612th position out of over 6700 participants. Recently, I've been exploring Bevy, a game engine made in rust that uses ECS.

= details

Lemme tell you more about the game development projects.

== Coventry University Game Jam

// focus slide with words Continuous Change and 2D Platformer
The themes for the game jam were Continuous Change and 2D Platformer.

// show hero switching
We created Fractured Elements. The gimmick for the game was that the player character has elemental powers, however, they arent powerful enough yet to control them. Thus, the player's power keeps cycling between different elements and weapons.

// picture of us
We were a team of 2. My partner worked on level design, finding art and sounds, and the lore while I worked on the code. 

// show difftastic diff of hero and boss code
I am pretty proud of the fact that the code I wrote for the player was almost reused for the final boss. 
// show flowchart and "interface" for the code
I also made the high level code generic over the weapon and elemental power.

== GMTK's 2023 Game Jam

// focus slide with words roles reversed
The theme for the game jam was roles reversed.

// screenshot of the game with a circle around invaders and written "you"
My plan was to reverse the role of whom you; the player controls, in space invaders. So, instead of killing aliens, you are a group of aliens who need to kill heroes to survive.

Lets talk about how I planned to make the game fun and not just a generic copy of space invaders with controls flipped.

// gif of invaders shooting
When the player presses spacebar to shoot, a random invader will shoot the bullet. Thus, the more invaders you have, the more health you have, 
// gif of just 2 invaders remaining and shooting
but you need to balance the health with the amount of predictability you want.

// gameplay
The number of invaders doesnt reset, so if you lose too many invaders, you will lose quicker. Thus, you cannot play the game indefinitely.

== Bevy

Its early days of me learning bevy, so far I've only followed one tutorial where we made a space invaders clone. After that I remade pong. I'm in the process of rewriting the pong game with online multiplayer in mind. I have always wanted to make an online multiplayer game. My plan is to get an idea of how the code needs to be structured for networking. I will then use the experience I get from pong to then create online chess. I can compile Bevy and rust to wasm, so I can host the wasm binary on my website as a playable demo.

= other technical projects

I have a few long-running projects which I work on.

== VRCX Insights

I am interested in scientific research. My current research project to mine friend circles using activity frequencies. But that in of itself is not research paper worthy for me. Currently, it runs on the CPU. The first version was single threaded only, then I moved to multithreading. This version uses all the cores available. My current aim is to port the code to run on GPU using WGPU, an implementation of WebGPU spec in rust.

== Booth Archiver

Booth Archiver was my first project written in rust. It scrapes your wishlist on booth.pm which is a japanese marketplace. The first prototype was made using power automate, which i then ported to python, and now its in rust.

= Creative exploration

I taught myself how to use photoshop to create textures and assets. I have an OC i made using vroid studios where i used those photoshop skills.

Other than that i have done some pixel art. I made quite a few textures for custom items in minecraft. I have also done some basic vector icons in Krita. Unfortunately, I cannot share these works as I dont have access to them anymore. 

Another hobby I have is manga, I have also dipped my toes in scanlation. Scanlation is a grey area of work where you take japanese manga and edit the pages to have english text instead of japanese. I erased the japanese text and drew the background which was below the said text. I also have some experience with typesetting due to scanlation work.

I designed a logo based on my online usernames, and then made it by editing and mixing two emojis. I am in the process of modelling it in blender so I can use it in other places.

I have tried to mix programming and creative work a few times but due to lack of technical knowledge on the art side, they turn out worse than I hope.

I created a GIMP palette creator, which krita can import. It takes an image as input and the level of quantization. It quantizes the image, and then creates the palette file. Another input you can give to the creator is similarity amount, which it uses to reduce the number of quantized colors. 
I was then able to contribute to rosettacode (https://rosettacode.org/wiki/Color_quantization#Rust).

Another experiment I did was to try create psychedelic gifs programmatically by doing hue shift on an image.

= BG

My love for game development started when I played minecraft. I learnt java to make plugins for minecraft. and while i didnt get too far with that, it still inspired me to become a game developer. 

Then i found `The Coding Train` on youtube and fell in love with how simple processing was and how easy it was to experiment. 

After a few years, I finally decided to take the plunge and decided to learn Godot. Godot, made me fall in love with game development and programming again.

Currently, I am interested in learning how to accelerate software using GPU, for which I am going to learn WGPU, an implementation of WebGPU standard in rust. 

Other than game development, I have also experimented with devops, and selfhosting. I had a homelab and exposed it to the internet via cloudflare tunnels. I have also played with Cranelift, an alternative to LLVM written completely in rust. I also want to create an open source smartwatch with continuos health monitoring. I learnt how to solder for that.

Beyond technical stuff, I actively participate in communities which share my interests.
I attend local rust meet ups, I have travelled to other states to attend technical events. I'm also preparing to give a talk at the local rust meetup about Bevy. 
I make an effort to participate in queer events when I can afford to. 
This extends to online communities, I am active in queer friendly rust communities and game development discord servers.
I always try my best to create a friendly atmosphere and help others.
During my time at college, my peers often came to me for advice and guidance, and I continued to do the same during the Coventry University Summer School.
There, I helped classmates with Unity, had practice sessions together, and took time during the game jam to help others.

= why aalto

The multidisciplinary approach at Aalto University resonates deeply with me. Along with the project-based approach, It allows me to gain experience by experimenting. I have always learnt more by experimenting, whether its Godot, or bevy, or Rust, once i get over the first hump of understanding, I can usually get momentum with learning by just exploring and reading. Moreover, the programme welcomes students with any Bachelor's degree, which means I get to collaborate with people from various educational background. As a neurodivergent person, this inclusive environment for students feels like a perfect fit for me, someone who fails to fit in anywhere. 

For me, the program at Aalto represents more than just a chance to further my technical skills. It is an opportunity to grow alongside other people who see the world in a different way. 

Due to my seemingly mismatching experience, the one thing I truely believe, is that the future needs collaboration from different fields. Innovation can only happen when theres exchange of ideas, and knowledge, and experience, from different disciplines. And I believe that Aalto provides the perfect environment to explore it.

= conclusion

Overall, I am very passionate about both learning and creating,and I look forward to whatever the future brings.
I am eager to collaborate, share knowledge, and contribute to the communities i'm part of. 
I am excited to see how Aalto university's atmosphere will shape me. 
I love learning and exploring new domains.
Each new field I explore feels like a gift, an opportunity to learn more.
to close my video, i want to share something i saw on tumblr. It was a post which ended with, "I am a mosaic of everyone I've ever loved, even for a heartbeat." and i feel like its a very beautiful statement which resonated very deeply with me.
If i was more creatively inclined, I would adapt it to the process of learning and how it shapes us; But I'm not.
The best I can come up with is,
I am the culmination of everything I've learnt.

