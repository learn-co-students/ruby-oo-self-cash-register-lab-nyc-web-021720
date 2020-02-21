
class CashRegister

  attr_accessor :discount, :total, :last_transaction
  attr_reader :items
  
  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount 
  end



  def add_item(title, price, quantity = 1)
    quantity.times do |i|
      items << title
    end
    
    self.total += price * quantity 
    self.last_transaction = price * quantity
  end 

  def apply_discount
    price_off = (self.total * self.discount) / 100.00
    self.total -= price_off 

    self.discount == 20 ? "After the discount, the total comes to $#{self.total.round}." : "There is no discount to apply."
  end

  def void_last_transaction
    self.total -= self.last_transaction 
  end 

end

