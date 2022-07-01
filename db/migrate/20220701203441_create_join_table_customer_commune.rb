class CreateJoinTableCustomerCommune < ActiveRecord::Migration[7.0]
  def change
    create_join_table :customers, :communes do |t|
      t.index [:customer_id, :commune_id]
      t.index [:commune_id, :customer_id]
    end
  end
end
