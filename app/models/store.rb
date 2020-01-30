class Store < ApplicationRecord
    has_many :ratings
    has_many :appointments
    has_many :favorites
    has_many :users, through: :favorites
end
