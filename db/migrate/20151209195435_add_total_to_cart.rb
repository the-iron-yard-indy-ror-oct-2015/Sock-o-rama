class AddTotalToCart < ActiveRecord::Migration
  def change
    add_column :carts, :total, :float, default: 0
  end
end
