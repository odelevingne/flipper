Feature: Flipper List
				In order to see what people are Flipping
				As a user
				I should see the Flips on the homepage

Scenario: No users have Flipped
				Given I am on the homepage
				And there are no Flips
				Then I should see "No-one's flipped!"

