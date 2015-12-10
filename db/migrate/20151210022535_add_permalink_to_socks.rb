class AddPermalinkToSocks < ActiveRecord::Migration
  def change
    add_column :socks, :permalink, :string
  end
end
