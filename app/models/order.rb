class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_products, dependent: :destroy
  enum status: {pending: 0, paid:1}

  def amount_update
    amount_cents = self.order_products.map{|op| op.quantity * op.price_cents}.reduce(:+)
    self.update(amount_cents: amount_cents)
  end

  def amount_create
    a = self.order_products.map{|op| op.quantity * op.price_cents}.reduce(:+)
    self.amount_cents = a
  end

  def order_products?
    self.order_products.present?
  end

  monetize :amount_cents
end
