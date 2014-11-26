Then(/^I visit the Sign Up page$/) do
	visit('/users/new')
end

Then(/^I sign up as "(.*?)"$/) do |arg1|
	fill_in :name, :with => arg1
	fill_in :email, :with => "ollie@ollie.com"
	fill_in :password, :with => "passwordtest"
	fill_in :password_confirmation, :with => "passwordtest"
end

Then(/^my password and confirmation don't match$/) do
	fill_in :name, :with => "Oliver"
	fill_in :email, :with => "ollie@ollie.com"
	fill_in :password, :with => "passwordtest"
	fill_in :password_confirmation, :with => "passwordtest2"
end

Given(/^another person has already signed up with my email address$/) do
		User.create(:email => "ollie@ollie.com",
	              :name => "Ollie",
	              :password => "password",
	              :password_confirmation => "password")
end

