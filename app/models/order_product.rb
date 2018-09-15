class OrderProduct < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validates :quantity, presence: true
  validates :product, presence: true
  validates :order, presence: true

  # before_save :finalize

  # def total_price
  #   price * quantity
  # end

  # private

  # def finalize
  #   self[:unit_price] = unit_price
  #   self[:total_price] = quantity * self[:unit_price]
  # end

end
