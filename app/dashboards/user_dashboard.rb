require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    cart: Field::HasOne,
    id: Field::Number,
    email: Field::String,
    name: Field::String,
    street1: Field::String,
    street2: Field::String,
    city: Field::String,
    state: Field::String,
    zip_code: Field::String,
    crypted_password: Field::String,
    password_salt: Field::String,
    persistence_token: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    cart_id: Field::Number,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :cart,
    :id,
    :email,
    :name,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :cart,
    :email,
    :name,
    :street1,
    :street2,
    :city,
    :state,
    :zip_code,
    :crypted_password,
    :password_salt,
    :persistence_token,
    :cart_id,
  ]

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
