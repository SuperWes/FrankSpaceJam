When(/^I type "(.*?)" into the "(.*?)" text field$/) do |text, mark|
	wait_for_element_to_exist_and_then_touch_it "view marked:'#{mark}'"
	wait_for_nothing_to_be_animating
	type_into_keyboard text
end
