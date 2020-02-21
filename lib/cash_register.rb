require "pry"
class CashRegister
    attr_accessor :discount, :total, :void_last_transaction, :items
    
    def initialize(discount=nil)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, amount=1)
        self.total += price * amount

    end

    def apply_discount
        if discount
            self.total = (self.total * ((100.0 - discount.to_f)/100)).to_i
            # binding.pry
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        
    end
    
    def void_last_transaction
        
    end

    
end

new_register = CashRegister.new
puts "hi hello"