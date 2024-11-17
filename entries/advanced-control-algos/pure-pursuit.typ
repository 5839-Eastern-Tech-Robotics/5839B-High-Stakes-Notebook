#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Pure Pursuit",
  type: "program",
  date: datetime(year: 2024, month: 5, day: 10),
  author: "Praful Adiga",
  witness: "Davis Bodami",
)

Pure Pursuit is one of the more advanced control algorithm that we'll be using. It is an algorithm that can follow a curved path, using both odometry and PID. The algorithm does this by chasing after a point on the path that is in front of the robot, this is to allow the robot to smoothly follow the path, making it much more versatile than basic autons where you first move in a straight line then turn, and repeat. Also moving in a curved line is more efficient than the start and stop motions because a curved motion allows you to smoothly move around obstacles without having to stop and turn multiple times, which would make the motion significantly faster. Curved motions also allow for better error correction as both turning and moving are handled at the same time, with stop and start motions, you may drift in angle while moving straight which cant be corrected with stop and start motions, but can easily be corrected with curved motions like pure pursuit.

LemLib just so happens to also have this algorithm pre-implemented, so I just have to understand how it works,or at least I have to relearn it, as I made a working pure pursuit algorithm in the previous competition year.At a high level, Pure pursuit works by taking the robot's current position, and finding a point that's further along the path, at a specified distance away, often called the lookahead distance. The robot then drives towards that point using normal differential drive kinematics, and repeats the whole process of finding the next point.

Now to go more into depth. The control flow of pure pursuit looks something like @PurePursuitFlow

#figure(
  rect(fill: black.lighten(10%))[
    #image("./Pure-Pursuit-Flowchart.png", width: 40%)
  ],
  caption: [ @PurePursuitFlow: The control flow diagram for pure pursuit ]
) <PurePursuitFlow>

Ok so lets go through each box, first, we have the circle line intersection formula, according to #link("https://mathworld.wolfram.com/Circle-LineIntersection.html")[this article] the formula is 
$ vec((D Delta_y plus.minus "sgn"(Delta_y) Delta_x sqrt(r^2 d^2_r - D^2)) / (d^2_r), (-D Delta_x plus.minus abs(Delta_y) sqrt(r^2 d^2_r - D^2)) / (d^2_r)) $

where 

$ D = abs(mat(x_1, x_2; y_1, y_2)) = x_1 y_2 - x_2 y_1 $
$ Delta_x = x_2 - x_1 $
$ Delta_y = y_2 - y_1 $
$ d_r = sqrt(Delta_x^2 + Delta_y^2) $

This may look complicated, and it actually is 😔. So we're not going to explain it, we'll just explain how its used. We first check the discriminant, which is the part under the sqrt: $r^2 d_r^2 - D^2$ and check if its $>= 0$. Then we run the formula and get the points of intersection, we then test each point and check if they are within the line segment's bounds.

In the next part, if there is an intersection, we record the intersection that is the next point to come after the point the robot followed previously, or the closest point to the robot if no such point exists. For example in @PointPickerExample, if the point the robot followed previously was the green point, the robot would now follow the red point, the robot being the black dot and the circle around it being the lookahead distance.

#figure(
  rect(fill: black.lighten(10%))[
    #image("./PurePursuitPointSelection.png")
  ],
  caption: [ @PointPickerExample: An example scenario that would result in having to choose between multiple points ]
) <PointPickerExample>

However if there is no intersection, we follow the point the robot followed previously, or if there is none, the point closest to the robot. The only condition where there is no intersection, is if the robot somehow strayed from the path, in which case, the best option is to move towards the point that was last calculated to the in front of the robot.

After we get the point to follow we now need to follow it, to do this, we can use the kinematics of a differential drive and derive the inverse kinematics: 

$ v_l = (l - r) / 2 $
$ v_r = (l + r) / 2 $

Where $v_l$ and $v_r$ are the left and right side's wheel velocities respectively, $l$ is the linear velocity, and $r$ is the rotational velocity. We then move the wheels using this velocity, which is calculated using the path, and it's curvature beforehand. 

We then check if we are at the end of the path, and if we aren't, we go back and find the next intersection. But if we are, we stop the pure pursuit algorithm and switch to a PID loop, where we run both an angular PID and a linear PID loop to accurately get the robot to the final position.
