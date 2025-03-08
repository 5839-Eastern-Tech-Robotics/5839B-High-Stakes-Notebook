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
