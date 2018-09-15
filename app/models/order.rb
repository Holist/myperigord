class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_products, dependent: :destroy
  # before_save :update_subtotal

  # def subtotal
  #   order.product.collect { |op| op.valid? ? (op.quantity * op.price) : 0 }.sum
  # end

  # private

  # def method_name
  #   self[:subtotal] = subtotal
  # end

end
