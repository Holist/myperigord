class Productor < ApplicationRecord
  acts_as :user
  has_many :products, dependent: :destroy
end
