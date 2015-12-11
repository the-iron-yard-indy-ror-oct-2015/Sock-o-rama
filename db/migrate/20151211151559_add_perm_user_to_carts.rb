class AddPermUserToCarts < ActiveRecord::Migration
  def change
    add_column :carts, :perm_user, :integer
  end
end
