#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "New Odometry Sensors",
  type: "build",
  date: datetime(year: 2024, month: 3, day: 17),
  author: "Davis Bodami",
  witness: "Praful Adiga"
)
Odometry is a position tracking algorithim used by the coder to implement complex autons. It relies on three sensors 2 vertical and 1 horizantal. The failures of the previous design were compactness and resilliance and the new designs makes a few imrpovments to this area. It is important to complete this first as any protoype drives made must be designed to fit the sensors. This along with a basic mecnum drive which can act as a tank drive when need be will allow the coder to begin making some basic frameworks for next year. 

New Design:

- Verical Wheels save space by being in the same module

- No plate is used without being reinforced

- Pillow bearings used to simplfy mounting

- Newer 3.25in wheels used for better traction
#figure(
    rect(fill: black.lighten(10%))[
      #image("./Vertical Odom Isometric.png", width: 80%)
    ],
    caption: [ Isometric View of the New Vertical Odometry Sensor
    ]
  ) <odomDiagram>
#figure(
    rect(fill: black.lighten(10%))[
      #image("./Vertical Odom Front.png", width: 80%)
    ],
    caption: [ Front View of the New Vertical Odometry Sensor
    ]
  ) <odomDiagram>
#figure(
    rect(fill: black.lighten(10%))[
      #image("./Horizantal Odom Isometric.png", width: 80%)
    ],
    caption: [ Isometric View of the New Horizantal Odometry Sensor
    ]
  ) <odomDiagram>
#figure(
  rect(fill: black.lighten(10%))[
    #image("./Horizantal Odom Front.png", width: 80%)
  ],
  caption: [ Front View of the New Horizantal Odometry Sensor
  ]
) <odomDiagram>


]
