require 'flip'

describe 'A Flip:' do
	
	let(:flip) { Flip.new(:content => "Argh!!! Too many cucs!", :created_at => Time.now) }

	it 'has some content' do
		expect(flip.content).to eq "Argh!!! Too many cucs!"
	end 

	it 'has a time stamp' do
		expect(Time.parse(flip.created_at)).to be_within(60).of(Time.now)
	end 

end