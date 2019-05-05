class Recommendation
  attr_accessor :scores
  def initialize(user_id, user_scores)
    @scores = cache_rating_scores
    @user_id = user_id
    @user_scores = user_scores
  end

  def recommend_movies
    current_user_rating_hash
    Pearson.recommendations(@scores, @user_id)
  end

  def current_user_rating_hash
    @scores[@user_id] = @user_scores.pluck(:movie_id,:user_rating).to_h
  end

  def cache_rating_scores
    Rails.cache.fetch('cache_rating_score', expires_in: 12.hours) do
      users = User.includes(:ratings)
      scores = {}
      users.each do |user|
        scores[user.id.to_s] = user.ratings.pluck(:movie_id,:user_rating).to_h
      end
      scores
    end
  end
end
