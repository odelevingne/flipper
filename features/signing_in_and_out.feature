Feature: Signing in and out
				In order to use the website
				As a user
				I have to be able to sign in and out

Background:
      Given I've signed up

Scenario: Signing in with correct information
				Given I am on the homepage
				And I sign in
				Then I should see "Welcome Ollie!"

Scenario: Signing in with incorrect information
				Given I am on the homepage
				And I sign in with the wrong password
				Then I should not see "Welcome Ollie!"

Scenario: Signing out
				Given I sign in
				And I am on the homepage
				Then I press "Sign Out"
				And I should not see "Welcome Ollie!"