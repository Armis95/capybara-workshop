Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Appimation home page
        When I open Try now
        Then I fill all required input fields 
        Then I close Try now

    Scenario: Validate error message after unsuccessful attempt to login
        Given I am on Appimation home page
        When I open SignIn page
        Then I enter all required information 
        When I try to sign in 
        Then I validate error message
