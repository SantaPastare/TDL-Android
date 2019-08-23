@clothing
Feature: As a user I want to convert clothing and shoes size from and to different formats

    Scenario Outline: Europe to U.S. gloves size conversion
        Given I am in the "Clothing and shoes" screen
        And I have "<from_size>" as source size system and "<to_size>" as target size system
        When I select "<type>" as the clothing or shoes type
        Then I see "<source_size>" and "<target_size>" in size table
        Examples:
        | from_size   | to_size         | type          | source_size | target_size |
        | Europe      | U.S.            | Gloves        | 6           | XS          |
        # | U.S.        | Europe          | Women's shoes | 5           | 35          |
        # | U.K.        | Europe          | Men's shoes   | 3           | 34          |