#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Boomerang Controller",
  type: "program",
  date: datetime(year: 2024, month: 5, day: 13),
  author: "Praful Adiga",
  witness: "Davis Bodami",
)

The boomerang control algorithm is one of the most useful algorithms, that we will use in our autonomous. It is also one of the more simpler algorithms. This algorithm is used when you want to move from one point to another, but you also want to have a specific heading at the end of the motion, so just using a normal PID loop won't work. You also won't want to use pure pursuit when we use boomerang, as although the replacement could be made, the boomerang control algorithm is mainly used when we have just a small motion to make, so it wouldn't make sense to create a pure pursuit path solely for that one small path, this would clutter up the file structure, make iterating on the autonomous more tedious, and also make the code look more opaque as the code of pure pursuit does not make it clear where the robot will end up. 

The boomerang control algorithm is also pretty simple, however it is very obscure, only being used in the LemLib codebase as far as we could find. It is simply a modification to the PID loop, the point the PID loop is chasing moves in order to make the robot reach the point facing the direction that is wanted. Lemlib provides a nice #link("https://www.desmos.com/calculator/sptjw5szex")[desmos graph] which demonstrates the algorithm's inner workings. 

#figure(
  rect(fill: black.lighten(10%))[
    #image("./boomerang-desmos-graph.png", width: 60%)
  ],
  caption: [ @BoomerangDesmosGraph: an example boomerang path with $g_("Lead")$ = 1]
) <BoomerangDesmosGraph>
