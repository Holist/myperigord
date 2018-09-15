class CreateProductors < ActiveRecord::Migration[5.2]
  def change
    create_table :productors do |t|
      t.string :compagny
      t.text :description
      t.string :avatar
      t.string :website
      t.string :productor_banner
      t.string :quote

      t.timestamps
    end
  end
end
