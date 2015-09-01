Feature: Questionnaires and questionnaire page

As a user
so that I can track my questions
I want to add a new question to the list

Scenario: Add a question
				Given I'm on the question creation page
        When I add a new question
        Then I should be able to see the new questionnaire's page

Scenario: Add a question without a question
        Given I'm on the question creation page
        When I add a new question without a question
        Then I should see some errors on the questionnaire's page

Scenario: Update a question
				Given I'm on the questionnaires page
				When I update an existing record
				Then I should be able to see the updated details

Scenario: Update a question without proper data
				Given I'm on the questionnaires page
				When I update an existing record incorrectly
        Then I should see some errors on the questionnaire's page

Scenario: Delete a question
				Given I'm on the questionnaires main page
				When I delete an existing record
        Then I should see some confirmation on deletion
