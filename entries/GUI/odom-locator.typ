#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Odometry Display",
  type: "program",
  date: datetime(year: 2024, month: 8, day: 14),
  author: "Praful Adiga",
  witness: "Davis Bodami",
)

Another one of the GUI programs that we wanted to make was a way to intuitively see the odometry data, this would make it significantly easier to create and debug autons. We wanted the program to display a picture of the field, or at least a simplified version of it, and have a toggleable robot that is to scale, shown moving around the field. We also want it to display paths written in the #link("https://path.jerryio.com/")[path.jerryio] path creator. Also having a function to record and save the robot's motion would be a very helpful feature. 

To do this we first planned out the GUI with the same color theme as the auton selector, and orange as accents. We used an online image editor to do this and used layers to represent different modes. Our finished prototype can be seen in /* TODO: refence figure */.

#figure(
  "hi"
)

To code the basic functionality, i referenced theo0403's #link("https://github.com/theol0403/odomDebug")[odomDebug] library. And for the interface I decided to look for the images in a specified path on the SD card with an optional parameter to change that path, and a similar idea for the path.jerryio paths and recorded paths. The only required input is a function to get the current position, or a reference to the LemLib odometry. I allowed a reference to the LemLib odometry class as I plan to release this GUI publicly after the season's over and I contribute to LemLib so I can advertise my library to the people there and gain a not insignificant userbase. 

While coding, I followed the style of robodash's existing views to minimize errors and maintain readability. This allowed me to realtivily quickly code the GUI and make it work, which can be seen in /* TODO: figure here */.

#figure(
  "hi"
)

At this point I was getting more and more ideas on things I want as a GUI, but I decided to stop after the PID Tuner and Simple Text Display to prevent feature creep. 
