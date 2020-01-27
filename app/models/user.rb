class User < ApplicationRecord
    has_secure_password

    has_many :ratings
    has_many :appointments
    has_many :favorites
    has_many :stores, through: :favorites
    has_many :stores, through: :appointments

end
