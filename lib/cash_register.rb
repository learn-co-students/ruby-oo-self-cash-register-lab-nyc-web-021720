require 'pry' 
class CashRegister 
    attr_accessor :total, :discount, :last_item
    items = []
    def initialize(empl_discount=nil) #initializer
        @total = 0 
        @discount = empl_discount
        @items = []
        @last_item = 0 
    end 

    def add_item(title, price, quantity=1) #instance method
        @total += price * quantity
        @last_item = price * quantity 
        until quantity == 0 
            @items << title
            quantity -= 1
        end 
        
    end 
    def apply_discount
        if @discount == nil 
            "There is no discount to apply."
        else 
        discount = @total * (@discount / 100.00)
        discounted_total = @total -= discount
        "After the discount, the total comes to $#{discounted_total.to_i}."
        end 
    end 

    def items 
        @items 
    end 

    def void_last_transaction 
        @total = self.total - self.last_item 
        
        
    end 

end 