class AddTotalToCarts < ActiveRecord::Migration
  def change
    add_column :carts, :total, :integer, default: 0
  end
end
