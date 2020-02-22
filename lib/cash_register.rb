require "pry"
class CashRegister
    attr_accessor :total, :discount, :item , :last_transaction_price #sets methods to be used for dot notation

    
    def initialize(discount = 0) #Says what attributes each instance is born with
        @total = 0
        @discount = discount 
        @item = []
    end

    def add_item(item,price, quantity = 1) # in error steps, "#" means a dot notation or instance method
        self.total += (price * quantity)

        quantity.times do 
            @item << item
        end

        self.last_transaction_price = price * quantity 
    end 

    def apply_discount
        if discount != 0
            self.total = (total * ((100.0 - discount)/100.0)).to_i
            return "After the discount, the total comes to $#{self.total}."
        else 
            return "There is no discount to apply."
        end

    end 

    def items
        @item
    end 

    def void_last_transaction
        self.total -= last_transaction_price
    end
end

