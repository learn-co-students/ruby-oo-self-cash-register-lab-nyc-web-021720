

class CashRegister
    attr_accessor  :total , :discount , :item , :price , :quantity,:items,:xox,:trans 
    
    
    def initialize(discount=0)
     @discount = discount
     @total = 0
     @items =[]
     @xox = Hash.new
     @xox.uniq
     @transactions=[]
    end
    
    def apply_discount
       if @discount > 0
        @total = @total - (@total * (@discount/100.to_f))
       return "After the discount, the total comes to $#{@total.to_i}."  
       else
       return "There is no discount to apply."  
       end
    end 
   
    def add_item(item,price,quantity=1)
       @xox[item]=price
       @item = item
       @price =price 
       @quantity = quantity
       @transactions.push([@item,@price,@quantity])
       @total += price * @quantity
       i = 1 
       while i <= quantity 
         i+=1
         @items.push(item)
       end 
    end

    def void_last_item
        if @items.length == 1
            @total = 0.0
        else 
         @total = @total - xox[@items.pop()].to_f
        end
    end 
    
    def void_last_transaction
        @trans = @transactions.pop()
        @total = @total - ( @trans[1].to_f * @trans[2] )
    end
end