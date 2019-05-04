class RatingsController < ApplicationController
  def index
    @results = Recommendation.new(current_user.id.to_s).recommend_movies
  end

  def create
    ratings = params[:rating]
    ratings.each do |movie_id, rating| ## because as per the form, movie is key and rating is value
      current_user.ratings.create(movie_id: movie_id, user_rating: rating)
    end
    redirect_to ratings_path
  end

  private
  def ratings_params
    params.permit(:rating)
  end
end
