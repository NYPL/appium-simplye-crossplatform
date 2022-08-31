@login
Feature: Age Gate, Login, browse

#Background:
#    Given user is on the home page

@login
Scenario: Navigate Book
	And user borrows book
	And user reads book
	And user taps screen
	And user opens font options
	And user closes font choices
	And user taps screen
	And user opens TOC
	And user closes TOC choices
	And user taps screen
	And user returns to details
	And user returns book
	