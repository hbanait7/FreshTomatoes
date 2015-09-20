class ReviewsController < ApplicationController

  before_filter :authenticate

  def new
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.build
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.merge(current_user.reviewed_movies).create(review_params)
    # or you can do:
    # @review = @movie.reviews.build(review_params)
    # @review.reviewer = current_user
    # both do the trick!
    if @review.save
      flash[:notice] = 'Review Successfully Created'
      redirect_to movie_path(@movie)
    else
      flash.now[:alert] = 'Invalid Review Form'
      render 'new'
    end
  end


  private

  def review_params
    params.require(:review).permit(:rating, :content, :movie_id)
  end

  def authenticate
    unless logged_in?
      flash[:alert] = 'You Must Log In First'
      redirect_to login_path
    end
  end

end


