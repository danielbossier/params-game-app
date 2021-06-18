Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/name" => "params#name"

  get "/number_game" => "params#number_game"

  get "/number_game_segment/:number" => "params#number_game"

  post "/number_game" => "params#number_game"

  post "/user_input" => "params#user_input"

end
