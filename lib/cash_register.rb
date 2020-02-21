
class CashRegister

    attr_accessor :total
    attr_reader :discount

    def initialize(employee_discount = 0)
        @total = 0
        @discount = employee_discount
        @items = []
    end

    def add_item(item_title, item_price, item_quantity = 1)
        item_quantity.times do |item|
            @items << [item_title, item_price, item_quantity]
        end
        @total += item_price * item_quantity
    end

    def apply_discount
        if @discount > 0 then
            @total = @total*(100-@discount).to_f/100
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items.map do |item|
            item[0]
        end
    end

    def void_last_transaction
        last_item = @items.last
        @items = @items.pop
        @total -= last_item[1]*last_item[2]
    end
end