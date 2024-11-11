#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Odometry",
  type: "program",
  date: datetime(year: 2024, month: 4, day: 22),
  author: "Praful Adiga",
  witness: "Davis Bodami",
)

Odometry, also known as Dead Reckoning, is an algorithm, that allows us to calculate our global position by summing up small local movements. In the context of VEX Robotics, it is more commonly used to refer to a method in which the movement of wheels at a known distance away away from the tracking center is used to calculate the change in position of the robot, this is then transformed from local coordinates to global coordinates and accumulated for a live readout of the robot's global position.

The specific equations for odometry aren't too complicated. It is mainly derived from the equation of arc length, in particular, we use $l = theta * r$ where we have $l$ and are looking for $theta$ and $r$ by using each wheel. Doing some algebra gets us the following equations

$ Delta theta = (Delta L - Delta R) / (s_L - s_R) $
$ Delta attach(limits(d), t: ->, br: l) = 2 sin(theta/2) * vec((Delta S)/(Delta theta) + s_S, (Delta R)/(Delta theta) + s_R) $

where $Delta L$, $Delta R$, and $Delta S$ are the distances the left, right and back tracking wheel moved respectivly, the back tracking wheel being perpendicular to the other 2, $s_L$, $s_R$, and $s_S$ being their distances from the tracking center, $Delta theta$ being the amount the robot turned, and $Delta attach(limits(d), t: ->, br: l)$ being the amount the robot moved, as a vector. However both $Delta theta$ and $Delta attach(limits(d), t: ->, br: l)$ are in local coordinates based of the robot, we need to transform them into global coordinates, which we can do using the following equation.

$ attach(limits(p), t: ->, br: t+1) = attach(limits(p), t: ->, br: t) + Delta attach(limits(d), t: ->, br: l) mat(-cos(theta_t + (Delta theta) / 2), sin(theta_t + (Delta theta) / 2); sin(theta_t + (Delta theta) / 2), cos(theta_t + (Delta theta) / 2)) $
$ theta_(t+1) = theta_t + Delta theta $

The equations above may seem complicated but really, all its doing is rotating the vector $Delta attach(limits(d), t: ->, br: l)$ by the average of $theta_t$ and $theta_(t+1)$ (we do the average because after some testing, we found it to be more accurate than just doing one or the other) and what this does is convert the local displacement into global displacement. We can then just add the new global displacement to the old global coordinates, and $Delta theta$ to the old theta, and that gets us the new global coordinates.


