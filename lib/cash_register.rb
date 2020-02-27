
class CashRegister

    attr_accessor :total, :discount, :items, :last_item

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        @total += price * quantity
        quantity.times do @items << title end 
        @last_item = price * quantity
    end

    def apply_discount
        if @discount != 0
            @total -= @discount * @total / 100.0
            return "After the discount, the total comes to $800."
        else
            return "There is no discount to apply."
        end
    end

    def items
        @items  
    end

    def void_last_transaction
       @total -= @last_item
    end


end