class MoviesController < ApplicationController
  def index
    # @movies = Movie.limit(20).order()
    @movies = []
    movies = Movie.joins(:ratings).group('movies.id').order("count(ratings) desc").limit(100)
    5.times do
      @movies << movies[rand(1..100)]
    end
    @rating = Rating.new
  end

  def show

  end
  
end
