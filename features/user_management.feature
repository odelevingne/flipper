Feature: User Management
				In order to post a Flip
				As an user
				I have to be signed in

Scenario: Signing up
				Given I am on the homepage
				When I press "Sign Up"
				Then I visit the Sign Up page
				And I sign up as "Oliver"
				And I press "Sign Up"
				Then I should see "Welcome Oliver!"

Scenario: Signing up with a password that doesn't match
				Given I am on the homepage
				When I press "Sign Up"
				Then I visit the Sign Up page
				And my password and confirmation don't match
				Then I should see "Sorry, your passwords don't match"