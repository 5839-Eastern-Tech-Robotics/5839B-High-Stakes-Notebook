#import "/packages.typ": *
#import codetastic: qrcode

#create-frontmatter-entry(title: "Table of Contents")[
  #components.toc()
]

#create-frontmatter-entry(title: "Our Team")[
  #components.team(
    (
       name: "Davis Bodami",
       picture: image("./assets/logo.jpg", width: 90pt, height: 90pt),
       about: [
       The main designer of the team and enjoys no-lifeing robotics
       ]
    ),
    (
       name: "Praful Adiga",
       picture: image("./assets/logo.jpg", width: 90pt, height: 90pt),
       about: [
       The main programmer of the team and makes code to operate the robot's systems
       ]
    ),
    (
       name: "Brandon Lewis",
       picture: image("./assets/logo.jpg", width: 90pt, height: 90pt),
       about: [
       Keeps the team organized and punctual, and assists with coding and building when needed 
       ]
    ),
    (
       name: "Cole Stephan",
       picture: image("./assets/logo.jpg", width: 90pt, height: 90pt),
       about: [
       The main drive team coordinator to ensure correct execution during events
       ]
    ),
    (
       name: "Jerrick Chen",
       picture: image("./assets/logo.jpg", width: 90pt, height: 90pt),
       about: [
       Designs and constructs various components on the robot
       ]
    ),
    (
       name: "Madison Moreno",
       picture: image("./assets/logo.jpg", width: 90pt, height: 90pt),
       about: [
       Assembles assorted parts and coordinates information with the public
       ]
    ),
    (
       name: "Jayden Htwe",
       picture: image("./assets/logo.jpg", width: 90pt, height: 90pt),
       about: [
       Journalist and editor for the notebook and assists with building
       ]
    ),
  )
]
