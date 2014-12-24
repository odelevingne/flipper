require 'flip'
require 'user'

describe 'A Flip:' do

	before(:each) do
		create_user
  	Flip.create(:content => "Argh!!! Too many cucs!",
             		:created_at => Time.now,
             		:user => @user)
  end

	it 'has some content' do
		expect(flip.content).to eq "Argh!!! Too many cucs!"
	end 

	it 'has a time stamp' do
		expect(Time.parse(flip.created_at)).to be_within(60).of(Time.now)
	end 

	it 'is created with a user' do
		expect(flip.user.name).to eq 'Ollie'
	end

	def flip
		Flip.first
	end

	def create_user
		@user = User.create(:email => "ollie@ollie.com",
              :name => "Ollie",
              :password => "password",
              :password_confirmation => "password")
	end

end