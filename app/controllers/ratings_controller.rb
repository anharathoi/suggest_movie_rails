class RatingsController < ApplicationController
  def index
    @ratings = Rating.limit(10)
  end
end
