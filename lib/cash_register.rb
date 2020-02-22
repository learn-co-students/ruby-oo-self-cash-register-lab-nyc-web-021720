require "pry"
class CashRegister
    attr_accessor :discount, :total, :item, :price, :last_transaction_amount 
    @@all = []
    def initialize(discount=nil)
        @total = 0
        @discount = discount
        @items = []
        CashRegister.all << self
    end

    def add_item(title, price, amount=1)
        self.total += price * amount

        if amount 
            amount.times do
                @items << title
            end
        end
        self.last_transaction_amount = price * amount
        # binding.pry
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
        @items
        
    end
    
    def void_last_transaction
        self.total -= last_transaction_amount

        # binding.pry
       
        
    end

    def self.all
        @@all
    end
    # binding.pry

end

new_register = CashRegister.new
# binding.pry
puts "hi hello"