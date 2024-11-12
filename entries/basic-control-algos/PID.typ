#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "PID Controller",
  type: "program",
  date: datetime(year: 2024, month: 5, day: 6),
  author: "Praful Adiga",
  witness: "Davis Bodami",
)

LemLib also has an existing PID class, so implementation is not strictly necessary, however understanding how PID loops work will greatly improve our ability to tune them, and generally understand what the robot does. PID loops stand for Proportional, Integral, and Derivative, which represent how the PID loop provides feedback.

As input, the PID loop gets the desired position, or setpoint, and the current position of the motor or system. The PID loop then uses the following formula to provide feedback to the motor or system, where $K_p$, $K_i$, and $K_d$ are tunable parameters, and $e(t)$ is error or $"setpoint" - "position"$.

$ K_p e(t) + K_i integral e(t) dif t + K_d (dif e) / (dif t) $

This formula may look complicated but when we break it down, its actually pretty simple. Lets look at each part separately.

== Proportional
This first part, $K_p e(t)$, is relativity simple, we simply take $"(target value)" - "(sensor reading)"$, call it error, and multiply it by a constant, $K_p$, to get the output that gets passed into the motor. This term is the main driver of the PID loop, so it's constant will be the largest. The more of the proportional you add to the loop, the quicker the loop will get to the target, however the loop will also overshoot the target more and oscillate around the target.

== Integral
The next part, $K_i integral e(t) dif t$ looks a lot more complicated, however all its really doing is just accumulating the error, it looks much simpler in code:

```py
while (error > 0.5):
    error = target - sensor
    totalError += error
    motor.move(Ki * totalError)
```
As you can see all this term is doing is just keeping track of how much error the loop has had throughout its runtime and using that to drive the motor, instead of just using the error.

However this has a couple of problems as is, the first problem is that when we go to a point that's far away, the integral term will have a lot of time to accumulate, so when it reaches the point, the integral term will cause a lot of overshoot, we can fix this, by resetting the integral term when the accumulation gets too high or we reach the target point, as we don't want to overshoot. This term still increases the overshoot though, and increases the time it takes to settle to the setpoint, however it greatly improves steady state error, so you want to use it if the PID loop it settling on a point that's not the setpoint.

== Derivative
This term, $K_d (dif e) / (dif t)$ also seems complicated however like the integral term its better thought of in code:

```py
while (error > 0.5):
    error = target - sensor
    derivitive = error - prevError
    prevError = error
    motor.move(Kd * derivitive)
```

As you can see, all this term is doing is just getting the change in error since the last iteration, and using that to drive the motor. 

This term is most useful when it comes to correcting sharp disturbances that happen, for example, if the robot is moving, and it gets pushed, the derivative controller will quickly correct that. This term decreases the overshoot and settling time, but if it gets too large it can harm the stability of the loop. So its best to keep the derivative term small.

== Put it All Together

To bring all of the terms together, we can add them together, and this will bring their respective strengths and weaknesses to the loop, creating a versatile control algorithm. We do need to tune the PID though, and that can be complicated, especially when you don't have a graph showing error.

== Tuning

Tuning the constants for the PID loop can seen complicated, but if you have the right tools, its suprisingly easy. @PIDTuningFlowchart shows the procees i deveised for tuning my PID constants.

#figure(
  rect(fill: black.lighten(10%))[
    #image("./PID-Tuning-Flowchart.png", width: 80%)
  ],
  caption: [ @PIDTuningFlowchart: A Flowchart for tuning PID ]
)<PIDTuningFlowchart>

Answering the questions in the flowchart becomes much easier if you have a graph of error vs time, as the characteristics in the graph are very distinctive, if you are just looking at the robot, it can be very unclear at times if the PID is properly tuned or not, which is why we decided to make a GUI that will help us tune the PID controller.


