class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :Id_prod
      t.integer :code
      t.string :brand
      t.string :category
      t.string :description
      t.integer :cost_price
      t.integer :stock
      t.integer :sale_price

      t.timestamps
    end
  end
end
