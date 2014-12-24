Given(/^there are no Flips$/) do
	expect(Flip.count).to eq 0
end

Given(/^one user has Flipped$/) do
	create_user
	@user
	Flip.create(:content => "Argh!!! Too many cucs!", 
							created_at: Time.now,
							:user => @user)
	flip = Flip.first
	puts flip.content
end

