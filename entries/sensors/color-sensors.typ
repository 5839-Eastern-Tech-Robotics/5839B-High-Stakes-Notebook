#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Color Sensors",
  type: "build",
  date: datetime(year: 2024, month: 12, day: 20),
  author: "Jayden Htwe",
  witness: "Praful Adiga"
)
The usage of color sensors has been a prominent idea for quite a while now. When the games first came out we wanted to use the color sensors to differentiate between the different colored rings when running our intake. After completing most of the robot, we decided to attach it on as it would not require much modification. There are two segments to our color ejector, there's the actual color sensor itself which can track the color of the ring passing through the intake. Next there's a limit switch, near the end of the intake which acts as a trigger to determine when to eject the ring.

#figure(
    rect(fill: black.lighten(10%))[
      #image("colorSensor.jpg", width: 55%)
    ],
    caption: [ Top View of Color Sensor System on the Physical Robot
    ]
  ) <colorSensor>

The image above is the color sensor equipped onto the intake. The gray bit on the left is the actual color sensor and the red piece on the top of the image is the limit switch. 

We faced a couple of challenges when building this system, out first idea was to use a pneumatic to eject the rings. However after a rough calculation, we measured a 0.5 psi drop per piston toggle, and found that the psi drops to below usable pressures after only 10 ring sorts, so we discarded the idea and it never got build. Our first actual attempt lacked the limit switch and attempted to count the rotation of the motor powering the intake, however we found that this was very inconsistent and often failed. After adding the limit switch we still had to change the position of the switch to tune the ejection mechanism, and also change the position of the color sensor to make sure the ring was detected.

On the coding side of the mechanism, we decided to use a state machine. A state machine is a way to keep track of the robot's state, and apply different behaviors based on that. For example when the ring has been detected by the color sensor, we can change the robot's state to `toEject` if the color is not the desired one, or to `toMogo` if it is. Before we started coding, we made a flowchart to help keep track of the different states, and how they change between each other which can be seen in @intakeStateMachineFlowchart

#figure(
    rect(fill: black.lighten(10%))[
        #image("intake-state-machine-flowchart.png")
    ],
    caption: [@intakeStateMachineFlowchart: A flowchart describing the state machine for the intake]
) <intakeStateMachineFlowchart>

We decided to build a lot of extra features into the program, such as the wall stake mechanism which wasn't complete at that time. 

Thanks to the flowchart, coding was relativity easy, with testing going very smoothly, and ejecting the ring relativity consistently, usually 4 times out of 5. When driving however this was reduced significantly, with the mechanism only succeeding 3 times in 10 trials. We tracked this down to the color sensor not sensing the ring, and failing to activate the color sort. We fixed this by moving the color sensor to the base of the intake, right where the flex wheels bring it up to the hooks.

