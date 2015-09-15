class MoviesController < ApplicationController

  before_filter :set_movie, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate, except: [:index, :show]

  def index
    @movies = Movie.all
  end

  def show

  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

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
    params.require(:movie).permit(:title, :release_date, :genre, :description, :director, :actors)
  end

  def authenticate
    unless logged_in?
      flash[:alert] = 'You Must Sign In First'
      redirect_to login_path
    end
  end

end




