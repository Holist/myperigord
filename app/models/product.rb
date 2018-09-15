class Product < ApplicationRecord
  belongs_to :productor
  has_many :order_products, dependent: :destroy

  default_scope { where(active: true)

end
