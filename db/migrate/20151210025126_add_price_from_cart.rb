class AddPriceFromCart < ActiveRecord::Migration
  def change
    add_column :carts, :price, :integer, default: 0
  end
end
