#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "File Structure/Model Management",
  type: "management",
  date: datetime(year: 2024, month: 3, day: 10),
  author: "Davis Bodami",
  witness: "Praful Adiga"
)
To effectivley use any software wether for coding or modeling file organization is key. To share these files the team makes use of Microsoft Onedrive since it works best with windows device which the majority of the team has. 

For the Inventor the main robot assembly is made from a variety of sub assemblies. These sub assemblies are each for a key system such as the drive train or intake. There can exist further sub aseemblies within these as well such as that for the odometry sensors within the assembly they are attachetd to. To organize the many file for this a variety of naming conventions are used based off of the guide lines from Perdu Sig Robotics.

- Robots are marked with a folder labeled "! Robot Name"

- Within in that folder is the main assembly of the same name

- Assemblies or cut parts used throughout the model are stored in this high level folder

- There are also folders with each of the sub-assemblies labeled "Assembly Name"

- Within the sub-assembly folders are all the special cut parts and sub-assemblies of that Assembly. 

- All other parts are stored in a default parts folder with every vex part organized by type 

This system comes with a variety of advantages for the team. Indivudal axels or mechanisms be edited without opening the whole robot which allows team members to interact with the models without a powerful computer. It also allows for big changes to be made easier as the major sub-assemblies can be removed or changed without having to edit a bunch of indivudal parts. This also helps during the build process as we can divide the many sub-assemblies between any teammembers without other work to do. This has proven in the past to allow us to build full redesigns in just a week and half such as what we did after dulaney last year. 
#figure(
  rect(fill: black.lighten(10%))[
    #image(".\Over Under File Structure.png", width: 80%)
  ],
  caption: [ Inventor Files from the Over Under Season
  ]
)
