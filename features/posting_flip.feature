Feature: Posting A Flip
				In order to post a Flip
				As a user
				I should fill out the form and see the Flip on the homepage

Scenario: Adding a Flip
				Given I am on the homepage
				When I fill in "flip" with "I'm so ANGRY!"
				And I press "Flip!"
				Then I should see "I'm so ANGRY!"

				