class Rating < ApplicationRecord
    belongs_to :user
    belongs_to :store

    validates :score, :inclusion => 1..5
end
