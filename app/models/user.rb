class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :orders
  has_many :products
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

<<<<<<< HEAD
  actable
=======
>>>>>>> 54b5224a31439a3a61ea636e6b2ba6dbe3ecec36
end
