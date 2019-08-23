@history
Feature: As a user I want to check the history features

    Scenario: History items list check
        Given I have done multiple conversions
        And I am in the "History" screen
        Then I see all conversions

    Scenario: History items check
        Given I have done multiple conversions
        And I see all conversions
        And I am in the "History" screen
        And I see all conversions
        When I click on the first item
        Then I should see the correct result