class MoviesController < ApplicationController
  def index
    @movies = Movie.includes(:ratings)
  end

  def show

  end
  
end
