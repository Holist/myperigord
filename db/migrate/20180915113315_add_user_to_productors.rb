class AddUserToProductors < ActiveRecord::Migration[5.2]
  def change
    add_reference :productors, :user, foreign_key: true
  end
end
