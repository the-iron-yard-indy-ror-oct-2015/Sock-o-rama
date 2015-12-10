require "administrate/base_dashboard"

class SockDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    size: Field::String,
    material: Field::String,
    color: Field::String,
    price: Field::Number.with_options(decimals: 2),
    inventory: Field::Number,
    style: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    img_url: Field::String,
    name: Field::String,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :size,
    :material,
    :color,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :size,
    :material,
    :color,
    :price,
    :inventory,
    :style,
    :img_url,
    :name,
  ]

  # Overwrite this method to customize how socks are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(sock)
  #   "Sock ##{sock.id}"
  # end
end
