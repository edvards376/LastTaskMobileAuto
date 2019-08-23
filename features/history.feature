@history
Feature: As an user I want to check History features

    
    Scenario: Checking that History shows previously created conversions
        Given I make one conversion with number "80" and with number "20"
        When I make second conversion
        When I am in the "History" screen
        Then I expect to see my previously made "Volume" conversion
        
    @wip
    Scenario: Checking that proprer information is displayed when the user selects one of the historty items
        Given I make one conversion with number "80" and with number "20"
        When I am in the "History" screen
        When I press one of the items
        Then I expect the chosen item to show the correct value
