Given(/^there are no Flips$/) do
	
end

Given(/^one user has Flipped$/) do
	@flip = Flip.new({ content: "Argh!!! Too many cucs!", created_at: Time.now })
end