class Show < ActiveRecord::Base
    def self.highest_rating
        maximum("rating")
    end

    def self.most_popular_show
        order("rating DESC").first
    end

    def self.lowest_rating
        minimum("rating")
    end

    def self.least_popular_show
        order("rating ASC").first
    end

    def self.ratings_sum
        sum("rating")
    end

    def self.popular_shows
        where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        order("name ASC")
    end









end
