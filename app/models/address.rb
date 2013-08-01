class Address < ActiveRecord::Base
	validates :line1, presence: true
	validates :city, presence: true
	validates :state, presence: true, length: { is: 2 }, format: { with: /[A-Z]{2}/, message: "must be two uppercase letters" }
	validates :zip, presence: true, numericality: { only_integer: true, greater_than: 0 }, length: { is: 5 }
	validates :user_id, presence: true
	belongs_to :user
	has_many :orders

	def to_s
		self.line2 ||= ""
		"#{self.line1} #{self.line2}"
	end

	# Let’s implement a better to_s in the Address model. Define the method,
	#  build an array of the attributes you want to display, then join them
	#   together with a comma and a space.
end
