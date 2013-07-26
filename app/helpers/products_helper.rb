module ProductsHelper
	def print_price(price)
		number_to_currency price
	end

	def print_stock(stock, requested = 1)
		if stock == 0
			content_tag(:span, "Out of Stock", class: "out_stock")
		elsif stock > 0 && requested < stock
			content_tag(:span, "In Stock (#{stock})", class: "in_stock")
		else
			content_tag(:span, "Insufficient stock (#{stock})", class: "low_stock")
		end
	end
end


# content_tag(:div, content_tag(:p, "Hello world!"), class: "strong")
#  # => <div class="strong"><p>Hello world!</p></div>