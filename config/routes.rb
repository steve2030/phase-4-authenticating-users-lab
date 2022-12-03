Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


post "/login", to: "session#create"
get "/me", to: "users#show"
delete "/logout", to: "session#destroy"

end
