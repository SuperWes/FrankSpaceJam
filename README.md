FrankSpaceJam
=============

Tutorial Project to teach Frank iOS Testing

* Install frank
````
gem install frank-cucumber
````

* Create a new Universal iOS project called "Space Jam" using the "Single View" template

* Set up your project for frank
  * Navigate to the project root directory on the command line and run
````
frank setup
````
  * Choose option 1 when prompted
  * What this does is set up your project for frank and add an example test

* Build your app for frank testing
````
frank build
````
  * Frank creates a separate project called a "Frankified" project in a "Frank" directory. This project has hooks to allow for automation

* Run the sample test
````
cucumber Frank/features
````

* Write a test
  * Create a 'Frank/features/spacejam.feature' file with the following text
````
Feature: Make an app that demonstrates frank
Scenario: As a user I want to see the app title when I launch the app
Given I launch the app
Then I should see "Space Jam"
````

* Run it
````
cucumber Frank/features
````

* Watch it fail

* Add a label that says "Space Jam" to the app

* Run it again and watch it pass
````
frank build
cucumber Frank/features
````
  * Why did it pass? Built in steps
  * http://www.testingwithfrank.com/supplied_steps.html
  * Notice that the full source for these steps is on GitHub

* Make your next test
  * Navigate to Frank/features
  * Add the following to the 'spacejam.feature' file
````
@wip
Scenario: As a user I want to be able to add spaces between every letter of a word
Given I launch the app
When I type “XXXXX” into the “Spaceable Word” text field
Then I should see “X X X X X” in the "Spaceable Word" text field
````

* Run it and watch it fail
````
cucumber Frank/features -t @wip
````
  * The wip tag means run features labeled @wip

* Notice that the test is pending.
  * We have just done BDD!
  * If you were to submit what you have now for code review it would fail because your tests would not pass. You're now accountable for making that test pass, and there's no doubt in your mind what the story consists of.

* Let’s make a step definition file.
  * We didn't get this last time because we used built in steps
  * Navigate to Frank/features/step_definitions
  * Create an empty 'spacejam.rb' file
  * Copy the steps from the terminal output into the .rb file

* Run the test again to see that it no longer suggests a stub
  * From here we can either implement the story or write the ruby code to actually do the automation
  * Normally I would advocate trying to write the ruby code
  *I want to make it easy to follow so let's make it work in code first and then go back.

* Do the work in code to make that manual test pass

* Now let's run our test again.
  * Still pending

* Let's fill our stub in with actual ruby code. I'm an iOS Developer I don't know ruby!
  * Use this for reference:
  * http://rdoc.info/gems/frank-cucumber/frames

* How do I know what a "Spaceable Word" field is?
````
frank build
frank launch
frank inspect
````

* Fill in the step definitions
````
Something
````

* Run your test again
````
frank build
cucumber Frank/features
````

SWEET APP! Ship it!
