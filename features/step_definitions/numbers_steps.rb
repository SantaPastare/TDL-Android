And(/^I have selected "(.*)" as base numbers$/) do |type|
    @pages.numbers_screen.select_base_type type
end

And(/^I have selected "(.*)" as the conversion type$/) do |type|
    @pages.numbers_screen.conversion_type type
end

When(/^I enter "(.*)" on the keyboard$/) do |number|
    @pages.keyboard.input_number number
end
  
Then(/^I see "(.*)" in the conversion section$/) do |number|
    expect(@pages.numbers_screen.conversion_section_text).to eql number
end