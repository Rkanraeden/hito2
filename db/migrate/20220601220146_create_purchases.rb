class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.string :rut_supp
      t.string :name_supplier
      t.string :type_doc
      t.string :prod_id
      t.string :prod_name
      t.integer :units
      t.integer :cost_price
      t.integer :net_price
      t.integer :tax
      t.integer :total

      t.timestamps
    end
  end
end
