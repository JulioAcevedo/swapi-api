class AddPhotoUrlToSwapiFilms < ActiveRecord::Migration[6.0]
  def change
    add_column :swapi_films, :photo_url, :string
  end
end
