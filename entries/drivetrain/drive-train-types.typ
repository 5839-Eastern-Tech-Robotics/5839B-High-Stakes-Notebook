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

There exists a variety of drive models both practicle and impracticle that can be made with the VRC legal parts. It is important to judge where each one can shine to see which is the most practical when the next game releases. A decision can not be made yet for which drive is best, but the strenghts and weakness of each one can be assesed as well as models for the more practical ones generated. These models can give us a head start on the next seasons bot if they prove adequate for the next game as well as allow the team to test various ideas. 

= Tank Drive 

A large variety of what can be considered a tank drive or differential drives exist within vex. These work by having two sides where each sides wheels all spin together. This allows for linear motion(Both sides spin the same direction), turning (Both sides spin opposite), and arcing (One side spins slower then the other in the same direction). These drives are often the simpilist and provide a wide range of motion while remaining able to push back against other robots. These  drives can also be achieved in a variety of ways with varying numbers and sizes of wheels that augment their performance. 

4in wheels provide greater speed as per each rotation the robot moves farther, however they give the robot less torque. Additonally since less of them can fit onto a dirve with the 18*18*18 size limit there is also less points of contact. Additionaly with the older 4in wheels the team currently own the traction versions are .125in smaller then the omni versions

3.25in wheels provide slower speeds, but are able to give the robot more pushing power as they have more torque and points of contact. These wheels are also easier to work with as the traction and omni versions are the same size unlike with the older 4in wheels

Omni wheels have rollers that allow the wheel to move side to side as well as forward and back. This makes them great for turning, but poor for traction. 

Traction wheels wheels are all rubber and provide exceptional ground adherence for any robot, however they greatly limit turning making them impractical unless used as the middle wheel where there effects on truning are midigated. 

From our teams expirence a 3.25in drive with 2 traction wheels in the middle and 2 omni wheels on either end appears to be the optimal way to execute this drive. Our previous drive with 3 4in omniwheels failed to push back agaisnt other robots that were using 3.25 in tank drives with the same amount of motors. These robots also were just as fast and maneuverable as ours showing little trade off for this design. 

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

These use either 4 or 5 omni wheels to achieve a robot that has the same range of motion as a Tank Drive, but with the additon of diagnol and horizantal movements. They either use in the case of an X drive 4 indivudally powered omni wheels in each corner at 90 degress from one another or 4 indivudallty powered onmi wheels in a traditional tank drive setup with one horizantal omni wheel for the H drive. These drives can however, prove dificult to control and in the case of the H drive impractical as the horizantal wheel rarley makes contact. They are also very easy to push around since all the wheels are omni. X drives can prove highly practical given the right game and design but in games such as over under the middle bar limits their use. 

#pro-con(
  pros:  [
      - Maneuberability
      - Complex Autonmous
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

Mecanum drives are likley the most special as they use specialized mecanum wheels. These like omni wheels have roller attached, but at an angle to provide unqiuley augmented movment. When set up correctly 4 indvidually powered mechnum wheels can provide the same movment as a X drive. However, since to go in any direction it directly turns the mecanum wheels they are harder to push as the motors resist the pushing directly. This along with other issues can also lead to faster overheating with mecanum drives. The vex edr 4in mecanum wheels are very bulky putting more strain on the motor additonally, the vex mecanum wheels unlike msot desings have limited contact with the ground due to the iregular design of their rollers. It is also important to note it easier to gear and build a frame for a mecnum drive over and X drive as it does not require the 45 degree angels to achieve its unique motion. Though also possible with an X drive an additional powered omni wheel could be put into the middle to provide more drive power. Since this wheel isnt needed at all times if a succesful PTO can be developed it could allow for a very versatile robot and drive. 
#pro-con(
  pros:  [
      - Maneuberability
      - Complex Autonmous
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

Previously considered impractical for vex swerve drives invlove either 3 or 4 independently steered and powered wheels. These focus around modules that can both rotate the oreintation of and spin the wheels. This allows for the robot to turn rapidly as well as turn while moving. The wheels can positioned in the manner of a tradtional tank drive for linear movement and then turned to go the desired driection. However until the addition of the 5.5w motors these would either use 6 or all 8 of the robots availble motors. The 5.5w motors now allow for this drive to be possibly practical as a 3 wheel swerve drive could be made from 3 11w motors and 3 5.5w motors allowing for 38.5w of motors to be allocated to the robots mechanisms and manipulators. The advantages of swerve drives can be seen from other competitions like frc where they are often used to great success to create highly maneuverable bots. The use of one within vex would be highyl dependent on the game as one that with limtied room to move such as over under takes away many of a swerve drives advantages. It is worth creating a model for a swerve drive module incase the next game is one that priortizes movement. It would also provide practice using more complex gearing which the team has yet to expirment with. 

#pro-con(
  pros:  [
      - Maneuberability
      - Complex Autonmous
    ],
  cons:  [
    - Mechanical Complexity
    - Motor Usage 
    - Practicality
    ]
) 