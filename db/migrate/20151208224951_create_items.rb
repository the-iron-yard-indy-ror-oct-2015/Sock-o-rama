class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :sock_id
      t.integer :cart_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
