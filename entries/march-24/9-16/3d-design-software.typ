#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "3D Design Software",
  type: "management",
  date: datetime(year: 2024, month: 3, day: 13),
  author: "Davis Bodami",
  witness: "Praful Adiga"
)

Before any models for possible drive trains or new odometry sensors can be made a decision on what software to use is necessary. In the previous season we adpoted Autodesk inventor. There exists 3 main options other then inventor for vex which include Solid Works, Fusion 360, and Onshape. Each has a variety of favorable aspects to be considered when choosing.  

The best way to comapre these is through a decision matrix of various aspects of each 

#components.decision-matrix( 
  properties: ( 
   (name: "Familiarly", weight: 30), 
   (name: "Accessability", weight: 20), 
   (name: "Available Part Libraries", weight: 5), 
   (name: "Available Help Resources", weight: 5), 
   (name: "Vex Compatibility", weight: 2), 
   (name: "Ease of Use", weight: 2), 

  ),  
  ("Inventor",   5, 5, 4, 5, 4, 3), 
  ("Fusion 360", 3, 3, 5, 3, 5, 4), 
  ("Solid Works",  2, 4, 3, 2, 3, 3), 
  ("Onshape",  1, 5, 4, 3, 4, 4), 
) 

#components.admonition(type: "note")[ 
  Inventor scored far higher in some categories compared to other teams due to Eastern Tech's Engineering Program. This program which the majority of the team is in teaches Inventor and provides us with a browser version of it. This ngeates Onshapes main advantage and gives us 3 teachers who can help fix any problems we run into.  
] 

#components.admonition(type: "decision")[ 
  Due to a variety of reasons the main one being a lack of time to learn a new software and familiarty with Inventor it will continue to be our primary design software.  
] 

