class Product < ApplicationRecord
  belongs_to :productor
  has_many :order_products, dependent: :destroy
  monetize :price_cents
end
