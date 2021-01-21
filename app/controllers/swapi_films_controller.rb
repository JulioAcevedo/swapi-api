class SwapiFilmsController < ApplicationController
  before_action :set_swapi_film, except: [:index]

  # GET /swapi_films
  def index
    @swapi_films = SwapiFilm.all

    render json: @swapi_films
  end

  # GET /swapi_films/1
  def show
    render json: @swapi_film
  end
  
  # POST /swapi_films/1/submit_photo/
  def submit_photo
    @swapi_film.photo_url = params[:photo_url]
    @swapi_film.save!

    render json: { status: :no_content }
  end

private
  def set_swapi_film
    id = params[:id] || params[:swapi_film_id]
    @swapi_film = SwapiFilm.find(id)
  end

end
