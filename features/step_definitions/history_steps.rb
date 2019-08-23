Given (/^I make one conversion with number "(.*)" and with number "(.*)"$/) do |base_value, conversion_value|
    step "I am in the \"Volume\" screen"
    step "I have selected \"Cup\" as base numbers"
    step "I have selected \"Liter\" as the conversion type"
    step "I enter \"#{base_value}\" on the keyboard"
    step "I see \"#{conversion_value}\" in the conversion section"
    @saved_data = SavedConversionData.new(base_value, conversion_value)
end

Given (/^I make second conversion$/) do
    step "I am in the \"Area\" screen"
    step "I have selected \"Hectare\" as base numbers"
    step "I have selected \"Square meter\" as the conversion type"
    step "I enter \"20\" on the keyboard"
    step "I see \"200 000\" in the conversion section"
end

Then (/^I expect to see my previously made "(.*)" conversion$/) do |data_type|
    @pages.history_screen.select_data_type data_type
end

When (/^I press one of the items$/) do
    @pages.history_screen.history_element_click
    sleep 1
end

Then (/^I expect the chosen item to show the correct value$/) do
    expect(@pages.numbers_screen.conversion_section_text).to eql @saved_data.conversion_value

end
