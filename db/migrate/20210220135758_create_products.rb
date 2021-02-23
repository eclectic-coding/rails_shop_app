class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.decimal :price, precision: 5, scale: 2
      t.string :description
      t.string :category
      t.string :image
      t.string :stock

      t.timestamps
    end
  end
end
