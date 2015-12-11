class Cart < ActiveRecord::Base
  include Payola::Sellable
  extend FriendlyId

  friendly_id :name, use: :slugged, slug_column: :permalink

  has_many :items
  belongs_to :user
  has_paper_trail

  def redirect_path(sale)
    # this could also be a signed S3 url or something
    new_cart_path(sale:ENV['sale_token'])
  end

end
