class CashRegister

  attr_accessor :discount, :total, :items

  def initialize(discount = nil)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    self.items << title
  end

  def apply_discount
    if @discount
      self.total *= (1 - @discount.to_f/100)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  # def items
  #   self.items
  # end


end
