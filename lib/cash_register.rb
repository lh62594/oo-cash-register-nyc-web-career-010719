require 'pry'

class CashRegister

  attr_accessor :discount, :total



  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
    @all_transactions = []
  end


  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity

    i = 0
    until i == quantity
      @items << title
      @all_transactions << price
      i += 1
    end

  end

  def apply_discount
    @total = @total * (100 - @discount)/100

    if @discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total}."
    end
  end


  def items
    @items
  end

  def void_last_transaction
    @total = @total- @all_transactions.pop
  end


end #this is the end of the CashRegister class


# a1 = CashRegister.new
# a2 = CashRegister.new(20)
#
# a1.add_item("banana", 3, 5)
# a1.add_item("orange", 5)
# a1.add_item("milk", 10, 2)
#
# binding.pry
