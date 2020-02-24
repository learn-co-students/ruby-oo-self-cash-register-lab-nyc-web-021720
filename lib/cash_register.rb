require 'pry'

class CashRegister 

attr_accessor :total, :discount, :cart, :last_purchase

    def initialize(discount= 0)
        @total = 0
        @discount = discount
        @cart = []
        @last_purchase = 0 
    end 
  

   def add_item(title, price, quanity=1)
     @total += (price * quanity) 
     quanity.times do 
        @cart << title 
     end  
         @last_purchase = price  
    end     
    
   def apply_discount
       if  @discount == 0 
        return "There is no discount to apply."  
       end
       @total = @total - (@total * (@discount/100.0)) 
       @total = @total.to_i 
     "After the discount, the total comes to $#{total}." 
end    

  def items 
      @cart 
  end 

  def void_last_transaction
      @total -= @last_purchase  
  end     


    
 



end 








