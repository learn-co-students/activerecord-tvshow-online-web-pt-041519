class Show < ActiveRecord::Base

  # Return highest rating for tv show
  def self.highest_rating
    self.maximum(:rating)
  end

  # Return most popular tv show
  def self.most_popular_show
    self.where("rating = ?", self.highest_rating).first
  end

  # Return least rating for tv show
  def self.lowest_rating
    self.minimum(:rating)
  end

  # Return least popular tv show
  def self.least_popular_show
    self.where("rating = ?", self.lowest_rating).first
  end

  # Return sum of all ratings
  def self.ratings_sum
    self.sum(:rating)
  end

  # Return array of all shows with rating greater than 5
  def self.popular_shows
    self.where("rating > 5")
  end

  # Return array of all shows sorted by alphabetical order by name
  def self.shows_by_alphabetical_order
    self.order(:name)
  end

end