#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Boomerang Controller",
  type: "program",
  date: datetime(year: 2024, month: 5, day: 13),
  author: "Praful Adiga",
  witness: "Davis Bodami",
)

The boomerang control algorithm is one of the most useful algorithms, that we will use in our autonomous. It is also one of the more simpler algorithms. This algorithm is used when you want to move from one point to another, but you also want to have a specific heading at the end of the motion, so just using a normal PID loop won't work. You also won't want to use pure pursuit when we use boomerang, as although the replacement could be made, the boomerang control algorithm is mainly used when we have just a small motion to make, so it wouldn't make sense to create a pure pursuit path solely for that one small path, this would clutter up the file structure, make iterating on the autonomous more tedious, and also make the code look more opaque. 
