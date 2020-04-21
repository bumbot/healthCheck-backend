class User < ApplicationRecord
    has_many :appointments
    has_many :clinics, through: :appointments

    has_secure_password
    validates :username, uniqueness: { case_sensitive: true }
end
