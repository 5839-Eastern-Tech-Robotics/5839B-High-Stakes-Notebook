#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Mecanum Drive Testing",
  type: "test",
  date: datetime(year: 2024, month: 3, day: 19),
  author: "Davis Bodami",
  witness: "Praful Adiga"
)
While Building the Mecanum Drive a large oversight was made. Vex wheels may be advertised in standard sizes like 4in but that is seldom the case. For the wheels various forum posts and the Perdu Vex Sig Robotics website placed both the older 4 in omni wheels and 4in mecanum wheels as having a 4.125in diameter. However once we built the drive we found the omni wheel to be slightly bigger. Going into inventor confirmed these as the Mecanum wheels measured .0625in smallers then the omni Wheels. 

#figure(
  rect(fill: black.lighten(10%))[
    #image("./Wheel Comparison.png", width: 80%)
  ],
  caption: [ Comparison of Mecanum Wheels and both the new (right) and old (left) omni wheel diameters
  ]
) 

This means that for now until we can get the newer omni Wheels whish should be compatible with the mecanum wheels them alogn with the pto attached to them will be left out of the build. The older Wheels can not be used as they cause only one of the mecanum wheels to be in contact with the groudn which defeats the purpose of the drive. 

Additionally weight plates needed to be screwed into the front to ensure the drive was balanced allowing it to properly strafe.

Overall the Drive was a success after a few minor tweeks and will serve as a good test base until the season starts. 
