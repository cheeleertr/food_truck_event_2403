class FoodTruck
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item)
    @inventory[item]
  end

  def stock(item, amount)
    @inventory[item] += amount
  end

  def potential_revenue
    potential_revenue = 0.0
    @inventory.each do |item, amount|
      potential_revenue += item.price.delete("$").to_f * amount
    end
    potential_revenue
  end
end