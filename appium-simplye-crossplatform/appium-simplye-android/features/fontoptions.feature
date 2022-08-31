@login
Feature: Age Gate, Login, browse

#Background:
#    Given user is on the home page

@login
Scenario: Font Options
	And user borrows book
	And user reads book
	And user taps screen
	And user opens font options
	And user closes font choices
	And user selects serif
	And user selects sans serif
	And user selects open dyslexic
	And user selects white on black
	And user selects black on sepia
	And user selects black on white
	And user decrease font size
	And user increase font size
	