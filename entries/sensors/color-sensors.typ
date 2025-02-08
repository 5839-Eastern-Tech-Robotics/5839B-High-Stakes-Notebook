#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Color Sensors",
  type: "build",
  date: datetime(year: 2024, month: 12, day: 20),
  author: "Jayden Htwe",
  witness: "Praful Adiga"
)
The usage of color sensors has been one of ideas for quite some time now. When the games first came out we wanted to use the color sensors to differentiate between the different colored rings when running our intake. After completing most of the robot, we decided to attach it on. There are two segments to our color ejector. There's the actual color sensor itself which can track the color of the ring passing through the intake. At the end of the intake there is a limit switch which acts as a button. When the ring pushes on it, the limit switch refers to data from the color sensor and uses it to know when to eject the rings

The difficult part about this ejection system is the timing of the intake. If the intake goes too fast, the color sensor is unable to determine the color of the ring. Timing the intake to reverse has been a challenge as well but after extensive testing and tinkering with the values in the code we were able to get it to work. 

#figure(
    rect(fill: black.lighten(10%))[
      #image("colorSensor.jpg", width: 55%)
    ],
    caption: [ Top View of Color Sensor System on the Physical Robot
    ]
  ) <colorSensor>

  The image above is the color sensor equipped onto the intake. The grey bit on the left is the actual color sensor and the red piece on the top of the image is the limit switch. 