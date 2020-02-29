class Api::V1::MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :update, :destroy]


  # POST /movies
  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      render json: {msg: 'Pelicula creada con exito'}, status: :ok
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end



  private


    # Only allow a trusted parameter "white list" through.
    def movie_params
      params.require(:movie).permit!
    end
end
