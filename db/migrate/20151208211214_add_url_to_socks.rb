class AddUrlToSocks < ActiveRecord::Migration
  def change
    add_column :socks, :img_url, :string
    add_column :socks, :name, :string
  end
end
