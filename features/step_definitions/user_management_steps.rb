Then(/^I visit the Sign Up page$/) do
	expect(current_path).to eq '/users/new'
end

Then(/^I sign up as "(.*?)"$/) do |arg1|
	fill_in :name, :with => "Oliver"
	fill_in :email, :with => "ollie@ollie.com"
end

