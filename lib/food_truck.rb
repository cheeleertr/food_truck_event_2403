class Item
  attr_reader :name

  def initialize(name)
    @name = name
    @inventory = {}
  end

  
end