Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Appimation home page
        When I open Try now
        Then I fill all required input fields "armis@grr.la" "name123" "name123" "proejct"
        Then I close Try now

    Scenario: Validate error message after unsuccessful attempt to login
        Given I am on Appimation home page
        When I open SignIn page
        Then I enter all required information "armis@grr.la" "parole123"
        Then I try to sign in 