class Cart < ActiveRecord::Base
  extend FriendlyId

  friendly_id :name, use: :slugged, slug_column: :permalink

  has_many :items
  belongs_to :user

end
