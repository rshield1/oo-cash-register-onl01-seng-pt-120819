class CashRegister
  
attr_accessor :items, :discount, :total, :last_transaction
  
    def initialize(discount=0)
      @total = 0
      @discount = discount
      @items = []
    end
  
  def add_item(title, price, quantity = 1)
  self.total += price * quantity
      quantity.times { items << title }
      self.last_transaction = price * quantity
  end
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      self.total = @total *((100.0 - @discount)/100).to_i
    end
  end
  
  def void_last_transaction
    self.total = @total - self.last_transaction
      if self.total == 0.0 || 0 
        @total
      end
    end
  
end