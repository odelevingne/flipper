Feature: User Management
				In order to post a Flip
				As an user
				I have to be signed in

Scenario: Signing up
				Given I am on the homepage
				When I press "Sign Up"
				Then I visit the Sign Up page
				And I sign up as "Oliver"
				Then I should see "Welcome Oliver!"

				