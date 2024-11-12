#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Testing Odometry",
  type: "test",
  date: datetime(year: 2024, month: 4, day: 26),
  author: "Praful Adiga",
  witness: "Davis Bodami",
)

When implementing the odometry algorithm, we have a few options: 

#decision-matrix(
  properties: (
    (name: "Simplicity", weight: 3),
    (name: "Extensibility", weight: 2),
    (name: "Experience", weight: 1),
    (name: "Interface", weight: 2)
  ),
  ("LemLib",     5, 2, 3, 4),
  ("OkapiLib",   3, 5, 3, 2),
  ("Custom",     1, 5, 5, 3)
)

According to the decision matrix, using LemLib's odometry would make the most sense to use. And as Praful plans to contribute to that library, our familiarity with it will quickly grow, and we can more easily extend the library. 

With LemLib we have an option to use an inertial sensor instead of 2 parallel wheels, and it is advertised as being more accurate. We didn't quite trust this so we decided to do our own testing. Using an unpowered drivetrain with the odometry sensors on the back, with similar positioning to our Boosted Mechanum sensors. We then measured the error over time between the true position, and the odometry reported position. During each test, we rotated the drivetrain in the following order.
 + 90° CW
 + 180° CCW
 + 45° CW
 + 135° CCW
 + 360° CW
 + 720° CCW
 + 540° CW
 After each turn we measured the deviation from the actual position and recorded in the following table

 #figure(
   table(
    columns: (auto, auto, auto, auto),
    [*Trial*], [*Expected*], [*Inertial*], [*Parallel Wheels*],
    [_1_], [90°], [89.8°], [92.1°],
    [_2_], [-90°], [-91.4°], [-86.4°],
    [_3_], [-45°], [-45.2°], [42.1°],
    [_4_], [-180°], [-180.5°], [-171.9°],
    [_5_], [180°], [180.7°], [191.4°],
    [_6_], [-540°], [-541.0°], [560.4°],
    [_7_], [0°], [0.2°], [24.4°]
   ),
   caption: [ @OdometryTestResults: The test results for comparing the inertial measurement unit vs. the parallel tracker wheels' accuracy ]
 ) <OdometryTestResults>

 As we can see, the inertial measurement unit is significantly more accurate than the parallel tracking wheels. They both start out with around the same amount of error, however, the parallel tracking wheels accumulate in error, while the IMU, has a static amount of error. Therefore we can conclude that LemLib's claim is in fact correct and using an IMU is more accurate than parallel tracking wheels. However there is some room for argument as the distance from the tracking wheels and tracking center may not be as accurate as possible, which might account for the error.
