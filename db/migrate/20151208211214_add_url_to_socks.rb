class AddUrlToSocks < ActiveRecord::Migration
  def change
    add_column :socks, :img_url, :string
  end
end
