class Movie < ApplicationRecord
  has_many :ratings
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def avg_rating
    total_rating = self.ratings.sum(:user_rating)
    total_user = self.ratings.count(:user_id)
    avg_rating = total_rating / total_user
  end
end
