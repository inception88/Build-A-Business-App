class Store < ApplicationRecord
    has_many :ratings
    has_many :appointments
    has_many :favorites
    has_many :users, through: :favorites

    def overall_rating
        if !self.ratings[0].nil?
            i = 0
            c = 0
            self.ratings.each do |r|
                i += r.score
                c += 1
            end
            average = i/c
        else
            return "No Ratings Submitted"
        end
    end

    scope :city_search, ->(city) { where("city = ?", city) }
end
