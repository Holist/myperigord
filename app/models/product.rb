class Product < ApplicationRecord

  belongs_to :productor
  belongs_to :user
  has_many :order_products

end
