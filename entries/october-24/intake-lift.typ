#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Intake Lift",
  type: "build",
  date: datetime(year: 2024, month: 10, day: 4),
  author: "Praful Adiga",
  witness: "Jayden Htwe",
)

With how low scored we noticed the matches were, we realized that the top rings were very important, and having as many top rings as possible will be the best way to win matches. consequently we decided that the neutral stake will be a worthy stake to go for. 

To accomplish this we decided to put the intake on a moveable lift, so we could move the intake to the different heights needed to score on all the different stakes. To power this list we could harness the power of the PTO, which could power a geartrain that turns the lift at approximately 50 RPM.

We began by first CADing the lift, which allowed us to plan out what we need to build, as this is a relativity complex design, this is shown in @IntakeLift.

#figure(
  rect(fill: black.lighten(10%))[
    #image("./intakelift.png", width: 80%)
  ],
  caption: [ @IntakeLift: A CAD showing our planned intake lift ]
)<IntakeLift>

So we built this lift over the next 3 days, and began to test it. We found that it could carry the intake itself and 2 rings relativity easily, with it lifting them at full speed for at least 20 cycles without the motors overheating. So we called it a success, next was coding it. We had no upcoming competitions so we decided not to code a well made state machine, but instead a quick and dirty hack to allow Cole, the driver to control the lift well enough to score. 

After we finished coding, we started to test. Firstly we had the lift at the bottom most point in order to score on the mobile goals, this worked somewhat well, and there were only a few more missed rings in the tests we ran, compared to without the lift. Next we attempted to score on the neutral wall stakes, Cole faced many difficulties in trying to align the lift to the proper height, but when it was aligned the intake only scored 1 in 3 rings which was less than ideal. The first problem could be ignored for now as the code would compensate for that using a state machine and a potentiometer sensor. However the second problem was larger as without any improvements, the neutral stakes would be effectively unusable in matches. Carrying on we tested the intake capabilities which showed no noticeable decrease in capabilities. 

Given these tests, we decided to carry on and explore some of the other potential capabilities, in particular climbing.