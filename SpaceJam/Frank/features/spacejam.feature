Feature: Make an app that demonstrates frank
	Scenario: As a user I want to see the app title when I launch the app
		Given I launch the app
		Then I should see "Space Jam"

	@wip
	Scenario: As a user I want to be able to add spaces between every letter of a word
		Given I launch the app
		When I type "Cool Stuff" into the "Spaceable Word" text field
		Then I should see "C o o l   S t u f f"
