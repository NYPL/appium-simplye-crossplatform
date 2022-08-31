@login
Feature: Age Gate, Login, browse

#Background:
#    Given user is on the home page

@login
Scenario: Initial Navigation Checks
	And check age gate
	And user then logs in
	And user selects catalog
	#And user interacts with swimlane (to to)
	And user views details
	And user views full detail
	And user views related books
	And user selects book tab
	