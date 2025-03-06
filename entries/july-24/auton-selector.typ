#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Autonomous Selector GUI",
  type: "program",
  date: datetime(year: 2024, month: 7, day: 26),
  author: "Praful Adiga",
  witness: "Davis Bodami",
)

During the summer months, our main programmer, Praful, had a lot of free time, which he used in developing 2 main things, a GUI for easier interactions with the robot, and a series of control algorithms for a better overall autonomous. And as he was travelling for the first part of the summer, the GUI seemed like a better option to do without a physical robot because, for one the library that PROS uses to display things on the screen, LVGL, has a simulator that we can run on my laptop and quickly iterate on the GUI. Well at least that's what we thought when we started to work on the GUI.

We started by first trying to design our own autonomous selector which didn't end up too well with our limited knowledge of LVGL. Our results were mediocre at best which can be seen in @AutonSelectorAttempt and the code wasn't very extensible.
#figure(
  rect(fill: black.lighten(10%))[
    #image("./Auton_Selector_Attempt.png", width: 80%)
  ],
  caption: [
    @AutonSelectorAttempt: Our first attempt at an autonomous selector
  ]
) <AutonSelectorAttempt>

So we started researching into existing auton selectors and we found a library that is extensible and perfectly fits our needs: #link("https://github.com/unwieldycat/robodash")[robodash], it already has a debug console, alert system, image display, a well made view switcher, and a autonomous selector that looks good which can be seen in @RobodashAutonSelector. 


#figure(
  rect(fill: black.lighten(10%))[
    #image("./Robodash_Auton_Selector.png", width: 80%)
  ],
  caption: [
    @RobodashAutonSelector: Robodash's default auton selector
  ]
) <RobodashAutonSelector>

We liked a lot of Robodash's auton selector, namely its clean UI and straightforward interface. Category there was one thing we didn't like, and that was that all the autons were dumped together in one category, it would be nice if each side had its own category like our original attempt. So we decided to add that ourselves. This was not without its own difficulties, but before that, a quick lesson on LVGL. So LVGL is written in C, so it's not object oriented, however the structure of the code is such that it would make sense for it to be written with an object oriented structure, which can be seen in the example below

```cpp
// This creates a pointer to the tabview which is a "child" of the screen
lv_obj_t * tabview = lv_tabview_create(lv_scr_act(), LV_DIR_TOP, 50);

// this sets the background color for the tabview
lv_obj_set_style_bg_color(tabview, lv_palette_lighten(LV_PALETTE_RED, 2), 0);

// this creates each tab of the tabview
lv_obj_t * tab1 = lv_tabview_add_tab(tabview, "Tab 1");
lv_obj_t * tab2 = lv_tabview_add_tab(tabview, "Tab 2");
lv_obj_t * tab3 = lv_tabview_add_tab(tabview, "Tab 3");

// now to add some content to the tabs
lv_obj_t * label = lv_label_create(tab1);
lv_label_set_text("Hello World");
label = lv_label_create(tab2);
lv_label_set_text("Hello World... Again?");
label = lv_label_create(tab3);
lv_label_set_text("Goodbye World");
```
As you can see there is a lot of structure and repetition in the code which could be easily avoided if LVGL was object oriented. Alas it is not, and its the only option, so we continue. Notice how all of the `lv_obj_t` are objects, regardless of what kind of object, a tabview or label, and this lead to a lot of errors initially, before i started labeling the type of object in the name of the variable, `tabview_autonType` instead of just `autonType`. The most common error we encountered however was a null pointer dereferencing error, and as you can see all of the object are pointer, and there are a lot of objects, so this occurred most often when the object was not initialized and we tried to use it as a parent of another object, or set it's text or the like.

So now back to the topic, updating the robodash auton selector, to do this it was pretty straightforward after i got though all of the errors. I just convert the container into a tabview then duplicate the list of routines, so we have one for each of the red side, blue side, skills and misc, then we add an enum to the interface to indicate where each auton is going to go, and then we sort each of the autons into their respective tab. Really my inexperience is the only thing that prevented me from doing it faster. And you can see the result in @RobodashFork
#figure(
  rect(fill: black.lighten(10%))[
    #image("./Custom_Robodash_Auton_Selector.png", width: 80%)
  ],
  caption: [
    @RobodashFork: Our custom fork of Robodash
  ]
) <RobodashFork>

So how useful is this? In our opinion it is very useful, last year, we ran out of slots on the brain to store our autons and we had to scramble to quickly reupload the right auton before our match, our auton selector would completely elimineate the need for more than one auton slot as all of the autons are stored in one program. 

And for our next steps, we still need to create other GUIs for different things, but regarding the auton selector, the next step is to create an auton builder, where we can toggle parts of autons. This would give us immense amounts of flexibility when it comes to working with our alliance partner, as we can build autons to optimize the number of points we get while still getting the Autonomous Win Point.
