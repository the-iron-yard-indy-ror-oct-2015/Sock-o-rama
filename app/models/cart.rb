class Cart < ActiveRecord::Base
  include Payola::Sellable

  has_many :items
  belongs_to :user

end
