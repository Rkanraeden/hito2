class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :rut
      t.string :name
      t.string :activity
      t.string :address
      t.string :commune
      t.string :region
      t.string :contact
      t.string :telephone
      t.string :email

      t.timestamps
    end
  end
end
