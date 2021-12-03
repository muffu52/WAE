Feature: User profile
 
In order to allow users to log in and maintain their account information, I need user profiles.

Scenario: Sign up

A new user should be able to sign up for an account

    Given I am a new user
    When I visit the main page
    Then I should see a ’Sign up’ link
    When I click the ’Sign up’ link
    Then I should see a signup form
    When I fill in the signup form
    Then I should be logged in
    And I should see my profile

Scenario: Log in

A user should be able to log in to his/her account

    Given I am an existing user
    When I visit the main page
    Then I should see a ’Log in’ form
    When I fill in the login form
    Then I should be logged in
    And I should see my profile