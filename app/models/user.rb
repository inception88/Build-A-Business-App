class User < ApplicationRecord
    has_secure_password
    validates :name, presence: true
    validates :email, presence: true

    has_many :ratings
    has_many :appointments
    has_many :favorites
    has_many :stores, through: :favorites
end
