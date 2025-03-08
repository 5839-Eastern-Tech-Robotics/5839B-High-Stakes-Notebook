#import "/packages.typ": *
#import codetastic: qrcode

#create-frontmatter-entry(title: "Table of Contents")[
  #components.toc()
]

#create-frontmatter-entry(title: "Our Team")[
  #components.team(
    (
       name: "Davis Bodami",
       picture: image("./assets/davis.jpg", width: 90pt, height: 120pt),
       about: [
       The main designer of the team and enjoys no-lifeing robotics. 
       Big Boss
       ]
    ),
    (
       name: "Praful Adiga",
       picture: image("./assets/prafulcp.png", width: 90pt, height: 120pt),
       about: [
       The main programmer of the team and makes code to operate the robot's systems. 
       Bad at Celeste.
       ]
    ),
    (
       name: "Brandon Lewis",
       picture: image("./assets/fishdog.jpg", width: 90pt, height: 120pt),
       about: [
       Keeps the team organized and punctual, and assists with coding and building when needed. 
       Number 1 Fisherman NA
       ]
    ),
    (
       name: "Cole Stephan",
       picture: image("./assets/coal.jpg", width: 90pt, height: 120pt),
       about: [
       The main drive team coordinator to ensure correct execution during events. 
       Never loses at Bloons TD
       ]
    ),
    (
       name: "Jerrick Chen",
       picture: image("./assets/jerrick.png", width: 90pt, height: 120pt),
       about: [
       Designs and constructs various components on the robot. 
       Badminton demon
       ]
    ),
    (
       name: "Jayden Htwe",
       picture: image("./assets/jayden.png", width: 90pt, height: 120pt),
       about: [
       Journalist/editor for the notebook and assists with building. 
       Holy sweat at rhythm games
       ]
    ),
    (
       name: "Madison Moreno",
       picture: image("./assets/logo.jpg", width: 90pt, height: 120pt),
       about: [
       Assembles assorted parts and coordinates information with the public. 
       Loves cats
       ]
    ),
    (
       name: "Noah DiMarzio",
       picture: image("./assets/logo.jpg", width: 90pt, height: 120pt),
       about: [
       Helps organize our materials and assists with building/making parts.
       Basketball enthusiast
       ]
    ),
  )
]
