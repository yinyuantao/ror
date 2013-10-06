class BookInStock
    attr_accessor :isbn
    attr_accessor :price
    
    def initialize(isbn, price)
        @isbn = isbn
        @price = price
		if isbn.length ==0 or price <=0
			raise ArgumentError	
		end
    end
    
    def price_in_cents
        @price * 100
    end

	def price_as_string
		return "$#{@price.to_i}."+"#{(@price % 10.0)}"[2..3]
	end
end

puts BookInStock.new('isbn11', 20).price_as_string    
