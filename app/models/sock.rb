class Sock < ActiveRecord::Base
  extend FriendlyId

  friendly_id :name, use: :slugged, slug_column: :permalink
end
