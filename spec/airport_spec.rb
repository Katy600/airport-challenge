require 'airport'

describe Airport do
  let(:airport) {Airport.new}


  describe "#initialize" do
    it 'starts with an empty airport' do
    expect(airport.planes).to be_empty
  end
  end
  describe "#land" do
    it { is_expected.to respond_to(:land) }

    it 'will respond to land with one arguent' do
      expect(subject).to respond_to(:land).with(1).argument
    end

    it 'will have one plane once landed' do
      plane = double("plane")
      airport.land(plane)
      expect(airport.planes).to eq([plane])
    end
  end


end
