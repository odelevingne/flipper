Feature: Flip List
				In order to see what people are Flipping
				As a user
				I should see the Flips on the homepage

Scenario: No users have Flipped
				Given I am on the homepage
				And there are no Flips
				Then I should see "No-one's Flipped!"

Scenario: One user has Flipped
				Given I am on the homepage
				And one user has Flipped
				Then I should see "Argh!!! Too many cucs!"
				And I should not see "No-one's Flipped!"
				