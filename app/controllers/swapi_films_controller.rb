class SwapiFilmsController < ApplicationController
  before_action :set_swapi_film, only: [:show]

  # GET /swapi_films
  def index
    @swapi_films = SwapiFilm.all

    render json: @swapi_films
  end

  # GET /swapi_films/1
  def show
    render json: @swapi_film
  end

private
  def set_swapi_film
    @swapi_film = SwapiFilm.find(params[:id])
  end

end
