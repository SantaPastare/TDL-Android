And(/^I have "(.*)" as source size system$/) do |from_size|
    @pages.clothing_and_shoes_screen.select_from_type from_size
end

And(/^I have "(.*)" as final size system$/) do |to_size|
    @pages.clothing_and_shoes_screen.to_type to_size
end

And(/^I have "(.*)" as source size system and "(.*)" as target size system$/) do |from_size, to_size|
    step "I have \"#{from_size}\" as source size system"
    step "I have \"#{to_size}\" as final size system"
end

When(/^I select "(.*)" as the clothing or shoes type$/) do |type|
    @pages.clothing_and_shoes_screen.type type
end

Then(/^I see "(.*)" and "(.*)" in size table$/) do |source_size, target_size|
    # expect
end