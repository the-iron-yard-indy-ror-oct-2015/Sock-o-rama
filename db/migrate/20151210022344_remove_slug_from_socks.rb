class RemoveSlugFromSocks < ActiveRecord::Migration
  def change
    remove_column :socks, :slug, :string
  end
end
