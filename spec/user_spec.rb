require 'user'
require 'spec_helper'

describe 'User' do

	before(:each) do
    User.create(:email => "ollie@ollie.com",
                :name => "Ollie",
                :password => "password")
  end


	it 'is created with an email address' do
		expect(user.email).to eq 'ollie@ollie.com'
	end

	it 'is created with a name' do
		expect(user.name).to eq 'Ollie'
	end

	def user
		User.first
	end

end