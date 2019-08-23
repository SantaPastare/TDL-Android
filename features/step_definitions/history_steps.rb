Given(/^I have done multiple conversions$/) do 
    step "I am in the \"Time\" screen"
    step "I have selected \"Minute\" as base numbers"
    step "I have selected \"Second\" as the conversion type"
    step "I enter \"C\" on the keyboard"
    step "I enter \"1\" on the keyboard"
    base_value = @pages.history_screen.base_section_text
    step "I see \"60\" in the conversion section"
    conversion_value = @pages.history_screen.conversion_section_text
    @saved_data = SavedConversionData.new(1, 60)
end

Given(/^I see all conversions$/) do
    expect(@pages.history_screen.history_elements_list)
    # expect(@pages.history_screen.history_element_text(0)).to eql "Minute  ☞  Second"
    sleep 3
end

When(/^I click on the first item$/) do
    @pages.history_screen.history_elements_list[0].click
end

Then(/^I should see the correct result$/) do
    expect(@pages.history_screen.base_section_text).to eql @saved_data.base_value
end