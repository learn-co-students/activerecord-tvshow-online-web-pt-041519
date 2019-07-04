class Show < ActiveRecord::Base

   def self.highest_rating
      Show.maximum('rating')
      # binding.pry
   end

   def self.most_popular_show
      Show.find_by(rating: self.highest_rating)
   end

   def self.lowest_rating
      Show.minimum('rating')
   end

   def self.least_popular_show
      Show.find_by(rating: self.lowest_rating)
   end

   def self.ratings_sum
      Show.sum('rating')
      # binding.pry
   end

   def self.popular_shows
      Show.all.where('rating > 5')
      # binding.pry
   end

   def self.shows_by_alphabetical_order
      Show.all.order('name ASC')
      # binding.pry
   end


end