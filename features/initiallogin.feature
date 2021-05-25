@login
Feature: Age Gate, Login, browse

#Background:
#    Given user is on the home page

@login
Scenario: Initial Navigation Checks
	And check age gate
	And user then logs in
	And user interacts with swimlane
	And user views details
	And user view related books
	And user selects book tab
	And user selects catalog
 	
