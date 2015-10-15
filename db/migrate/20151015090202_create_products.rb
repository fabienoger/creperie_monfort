class CreateProducts < ActiveRecord::Migration
  def change
    drop_table :products
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :category
      t.text :ingredients

      t.timestamps null: false
    end
  end
end
