# frozen_string_literal: true

namespace :db do
  desc 'Initialize Star Wars Data'
  task swapi: [:environment] do
    require 'net/http'

    parsed_films = JSON(Net::HTTP.get(URI('https://swapi.dev/api/films/')))
    films = SwapiFilm.all

    if parsed_films['count'] === films.size
      puts 'Films are up to date'
      return
    end

    puts 'Downloading SWAPI content ...'
    films.destroy_all

    parsed_films['results'].each do |film|
      film_args = {
        title: film['title'],
        director: film['director'],
        episode_id: film['episode_id'],
        producer: film['producer'],
        release_date: film['release_date'],
        url: film['url'],
        opening_crawl: film['opening_crawl'],
      }
      SwapiFilm.create(film_args)
    end

    puts "#{SwapiFilm.all.size} films created!"
  end
end
