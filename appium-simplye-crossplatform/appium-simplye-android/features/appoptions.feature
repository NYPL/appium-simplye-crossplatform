@login
Feature: Age Gate, Login, browse

#Background:
#    Given user is on the home page

@login
Scenario: View app options
	And check age gate
	And user navigates to settings
	
	