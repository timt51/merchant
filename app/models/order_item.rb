class OrderItem < ActiveRecord::Base
	belongs_to :order
	belongs_to :product
	validates :order_id, presence: true
	validates :product_id, presence: true
	def subtotal(item)
		item.quantity.to_i * item.product.price
	end
end
