class CreateTypeDocuments < ActiveRecord::Migration[7.0]
  def change
    create_table :type_documents do |t|
      t.integer :code
      t.string :name

      t.timestamps
    end
  end
end
