class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = [] 
    end

    def add_item(title, price, quantity=1)
        self.total += price*quantity
        quantity.times do
            self.items << title
        end
        self.last_transaction = quantity * price
    end

    def apply_discount
        if discount != 0
            self.total = (self.total * ((100.0 - discount.to_f)/100)).to_i
            p "After the discount, the total comes to $#{total}."
        else
            p "There is no discount to apply."
        end
        
    end

    def items
        @items
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end

end 