Feature: Demo Feature

    Scenario: Login Discord Web app
        Given I am on Discord login page
        Then I fill all required input fields "armands.locmelis@testdevlab.com" "Rokijs95278"
        Then I send .txt file to User2 "/home/armis/Desktop/automation/capybara-workshop/APOLLO.txt"
        Then I logout from Discord