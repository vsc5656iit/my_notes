AfterStep do
  # sleep(0.3)
end

Given(/^I am in home page$/) do
  visit root_path
end

Then(/^I should see "(.*?)"$/) do |txt|
  expect(page).to have_content txt
end

Then(/^I should not see "(.*?)"$/) do |txt|
  expect(page).not_to have_content txt
end

When(/^I press "(.*?)"$/) do |btn|
  click_button btn
end

When(/^I enter "(.*?)" in note input$/) do |txt|
  within("#note_form") do
    fill_in 'note[title]', :with => txt
  end
end

Then(/^I should see "(.*?)" in notes list$/) do |txt|
  expect(page.first('#notes').text).to match(txt)
end

When(/^I go to home page$/) do
  visit root_path
end