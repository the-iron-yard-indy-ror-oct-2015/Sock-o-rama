class CreateSocks < ActiveRecord::Migration
  def change
    create_table :socks do |t|
      t.string :size
      t.string :material
      t.string :color
      t.float :price
      t.integer :inventory
      t.string :style

      t.timestamps null: false
    end
  end
end
