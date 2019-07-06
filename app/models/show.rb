
class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    top_show = self.highest_rating
    Show.where("rating = #{top_show}").first
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    Show.where("rating = ?", self.lowest_rating).first
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.order(name: :asc)
  end

end
