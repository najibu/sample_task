class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :average_rating
      t.decimal :price
      t.boolean :active

      t.timestamps
    end
  end
end
