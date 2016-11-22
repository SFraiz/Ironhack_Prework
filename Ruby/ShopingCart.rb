class ShoppingCart
  def initialize
    @items = []
  end

  def add_item(item)
    @items.push(item)
  end

  def checkout
    total_price = 0
    @items.each do |item|
      total_price += item.price
    end
    if @items.length > 5
      puts total_price * 0.9
    else
      puts total_price
    end
  end
end


class Item
  def initialize(name, price)
    @name = name
    @price = price
  end

  def price
    @price
  end
end

class Houseware < Item

  def price
    if @price > 100
      @price*0.95
    else
      @price
    end
  end

end

class Fruit < Item
  def price
    @price
  end
end

joshs_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
vaccuum = Houseware.new("Vaccuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.checkout
