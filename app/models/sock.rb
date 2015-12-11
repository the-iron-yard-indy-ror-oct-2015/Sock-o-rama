class Sock < ActiveRecord::Base
  extend FriendlyId
  attachment :sock_image
  friendly_id :name, use: :slugged, slug_column: :permalink

  def should_generate_new_friendly_id?
    new_record?
  end

  def type
    if self.img_url
      type = img_url
    else
      type = sock_image_url
    end
  end



end
