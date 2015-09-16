class ReviewsController < ApplicationController

  def new
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.build
  end

  def create
    @movie = Movie.find(params[:movie_id])
    # @review = @movie.reviews.merge(current_user.reviewed_movies).create(review_params)
    @review = @movie.reviews.build(review_params)
    @review.reviewer = current_user
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
    params.require(:review).permit(:title, :rating, :content, :movie_id)
  end

end
