require_relative '../app/models/user'
require 'spec_helper'

describe 'User' do

	before(:each) do
    create_user
  end

	it 'is created with the necessary fields' do
		expect(user.email).to eq 'ollie@ollie.com'
		expect(user.name).to eq 'Ollie'
		expect(User.count).to eq 1
	end

	def user
		User.first
	end

	def create_user
		User.create(:email => "ollie@ollie.com",
              :name => "Ollie",
              :password => "password",
              :password_confirmation => "password")
	end

end