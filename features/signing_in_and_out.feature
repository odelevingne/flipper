Feature: Signing in and out
				In order to use the website
				As a user
				I have to be able to sign in and out

Scenario: Signing in with correct information
				Given I am on the homepage
				And I am a preregistered user
				And I sign in
				Then I should see "Welcome Oliver!"

Scenario: Signing in with incorrect information
				Given I am on the homepage
				And I am a preregistered user
				And I sign in with the wrong password
				Then I should not see "Welcome Oliver!"
