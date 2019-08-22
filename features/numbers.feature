@numbers
Feature: As a user I want to convert numbers from and to different formats

    @wip
    Scenario: Decima to Roman numerals conversion
        Given I am in the "Numbers" screen
        And I have selected "Decimal" as base numbers
        And I have selected "Roman numerals" as the conversion type
        When I enter "10" on the keyboard
        Then I see "X" in the conversion section
