Feature: Logout page

As a user
so that I can keep my information secured
I want to logout of my account

Scenario: Logout from the application
				Given I'm logged in to the application
        When I click on logout button
        Then I should be able to see the login page again
