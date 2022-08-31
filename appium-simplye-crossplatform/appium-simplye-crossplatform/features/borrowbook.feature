@login
Feature: Age Gate, Login, browse

#Background:
#    Given user is on the home page

@login
Scenario: Borrow Book
	And user borrows book
	And user cancels download
	And user downloads book
	And user reads book
	And user returns book
	