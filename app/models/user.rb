class User < ApplicationRecord
    has_secure_password
    validates :name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

    has_many :ratings
    has_many :appointments
    has_many :favorites
    has_many :stores, through: :favorites

    scope :facebook, -> { where.not(uid: nil) }

end
