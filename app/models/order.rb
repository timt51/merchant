class Order < ActiveRecord::Base
	has_many :order_items, dependent: :destroy
	def total(subtotal)
		@total ||= 0
		@total += subtotal
	end
end
