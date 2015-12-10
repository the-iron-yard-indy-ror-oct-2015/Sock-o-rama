class AddSlugToSocks < ActiveRecord::Migration
  def change
    add_column :socks, :slug, :string
  end
end
