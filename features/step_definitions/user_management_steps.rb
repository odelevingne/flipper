Then(/^I visit the Sign Up page$/) do
	expect(current_path).to eq '/users/new'
end

Then(/^I sign up as "(.*?)"$/) do |arg1|
	fill_in :name, :with => "Oliver"
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

