class AddActableToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :actable_id, :integer
    add_column :users, :actable_type, :string
  end
end
