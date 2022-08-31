@login
Feature: Age Gate, Login, browse

#Background:
#    Given user is on the home page

@login
Scenario: My Books
	And user selects book tab
	And user borrows book
	And user cancels download
	And user downloads book
	And user reads book
	And user returns book
	