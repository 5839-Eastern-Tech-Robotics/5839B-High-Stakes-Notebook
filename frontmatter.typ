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
  )
  // TODO: everyone else, have fun Cole
]
