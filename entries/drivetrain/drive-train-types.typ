#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Drive Train Types",
  type: "brainstorm",
  date: datetime(year: 2024, month: 3, day: 17),
  author: "Davis Bodami",
  witness: "Praful Adiga"
)
= New Drive Models 

There exists a variety of drive models both practical and impractical that can be made with the VRC legal parts. It is important to judge where each one can shine to see which is the most practical for the next game release. A decision cannot yet be made for which drive is best, but the strengths and weaknesses of each one can be assesed as well as models for the more practical ones generated. These models can give us a head start on the next seasons bot if they prove adequate for the next game as well as allow the team to test various ideas. 

= Tank Drive 

A large variety of what can be considered a Tank Drive or differential drives exist within Vex. These work by having two sides where each sides' wheels all spin together. This allows for linear motion (Both sides spin the same direction), turning (Both sides spin opposite), and arcing (One side spins slower then the other in the same direction). These drives are often the simplist and provide a wide range of motion while remaining able to push back against other robots. This drive can also be achieved in a variety of ways with varying numbers and sizes of wheels that augment their performance. 

4in wheels provide greater speed as per each rotation the robot moves farther, however they give the robot less torque. Additionally since less of them can fit onto a drive with the 18*18*18 size limit there is also less points of contact. Additionaly, with the older 4in wheels the team currently owns, the traction versions are .125in smaller then the omni versions.

3.25in wheels provide slower speeds, but are able to give the robot more pushing power as they have more torque and points of contact. These wheels are also easier to work with, as the traction and omni versions are the same size, unlike with the older 4in wheels.

Omni wheels have rollers that allow the wheel to move side to side as well as forwards and backwards. This makes them great for turning, but poor for traction. 

Traction wheels wheels are all rubber and provide exceptional ground adherence for any robot, however they greatly limit turning, making them impractical unless used as the middle wheel where their effects on turning are mitigated. 

From our teams experience, a 3.25in drive with 2 traction wheels in the middle and 2 omni wheels on either end appears to be the optimal way to execute this drive. Our previous drive with three 4in omniwheels failed to push back against other robots that were using 3.25in Tank Drives with the same amount of motors. These robots were also just as fast and maneuverable as ours showing little trade off for this design. 

#pro-con(
  pros:  [
      - Simplicity
      - Versatility
      - Easier to Control

    ],
  cons:  [
    - Limited Mobility 
    - Wheel incompatabilities
    ]
) 
= H/X Drives

These use either 4 or 5 omni wheels to achieve a robot that has the same range of motion as a Tank Drive, but with the additon of diagonal and horizontal movements. In the case of an X drive, they use either 4 indivudally powered omni wheels in each corner at 90 degress from one another or 4 indivudallty powered omni wheels in a traditional tank drive setup with one horizantal omni wheel for the H drive. These drives can however, prove dificult to control and in the case of the H drive, it is impractical because the horizontal wheel rarley makes contact. They are also very easy to push around since all the wheels are omni. X drives can prove highly practical given the right game and design but in games such as over under the middle bar limits their use. 

#pro-con(
  pros:  [
      - Maneuverability
      - Complex Autonomous
      - Strafing 
    ],
  cons:  [
    - Mechanical Complexity
    - Motor Usage 
    - Practicality
    - Low Traction/Easy to push
    ]
) 
= Mecanum Drives

Mecanum drives are likley the most special as they use specialized mecanum wheels. Similar to omni wheels, these have rollers attached, but at an angle to provide uniquely augmented movement. When set up correctly, 4 indvidually powered mechnum wheels can provide the same movment as an X drive. However, since to go in any direction it directly turns the mecanum wheels, they are harder to push as the motors resist the pushing directly. This, along with other issues, can lead to faster overheating with mecanum drives. The Vex EDR 4in mecanum wheels are very bulky putting more strain on the motor. Additonally, the vex mecanum wheels unlike most designs have limited contact with the ground due to the irregular design of their rollers. It is also important to note that it is easier to gear and build a frame for a mecnum drive over an X drive as it does not require the 45 degree angles to achieve its unique motion. Though also possible with an X drive, an additional powered omni wheel could be put into the middle to provide additional drive power. Since this wheel is not needed when a successful PTO can be developed, it could allow for a very versatile robot and drive. 
#pro-con(
  pros:  [
      - Maneuverability
      - Complex Autonomous
      - Strafing
    ],
  cons:  [
    - Mechanical Complexity
    - Motor Usage 
    - Practicality
    - Requires balanced weight 
    ]
) 




= Swerve Drives

Previously considered impractical, Vex Swerve Drives involve either 3 or 4 independently steered and powered wheels. These focus around modules that can both spin and rotate the orientation of the wheels. This allows for the robot to turn rapidly as well as turn while moving. The wheels can be positioned in the manner of a tradtional tank drive for linear movement and then turned to go in the desired direction. However until the addition of the 5.5W motors, these would either use 6 or all 8 of the robots available motors. The 5.5W motors now allow for this drive to be possibly practical as a 3 wheel Swerve Drive could be made from three 11W motors and three 5.5W motors allowing for 38.5W of motors to be allocated to the robots mechanisms and manipulators. The advantages of swerve drives can be seen from other competitions like FRC, where they are often used to great success to create highly maneuverable robots. The use of a Swerve Drive within Vex would be highly dependent on the game as one with limited room to move, such as over under, takes away many of the Swerve Drives advantages. It is worth creating a model for a swerve drive module in case the next game is one that prioritizes movement. It would also provide practice using more complex gearing which the team has yet to experiment with. 

#pro-con(
  pros:  [
      - Maneuverability
      - Complex Autonomous
    ],
  cons:  [
    - Mechanical Complexity
    - Motor Usage 
    - Practicality
    ]
) 