class AddPermalinkToCart < ActiveRecord::Migration
  def change
    add_column :carts, :permalink, :string
  end
end
