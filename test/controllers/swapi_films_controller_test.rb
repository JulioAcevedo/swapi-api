require 'test_helper'

class SwapiFilmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @swapi_film = swapi_films(:one)
  end

  test "should get index" do
    get swapi_films_url, as: :json
    assert_response :success
  end

  test "should show swapi_film" do
    get swapi_film_url(@swapi_film), as: :json
    assert_response :success
  end
end
