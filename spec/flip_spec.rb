require 'flip'

describe 'A Flip:' do
	
	before(:each) do
  Flip.create(:content => "Argh!!! Too many cucs!",
              :created_at => Time.now)
  end


	it 'has some content' do
		expect(flip.content).to eq "Argh!!! Too many cucs!"
	end 

	it 'has a time stamp' do
		expect(Time.parse(flip.created_at)).to be_within(60).of(Time.now)
	end 

	def flip
		Flip.first
	end

end