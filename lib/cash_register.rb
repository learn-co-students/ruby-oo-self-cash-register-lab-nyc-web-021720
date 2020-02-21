class CashRegister
    attr_accessor :total, :discount, :quantity, :items, :last_item

    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @items = []
        @last_item_price = 0
    end

    def add_item(title, price, quantity = 1)
        @total += price * quantity
        quantity.times {@items << title}
        @last_item = price * quantity
    end

    def apply_discount
        if !@discount
            return "There is no discount to apply."
        end

        @total = @total - (@total * (@discount.to_f/100))
        @total = @total.to_i
        "After the discount, the total comes to $#{@total}."
    end

    def void_last_transaction
        @total = @total - @last_item
    end
end
