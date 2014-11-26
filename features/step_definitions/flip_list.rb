Given(/^there are no Flips$/) do
	
end

Given(/^one user has Flipped$/) do
	Flip.create(:content => "Argh!!! Too many cucs!", 
							created_at: Time.now )
	flip = Flip.first
	puts flip.content
end

