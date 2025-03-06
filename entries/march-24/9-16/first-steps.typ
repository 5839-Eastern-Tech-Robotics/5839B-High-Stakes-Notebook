#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "First Steps",
  type: "decide",
  date: datetime(year: 2024, month: 3, day: 9),
  author: "Davis Bodami",
  witness: "Brandon Lewis"
)
= Post Season Build Analysis 

For the building of our previous robot even though it unfortunately did not make worlds there were a lot of aspects executed properly and poorly to be identified. This is important as it allows the team to know what works and to keep doing as well as what to change in order to improve for the next season.

*Drive Train* The Drive Train is the base of any robot. The previous seasons drive train used 6 11w motors with the blue cartidge and a 48:60 gear ratio giving an RPM of 480. This spun 3 4" omni wheels with the middle one on each side being locked. 
#pro-con(
  pros:  [
      - Speed
      - Pushing power
      - Strong Wedge

    ],
  cons:  [
    - Turning
    - Reliability 
    - Over Heating
    - Field Traversal

    ]
) 

*Intake* The intake was powered by 1 5.5w motor spining a series of 2" 45A flexwheels to interact with the game objects. The intake was also allowed to float so that it could raise over the goal to score the triball. 
#pro-con(
  pros:  [
      - Holding ability
      - Scoring
      - Reliability
      - Effectiveness 

    ],
  cons:  [
    - Chain Broke once

    ]
) 

*Wings* These were pneumatically activated flaps that would extend 9in on either side of the robot. These allowed for a large amount of game objects to be pushed into the goal at one time. 
#pro-con(
  pros:  [
      - Never failed
      - Reached corners
      - Simple Design

    ],
  cons:  [
    - Bent after multiple matches

    ]
) 

*Flywheel Arm* this was a 4" Flexwheel with a ratchet spining at 3600 RPM off of a blue motor. Game obejcts were placed and laumched off of the flywheel. It could also be raised by a 5.5w motor assisted by rubber bands to shoot over other robots. 
#pro-con(
  pros:  [
      - Consistent firing
      - Fast firing
      - Height
      - Ratchet persrved motor health

    ],
  cons:  [
    - Unable to use the arm for climbing
    - Flywheel got jammed on a standoff in 2 matches

    ]
) 

*Odometry Modules* These are 3 modules 2 vertical and 1 horizantal that are used to track the robots position. They are jointed to always be in contact with the ground, and have a 3.25" omni wheel spin an encoder to track movements. 
#pro-con(
  pros:  [
      - Simple Design

    ],
  cons:  [
    - Bent over time
    - Large
    - Unreliable gorund contact 

    ]
) 





= What to do now?

- With the biggest problem being the drive a variety of drives should be modeled and tested in order to have a better idea of what works for the next season

- Work to create new odometry module desings that are stronger and more compact

- Take inventory of the parts available to our team so that when designing we know what parts we can use and how many of them are available 

- Put together an order list of parts that the team wants to asses the needed funds

- See what funding is available to the team and what amount should be allocated to new parts 

- Look into making a functional PTO (power take off) as they can allow for more powerful drives while still having all the desired mechanisms to manipulate game objects

- Look for or model our own paddels for the controller that suite the needs of our driver
