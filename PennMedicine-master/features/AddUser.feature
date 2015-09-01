Feature: Users and user page

As a user 
so that I can track my users
I want to add a new user to the list

Scenario: Add a user
	Given I'm on the user creation page
	When I add a new user
	Then I should be able to see the first website page

Scenario: Add a user without an email
	Given I'm on the user creation page 
	When I add a new user without an email
	Then I should see some errors on the page

Scenario: Add a user without password
  Given I'm on the user creation page
  When I add a new user without a password
  Then I should see some errors on the page