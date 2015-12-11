class AddSockImageToSocks < ActiveRecord::Migration
  def change
    add_column :socks, :sock_image_id, :string
  end
end
