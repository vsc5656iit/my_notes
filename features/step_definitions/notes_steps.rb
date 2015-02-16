When(/^I enter "(.*?)" in note input$/) do |txt|
  within("#note_form") do
    fill_in 'note[title]', :with => txt
  end
end

Then(/^I should see "(.*?)" in notes list$/) do |txt|
  expect(page.first('#notes').text).to match(txt)
end