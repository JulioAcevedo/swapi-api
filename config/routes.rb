Rails.application.routes.draw do
  resources :swapi_films, only: %i[index show] do
    post :submit_photo
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
