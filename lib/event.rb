class Event
  attr_reader :name, :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_trucks_names
    @food_trucks.map {|food_truck| food_truck.name}
  end

  def food_trucks_that_sell(item)
    @food_trucks.select {|food_truck| food_truck.inventory.include?(item)}
  end

  def sorted_item_list
    list = []
    @food_trucks.each do |food_truck|
      food_truck.inventory.each {|item| list << item.first}
    end
    list.uniq.sort_by {|item| item.name}
  end

  def total_inventory
    inventory = {}
    @food_trucks.each do |food_truck|
      food_truck.inventory.each do |item|
        item_hash = {}
        item_hash[:quantity] = 0
        item_hash[:quantity] += food_trucks_that_sell(item.first).count
        item_hash[:food_trucks] = food_trucks_that_sell(item.first).sort_by {|food_truck| food_truck.name}
        inventory[item.first] = item_hash
        require 'pry'; binding.pry
      end
    end
    inventory
  end
end