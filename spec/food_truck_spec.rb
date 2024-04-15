require './lib/item'
require './lib/food_truck'

RSpec.describe do
  it "initializes" do
    food_truck = FoodTruck.new("Rocky Mountain Pies")

    expect(food_truck).to be_a FoodTruck
    expect(food_truck.name).to eq('Peach Pie (Slice)')
    expect(food_truck.inventory).to eq({})
  end

  describe "#check_stock" do
    it "can check stock of items" do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
      item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
      item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})

      expect(food_truck.check_stock(item1)).to eq(0)
    end
  end
end

