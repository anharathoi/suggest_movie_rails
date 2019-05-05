class RatingsController < ApplicationController
  def index
    current_user_ratings = current_user.ratings
    @results = Recommendation.new(current_user.id.to_s, current_user_ratings).recommend_movies
  end

  def create
    ratings = params[:rating]
    ## because as per the form, movie is key and rating is value
    ratings.each do |movie_id, rating|
      current_user.ratings.create(movie_id: movie_id, user_rating: rating)
    end
    redirect_to ratings_path
  end

  private
  def ratings_params
    params.permit(:rating)
  end
end
