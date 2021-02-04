require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'responds to dock method' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'docks something' do
  bike = Bike.new
  expect(subject.dock(bike)).to eq(bike)
  end

  it 'checks a bike is in docking station' do
  bike = Bike.new
  subject.dock(bike)

  expect(subject.bike).to eq(bike)
  end

end
