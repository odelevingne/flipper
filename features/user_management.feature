Feature: User Management
				In order to use the website
				As an user
				I have to be able to sign up and log in

Scenario: Signing up
				Given I am on the homepage
				When I press "Sign Up"
				Then I am on the Sign Up page
				And I sign up as "Oliver"
				And I press "Sign Up"
				Then I should see "Welcome Oliver!"

Scenario: Signing up with a password that doesn't match
				Given I visit the Sign Up page
				And my password and confirmation don't match
				And I press "Sign Up"
				Then I visit the Sign Up page
				And I should see "Password does not match the confirmation"

Scenario: Signing up with an email that is already taken
				Given another person has already signed up with my email address
				And I visit the Sign Up page
				And I sign up as "Oliver"
				Then I should not see "Welcome Oliver!"