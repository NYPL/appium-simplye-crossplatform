@login
Feature: Age Gate, Login, browse

#Background:
#    Given user is on the home page

@login
Scenario: Navigate Book
	And user borrows book
	And user reads book
	And user moves forward
	And user moves backward
	And user returns book
	