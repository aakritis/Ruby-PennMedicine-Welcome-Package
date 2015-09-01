Feature: Calendar Page

As a user
so that I can track my appointment details
I want to add appointment details to the list

Scenario: Open Calendar page
        Given I'm on the login page
        When I open Calendar page
        Then I should be able to see the current calendar details

Scenario: Add appointment details
        Given I'm on the appointment record page
        When I add all appointment details
        Then I should be able to see the appointment record

Scenario: Add appointment details without title
        Given I'm on the appointment record page
        When I add all appointment details without title
        Then I should see errors on appointment page


Scenario: Update an appointment
        Given I'm on the appointment display page
        When I update an existing appointment
        Then I should be able to see the updated appointment details

Scenario: Delete an appointment 
        Given I'm on the appointment record display page
        When I delete an existing record
        Then I should see some confirmation on deletion
