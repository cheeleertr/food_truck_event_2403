require './lib/item'
require './lib/food_truck'

RSpec.describe do
  it "initializes" do
    food_truck = FoodTruck.new("Rocky Mountain Pies")

    expect(food_truck).to be_a FoodTruck
    expect(food_truck.name).to eq('Peach Pie (Slice)')
    expect(food_truck.inventory).to eq({})
  end

end

