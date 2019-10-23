require 'pry'
class CashRegister
  INITIAL = 0.0
  @items = []
  attr_accessor :total, :discount, :lastadded
  def initialize(discount = 0.0)
    @total = INITIAL
    @discount = discount
  end
  
  def total
    @total
  end
  
  def add_item(title, price, qntty = 1.0)
    @lastadded = price*qntty
   qntty.to_i.times{ @items << title}
    @total = @total + @lastadded
  end
  
  def apply_discount
    @total = @total - (@total *(@discount/100.0))
    @discount != 0 ? "After the discount, the total comes to $#{@total.to_i}." : "There is no discount to apply."
  end
  
  def items
    @items
  end
  
end
