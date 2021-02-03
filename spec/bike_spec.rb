require 'bike.rb'

RSpec.describe Bike do
  it 'checks if the bike is working' do
    expect('bike').to respond_to.working?
  end
end
