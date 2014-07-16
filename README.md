FrankSpaceJam
=============

Tutorial Project to teach Frank iOS Testing

* Install frank
````
gem install frank-cucumber
````

* Create a new iPhone iOS project called "Space Jam" using the "Single View" template

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

* Write the code to make it pass
  * Create a label in the storyboard editor that says "Space Jam"

* Run it again and watch it pass
````
frank build
cucumber Frank/features
````
  * Why did it pass? Built in steps
  * http://www.testingwithfrank.com/supplied_steps.html
  * Notice that the full source for these steps is on GitHub

* Make your next test
  * Add the following to the 'Frank/features/spacejam.feature' file
````
@wip
Scenario: As a user I want to be able to add spaces between every letter of a word
Given I launch the app
When I type "Cool Stuff" into the "Spaceable Word" text field
Then I should see "C o o l   S t u f f"
````

* Run it
````
cucumber Frank/features -t @wip
````
  * The wip tag means run features labeled @wip

* Notice that the test is pending.
  * We have just done BDD!
  * If you were to submit what you have now for code review it would fail because your tests would not pass. You're now accountable for making that test pass, and there's no doubt in your mind what the story consists of.

* Let’s make a step definition file.
  * We didn't get this last time because we used built in steps
  * Frank provides test stubs so that you don't need to learn regex
  * Copy these test stubs
  * Create a file at 'Frank/features/step_definitions/spacejam.rb' and paste in the stubs

* Let's fill our stub in with actual ruby code. I'm an iOS Developer I don't know ruby!
  * Use this for reference:
  * http://rdoc.info/gems/frank-cucumber/frames
  * Good methods to reference might be 'wait_for_element_to_exist_and_then_touch_it' 'wait_for_nothing_to_be_animating' and 'type_into_keyboard'

* Fill in the step definition
````
When(/^I type "(.*?)" into the "(.*?)" text field$/) do |text, mark|
  wait_for_element_to_exist_and_then_touch_it "view marked:'#{mark}'"
  wait_for_nothing_to_be_animating
  type_into_keyboard text
end
````

* Run your test and watch it fail
````
frank build
cucumber Frank/features -t @wip
````

* Do the work in code to make your test pass
  * Create a TextField in the storyboard
  * Make the textfield delegate the ViewController
  * Put the following code in the ViewController
````
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return [textField resignFirstResponder];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    NSString *result = @"";
    for (int i = 0; i<textField.text.length; i++) {
        NSRange range = {i, 1};
        result = [result stringByAppendingString:[textField.text substringWithRange:range]];
        result = [result stringByAppendingString:@" "];
    }
    textField.text = result;
}
````

* Now let's run our test again.
````
frank build
cucumber Frank/features -t @wip
````

* Still failing! Let's find out why.
````
frank build
frank launch
frank inspect
````

* Still failing! What's a "Spaceable Word" field is?

* Add an accessibility label of "Spaceable Word"
  * Accessibility labels are labels that you can only see if accessiblity is turned on.

* Run your test again
````
frank build
cucumber Frank/features -t @wip
````

SWEET APP! Ship it!
Go back to slides
