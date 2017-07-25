class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, :precision => 8, :scale => 3
      t.string :quantity
      t.integer :product_type_id

      t.timestamps
    end
  end
end
