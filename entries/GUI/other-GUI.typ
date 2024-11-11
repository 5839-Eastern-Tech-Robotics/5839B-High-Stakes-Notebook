#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Debug GUI",
  type: "program",
  date: datetime(year: 2024, month: 9, day: 10),
  author: "Praful Adiga",
  witness: "Davis Bodami",
)


One last GUI before we start on the actual control algorithms. PROS has a default GUI that people use for debugging their code, It is a very helpful multi-purpose GUI that we would like, but with some improvements. PROS default GUI can be seen in . 

#figure(
  "hi"
)

This has a couple of problems,
 - there is a limited number of lines
 - there are unused buttons on the bottom taking up space
 - it looks ugly
 
So we decided to improve on them, we used the same color palette as Robodash similar to the rest of out GUI's. We again designed it SquareLine Studio, which is shown in . This time the implementation was pretty straightforward, we just have a vector of strings, one for each line, and when the user prints to a specific line it just changes the label for that line. The constructor has no arguments, and there is one method that lets you print to a line and another to clear it. The code was also made to be thread safe, by using mutexes to lock the variables when they are being accessed, so two threads don't change the same line at the same time.

#figure(
  "hi"
)

The code in @CustomDebugScreenCode give you .

#figure([
```cpp
DebugScreen lcd();

void initialize() {
  pros::Task test([&]() {
    while (true) {
      lcd.print(0, "hello %s", "world");
      lcd.print(1, "its been %f seconds", pros::millis() / 1000);
      lcd.print(4, "this would be on line 2");
      lcd.print(6, true, "this would be on line 6 with 3 empty lines before");
      lcd.print(3, "this is to test text wrapping and overriding lines, well i guess that was already tested as this is in a loop and run asynchonously from the rest of the program.");
    }
  })
}
```
],
caption: [@CustomDebugScreenCode]
) <CustomDebugScreenCode>

#figure(
  "hi"
)

This GUI is very helpful when it comes to debugging random processes that don't have a designated GUI for them.
