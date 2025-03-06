#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "3d design software",
  type: "decide",
  date: datetime(year: 2024, month: 3, day: 10),
  author: "Davis Bodami",
  witness: "Praful Adiga"
)
Before any models for possible drive trains or new odometry sensors can be made a decision on what software to use is necessary. In the previous season we adpoted Autodesk inventor. There exists 3 main options other then inventor for vex which include Solid Works, Fusion 360, and Onshape. Each has a variety of favorable aspects to be considered when choosing. 

The best way to compare these is through a decision matrix of various aspects of each

#decision-matrix(
  properties: (
    (name: "Familiarty", weight: 30),
    (name: "Acessability", weight: 20),
    (name: "Availble Part Libraries", weight: 5),
    (name: "Availble Help Recoruces", weight: 5),
    (name: "Vex Compatability", weight: 2),
    (name: "Ease of Use", weight: 2),
  ), 
  ("Inventor",     5, 5, 4, 5, 4, 3),
  ("Fusion 360", 3, 3, 5, 3, 5, 4),
  ("Solid Works",   2, 4, 3, 2, 3, 3),
  ("Onshape",   1, 5, 4, 3, 4, 4),
)
#admonition(type: "note")[
  Inventor scored far higher in some categories compared to other teams due to Eastern Tech's Engineering Program. This program which the majority of the team is in teaches Inventor and provides us with a browser version of it. This negates Onshapes main advantage and gives us 3 teachers who can help fix any problems we run into. 
]
#admonition(type: "decision")[
  Due to a variety of reasons the main one being a lack of time to learn a new software and familiarty with Inventor it will continue to be our primary design software. 
]
