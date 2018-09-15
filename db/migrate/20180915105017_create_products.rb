class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.integer :price
      t.references :productor, foreign_key: true

      t.timestamps
    end
  end
end
