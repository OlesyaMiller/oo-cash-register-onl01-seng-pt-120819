require 'pry'

class CashRegister
  
  attr_writer :discount, :total
  attr_reader :discount, :total, :items, :last 

  def initialize(discount = nil)
    @total = 0 
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1) 
   
    @last = price*quantity 
    @total += @last 
    
    quantity.times do 
      @items << title
    end
  end
  
  def apply_discount
    if @discount != nil 
      @total -= @total/100 * @discount
      return "After the discount, the total comes to $#{@total}."
    else 
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last 
  end

end






