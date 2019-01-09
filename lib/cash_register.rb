
class CashRegister

  attr_accessor :total, :cash_register_with_discount, :add_item, :items



    def initialize(discount=0)
      @total = 0
      @cash_register_with_discount = cash_register_with_discount
      @discount = discount
      @items = []
    end

    def discount
      @discount
    end

    def add_item(item, price, qty = 1)
      @total = @total + (price*qty)
      qty.times {@items << item}
    end

    def apply_discount
        if self.discount == 0
          "There is no discount to apply."
        else
          @total = (@total/100)*80
          "After the discount, the total comes to $#{@total}."
        end
    end

    def void_last_transaction
      @total = 0
    end


end
