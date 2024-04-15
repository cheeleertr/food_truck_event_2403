require './lib/item'
require './lib/food_truck'
require './lib/event'

RSpec.describe do
  it "initializes" do
    event = Event.new("South Pearl Street Farmers Market")

    expect(event).to be_a Event
    expect(event.name).to eq("South Pearl Street Farmers Market")
    expect(event.food_trucks).to eq([])
  end
end