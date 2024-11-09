#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Mecanum Drive Testing",
  type: "test",
  date: datetime(year: 2024, month: 5, day: 6),
  author: "Davis Bodami",
  witness: "Praful Adiga"
)
= Positioning of Motors
With the goal of havign a lower and more centralized center of mass then previous years we want to fit as much of the core compoennts (batteries, brain, penuamtics, and drive motors) into the bottom core of the drive system. One step in doing this is to make the motors as compact as possible. To do this we can attach them vertically and connect them togetehr with 36t gears; however, to do this we would need to use 3-wide c-channel for the two moutning holes and then the drive axel. In order to save weight we want to try and use as small fo c-channel as possible so we are going to use a lexan bracket to hold the second moutning hole of the motors to a 2-wide c-channel. This should give the most compact design possible to help centralzie as much weight as possible.

//add picture from 4/22 of motor mount (not final)

= 3D printed templates

A new idea that Davis came up with for expediting the protypign process was to use a 3d printed template for any lexan or plastic parts. From last year we learned the school's cheap laser cutter can not produce the parts we need so by 3d pritning a 1/16in thick template of the part we want to make we can not only test that the part works using the templeate, but also use it to properly cut out the shape and drill the holes into the legal vex plastic that we have. 

#pro-con(
  pros:  [
      - Saves time
      - More accurate then hand drawing
      

    ],
  cons:  [
    - Still not perfect (human/printer error)
    - Might accidentally leave 3d prints on robot (not legal)
    ]
) 