require 'flip'

describe 'A Flip:' do
	
	it 'has some content' do
		flip = Flip.new(content: "Argh!!! Too many cucs!")
		expect(flip.content).to eq "Argh!!! Too many cucs!"
	end  


end