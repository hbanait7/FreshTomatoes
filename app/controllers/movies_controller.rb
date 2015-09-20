class MoviesController < ApplicationController

  before_filter :set_movie, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate, except: [:index, :show]

  def index
    @now_playing = Movie.paginate(page: params[:page], per_page: 6).all.order('created_at DESC').now_playing
    @coming_soon = Movie.all.order('created_at DESC').coming_soon
  end

  def show
    @reviews = @movie.reviews.order('created_at DESC').paginate(page: params[:page], per_page: 6)
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = current_user.created_movies.build(movie_params)

    if @movie.save
      flash[:notice] = 'Movie Successfully Created'
      redirect_to movie_path(@movie)
    else
      flash.now[:alert] = 'Invalid Movie Form'
      render 'new'
    end
  end

  def edit

  end

  def update
    if @movie.update_attributes(movie_params)
      flash[:notice] = 'Movie Successfully Updated'
      redirect_to movie_path(@movie)
    else
      flash.now[:alert] = 'Invalid Movie Form'
      render 'edit'
    end      
  end

  def destroy
    @movie.destroy
    flash[:notice] = 'Movie Successfully Deleted'
    redirect_to root_path
  end


  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :release_date, :genre, :description, :director, :actors, :poster, :trailer)
  end

  def authenticate
    unless logged_in?
      flash[:alert] = 'You Must Log In First'
      redirect_to login_path
    end
  end


end




