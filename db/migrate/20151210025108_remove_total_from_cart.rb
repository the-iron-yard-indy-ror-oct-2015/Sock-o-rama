class RemoveTotalFromCart < ActiveRecord::Migration
  def change
    remove_column :carts, :total, :integer
  end
end
