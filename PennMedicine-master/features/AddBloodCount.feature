Feature: Blood Count and blood count page

As a user
so that I can track my blood count details
I want to add blood count details to the list

Scenario: Open Blood Count page
        Given I'm on the login page
        When I open Blood Count page
        Then I should be able to see the blood count details

Scenario: Add blood count details
        Given I'm on the blood count record page
        When I add all details
        Then I should be able to see the blood count record

Scenario: Add blood count details
	Given I'm on the blood count record page
        When I add all details except WBC count 
        Then I should see some errors on the blood count page

Scenario: Add blood count details
	Given I'm on the blood count record page
        When I add all details except Plt count 
        Then I should see some errors on the blood count page

Scenario: Add blood count details
	Given I'm on the blood count record page
        When I add all details except transfusions count 
        Then I should see some errors on the blood count page

Scenario: Add blood count details
	Given I'm on the blood count record page
        When I add no details
        Then I should see multiple errors on the blood count page

Scenario: Add blood count details
        Given I'm on the blood count record page
        When I add all details except ANC count 
        Then I should see some errors on the blood count page

Scenario: Update blood count details
        Given I'm on the blood count all record display page    
        When I update blood count record
        Then I should be able to see the updated blood count details

Scenario: Update a blood count without proper data
        Given I'm on the blood count all record display page
        When I update blood count record incorrectly
        Then I should see some errors on the blood count update page

Scenario: Delete a blood
        Given I'm on the appointment record display page
        When I delete an existing record
        Then I should see some confirmation on deletion
