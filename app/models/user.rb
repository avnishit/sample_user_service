class User < ApplicationRecord
    has_secure_password
    # validations
    validates_presence_of :first_name, :last_name, :email
end
