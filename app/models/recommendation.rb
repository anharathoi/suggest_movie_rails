class Recommendation
  def initialize(user_id)
    @scores = cache_rating_scores
    @user_id = user_id
  end

  def recommend_movies
    Pearson.recommendations(@scores, @user_id)
  end

  def cache_rating_scores
    Rails.cache.fetch('cache_rating_score', expires_in: 12.hours) do
      users = User.includes(:ratings)
      scores = {}
      users.each do |user|
        scores[user.id.to_s] = {}
        ratings_by_this_user = user.ratings
        ratings_by_this_user.each do |row|
          scores[user.id.to_s][row.movie_id.to_s] = row.user_rating
        end
      end
      scores
    end
  end
end
