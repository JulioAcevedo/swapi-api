class CreateSwapiFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :swapi_films do |t|
      t.string :title
      t.string :director
      t.integer :episode_id
      t.string :producer
      t.date :release_date
      t.string :url
      t.text :opening_crawl

      t.timestamps
    end
  end
end
