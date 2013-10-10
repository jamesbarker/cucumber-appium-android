Given(/^I am on the "Main" screen$/) do
  main_screen_visit
end

Given(/^I enter text "(.*?)"$/) do |message|
  main_screen_message message
end

When(/^I click the "Send" button$/) do
  main_screen_click_send_button
end

When(/^I click the "Send" button without a message$/) do
  main_screen_click_send_button
end

Then(/^I am taken to the "Display Message" screen$/) do
  display_screen_present?
end

Then(/^the message "(.*?)" is displayed$/) do |message|
  text_exists? message
end

