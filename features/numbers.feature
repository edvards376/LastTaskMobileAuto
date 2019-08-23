@numbers
Feature: As a user I want to convert numbers from and to different formats

    
    Scenario: Decimal to Roman numerals conversion
        Given I am in the "Volume" screen
        And I have selected "Cup" as base numbers
        And I have selected "Liter" as the conversion type
        When I enter "80" on the keyboard
        Then I see "20" in the conversion section
