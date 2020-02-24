class CashRegister
    attr_accessor :total , :discount, :last_transaction
    
    def initialize(discount = nil) 
        @total = 0
        @discount = discount
        @items = []
    end
    
    def add_item(title,price,quantity = nil)
        
        
        
        if quantity
            @total += price * quantity
            count = 0 
            while count < quantity do
                @items.push(title)
                count += 1
    
            end
            self.last_transaction = price * quantity

        else
            @total += price
            @items.push(title)   
             self.last_transaction = price

        end

    
    end

    def apply_discount
        if @discount 
        @total = (@total * ((100.0 - @discount.to_f)/100)).to_i
       
       
        "After the discount, the total comes to $" +@total.to_s+"."
        else
            "There is no discount to apply."
        end
    
    end

    def items
        @items
    end

    def void_last_transaction

        self.total = self.total - self.last_transaction

    end

end