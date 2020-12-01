require 'pry'
class Show < ActiveRecord::Base
    def self.highest_rating
        Show.maximum(:rating)
    end

    def self.most_popular_show
        highest_rating.first
    end

    def self.popular_shows
        Show.where("rating > 5")
    end
end