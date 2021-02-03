require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it 'gets a bike that is working' do
     expects(@bike.working?).to eq true
  end
end
