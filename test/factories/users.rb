FactoryGirl.define do
  factory :user do
    email       Faker::Internet.email
    name        Faker::Name.name
    street1     Faker::Address.street_address
    city        Faker::Address.city
    state       Faker::Address.state
    zip_code    Faker::Address.zip_code
    password    Faker::Internet.password
    password_confirmation   { password }
  end

end
