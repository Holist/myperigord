class Order < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD
=======
  has_many :order_products 
>>>>>>> 54b5224a31439a3a61ea636e6b2ba6dbe3ecec36
end
