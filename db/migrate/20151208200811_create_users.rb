class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      # Authlogic::ActsAsAuthentic::Email
            t.string    :email
            t.string    :name
            t.string    :street1
            t.string    :street2
            t.string    :city
            t.string    :state
            t.string    :zip_code

            # Authlogic::ActsAsAuthentic::Password
            t.string    :crypted_password
            t.string    :password_salt

            # Authlogic::ActsAsAuthentic::PersistenceToken
            t.string    :persistence_token

      t.timestamps null: false
    end
  end
end
