class Customer < ApplicationRecord
  acts_as :user
  has_many :orders, dependent: :destroy
end
