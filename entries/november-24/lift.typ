#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Lift Attempt",
  type: "build",
  date: datetime(year: 2024, month: 11, day: 5),
  author: "Jayden Htwe",
  witness: "Praful Adiga"
)

After building the first lift, we tried testing to see how much weight it could pick up. The test consisted of a single lift that was attached to a bucket full of washers. There was a lot of trial and error that went into this because the main problem was that the lift was either too loose or to tight for the rack and pinion to move. When testing we didn't want to pour in a bunch of weight at once so we went it increments of 4 to 5 washers at a time.

During our 3rd test trial we were able to pick up a decent amount of weight. It was around about 23lbs and that was with just one. We are gonna continue building the next one because we intend to have two. Right now we only have one concern and that's where we will put it. We're hoping to get it somehwere in the front of the robot but anywhere will do so long as we're able to do elevation in the first place.

If the testing doesn't work out, we might need to reevaulate the design. From what's we've seen online, our design isn't too far off from what works. Another secondary design we saw was with a wall stake scorer but as of right now we don't even have one. This will probably also be something that we will add on later since this is a prominent way to score.

Below is a CAD model of the elevation lift.

#figure(
  rect(fill: black.lighten(10%))[
    #image("lift.png", width: 80%)
  ],
  caption: [ Lift Bar
  ]
)
