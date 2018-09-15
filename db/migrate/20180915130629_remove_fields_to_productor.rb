class RemoveFieldsToProductor < ActiveRecord::Migration[5.2]
  def change
    remove_reference :productors, :user, foreign_key: true
  end
end
