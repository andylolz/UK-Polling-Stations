Feature: Check Postcodes
    Scenario: Check postcode with address picker
    When I visit site page "/"
    Then I should see "Find your polling station"
    Then I fill in "postcode" with "BB11BB"
    Then I submit the only form
    Then I should see "Choose Your Address / Street"
    Then I should see option "2 Baz Street, Bar Town" in selector "address"
    Then I select "2 Baz Street, Bar Town" from "address"
    Then I submit the only form
    Then The browser's URL should contain "/address/4/"
    Then I should see "Your polling station"
    Then I should see "The polling station for BB11BB is"
    Then I should see "Get walking directions"

    Scenario: Check postcode without address picker
    When I visit site page "/"
    Then I should see "Find your polling station"
    Then I fill in "postcode" with "NP205GN"
    Then I submit the only form
    Then The browser's URL should contain "/postcode/NP205GN/"
    Then I should see "Your polling station"
    Then I should see "The polling station for NP205GN is"
    Then I should see "Get walking directions"
