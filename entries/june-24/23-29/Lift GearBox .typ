#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Lift Gear Boxes",
  type: "brainstorm",
  date: datetime(year: 2024, month: 6, day: 29),
  author: "Davis Bodami",
  witness: "Praful Adiga"
)
= Determining gear ratios
With the secondary purpose of the lift other then moving the intake to the wall stakes being climbing we need to gear as such. We want to be able to climb all 3 levels and probably do so in about 10 seconds as not sacrifice time defending or scoring on goals. To do so we would have about 10/3 seconds to climb each level and having to move the arm up and down twice to climb each levels that gives 5/3 seconds to move the arm from up to down or vice versa. The arm has to rotate about 70 degrees to reach it max height from its starting point so that is 70/360 rotations per 5/3 seconds of output speed or 7 rpm. We want to meet this lowest possible speed to climb efficiently as a lower speed will provide more torque and thus allow for a heavier robot to still climb allowing us a larger margin of error when reducing weight. With an input speed of 600 rpm from the motor being reduced by 36:48 by the 48 tooth gear built into the pto that is a starting point of 450 rpm. We can then apply two reduction of 12:72 to get down to 12.5 rpm. We decided this was a fine stopping point for now as we planned to use a chain to connect this input to the lift so if needed it could be modified later very easily with a 1/2 or 3/4 ratio using different sized sprockets as need be. 
// calcualtions for speed and rpm and torque 

= Gear Box Prototype 
This design is as bear bones as possible to save weight, but could easily be reinforced later if clicking or slippage occurs when load is applied to the lift. The 72t gear to the left would contact a 12t gear on the same axel as the 48t gear already on the PTO. It is then reduced by another 12:72 ratio  before the sprocket would transfer the rotation to the arm in a 1:1 ratio. We plant to install this along with the lift arms, which will just be 35 long channel for now, next time we meet.

// gear box pictures