class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.datetime :date
      t.string :type_doc
      t.string :num_doc
      t.string :vendor
      t.string :name_client
      t.string :address
      t.string :commune
      t.string :region
      t.string :category
      t.string :prod_id
      t.string :prod_desc
      t.integer :units
      t.integer :cost_price
      t.integer :sale_price
      t.integer :net_price
      t.integer :tax
      t.integer :total

      t.timestamps
    end
  end
end
