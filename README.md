FrankSpaceJam
=============

Tutorial Project to teach Frank iOS Testing

1. Install frank
    gem install frank-cucumber
2. Create an iOS project
3. Set up your project for frank
* Navigate to the project root directory on the command line and run
    frank setup
4. Run the sample tests
    cucumber Frank/features
5. Write a test
* Navigate to Frank/features
* Create a 'spacejam.feature' file with the following text
````
Feature: Make an app that demonstrates frank
Scenario: As a user I want to see the app title when I launch the app
Given I launch the app
Then I should see “Space Jam”
````
6. Run it
    frank build
    cucumber Frank/features
7. Watch it fail
8. Add a label that says "Space Jam" to the app
9. Run it again and watch it pass
    frank build
    cucumber Frank/features
* Why did it pass? Built in steps
* http://www.testingwithfrank.com/supplied_steps.html
* Notice that the full source for these steps is on GitHub

10. Make your next test
* Navigate to Frank/features
* Add the following to the 'spacejam.feature' file
````
@wip
Scenario: As a user I want to be able to add spaces between every letter of a word
Given I launch the app
When I type “XXXXX” into the “Spaceable Word” text field
Then I should see “X X X X X” in the "Spaceable Word" text field
````
11. Run it and watch it fail
    cucumber Frank/features -t @wip
* The wip tag means run features labeled @wip
12. Notice that the test is pending.
* We have just done BDD!
* 
13. Let’s make a step definition file!
* We didn't get this last time because we used built in steps
* Navigate to Frank/features/step_definitions
* Create an empty 'spacejam.rb' file
* Copy the steps from the terminal output into the .rb file
14. Let's fill this in with actual ruby code. I'm an iOS Developer I don't know ruby!
* Use this for reference:
* http://rdoc.info/gems/frank-cucumber/frames
* Eventually you will write the following:
15. Make the manual tests pass
16. Fill in the step definitions
* 
````
Something
````

What to put in it?
Show ruby docs
frank inspect

use the right method

build
run tests

SWEET APP! Ship it!
