class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :rut_client
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :commune
      t.string :telphone
      t.string :email

      t.timestamps
    end
  end
end
