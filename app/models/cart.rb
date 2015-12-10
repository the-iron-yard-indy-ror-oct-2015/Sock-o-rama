class Cart < ActiveRecord::Base
  include Payola::Sellable
  extend FriendlyId

  friendly_id :name, use: :slugged, slug_column: :permalink

  has_many :items
  belongs_to :user

end
