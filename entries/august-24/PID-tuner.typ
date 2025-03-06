#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "PID Tuner GUI",
  type: "program",
  date: datetime(year: 2024, month: 8, day: 22),
  author: "Praful Adiga",
  witness: "Davis Bodami",
)

Last year, we had a working odometry system, and a working PID loop, however, our PID loop was inadequately tuned so the main advantage of using PID, better accuracy and speed, was effectively canceled out by the sub par tuning. So the purpose of the PID tuner is to create a GUI that allows us to tune the PID significantly faster than without, and have a better PID tune overall. To do this we want a GUI that lets us change the PID values without having to reupload the program, and also give us graphical feedback, ideally in the form of an error vs time graph.

After some planning we decided that out interface with the GUI would look something like this

```cpp
struct PIDToTune {
  public PIDToTune(std::string name, std::function<void(float,float,float,float)> runFunc, std::function<float(void)> errorFunc)
}

PIDTuner(std::vector<PIDToTune> PIDs)
```
and using it would look something like this
```cpp

float linearError() { return 24 - linearTest->getPose().y; }

void linearRun(float kP, float kI, float kD, float slew) {
    lemlib::ControllerSettings testPID(kP, kI, kD, 3, 1, 100, 3, 500, slew);
    linearTest = std::make_shared<lemlib::Chassis>(drivetrain, testPID, angularController, sensors);

    linearTest->setPose(0, 0, 0);
    linearTest->moveToPoint(0, 24, 5000);
}

// We are tuning the PID controller for linear movement, using a 24 inch forward movement. 
PIDTunerView pidTuner({{"Linear Drivetrain PID", linearRun, linearError}});
```
This design allows a lot of flexibility in what PID's we tune as it is very abstract asking only for what it needs to function.

To actually design the GUI we found that converting the design from an image to code is very time consuming so we looked for a way to automatically do this, as we figured, LVGL, a popular GUI program had to have at least one program for this purpose. So we started looking, and we found #link("https://squareline.io")[SquareLine Studio], which fit most of our requirements. So we designed the PID tuner inside SquareLine Studio, and we developed something like .

// TODO: add the image
#figure(
  "TODO"
)

Unlike the previous GUI's, developing this was significantly harder than just making it look good, however SquareLine Studio has a helpful function to export the UI to code, so all we had to do was implement the logic. Switching PID's was implemented by just changing the reference to the current `PIDToTune` and the text on the GUI. And the graph updating was done by first calling the run function, and then creating a task that periodically calls the error function, resizes and updates the graph, which we'll talk about in more detail, and stops automatically when the error settles.

The task that creates the graph, is specifically a task, because we want it to run in the background and not block any interactions with the GUI, it should also stop if we interact with the other parts of the GUI, or press the panic button on the controller, so the task should look something like this:

```cpp
pros::Task graphError; // this is exposed to the rest of the class so it can be stopped from outside the task.

graphError = pros::Task([&]() {
    int settleTime = 0;
    while (true) {
        if (std::abs(error - this->currentPID->getError()) < 0.3) settleTime++;
        else settleTime = 0;

        float error = this->currentPID->getError();
        lv_graph_add_data_point(this->errorGraph, pros::millis(), error);
        graph_resize(this->errorGraph);

        if (settleTime >= 100) return;
        pros::delay(20);
    }
});
```

The resize function is the most interesting, what it does is it gets the bounds of the x and y axis and then adds a bit of padding. However after the size is set the graph has to be flagged as "dirty" which tells LVGL that the graph needs to be redrawn, this caused not a small amount of pain when coding this.

The final result, with a test function (shown in @PIDTunerTestCode), is shown in .

#figure([
  ```cpp
  external float startTime;
  float testError() {
      float t = pros::millis() - startTime;
      return -0.2 * std::sin(4 * (t + 5.29)) * std::exp(3, 3.29 - t) + 5.48568; // https://www.desmos.com/calculator/234cudbevw
  }

  void testRun(float kP, float kI, float kD, float slew) { startTime = pros::millis(); }


  PIDTunerView pidTuner({{"Test PID", testRun, testError}});
  ```
  ],
  caption: [ @PIDTunerTestCode: Our test code for the PID Tuner GUI ]
)<PIDTunerTestCode>

// TODO: add the image
#figure(
  "hi"
)

The GUI also saves the values of each PID to a file on the SD card so we can easily resume tuning after a small (or large) break.
