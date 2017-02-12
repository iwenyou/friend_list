Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/friends" => "friends#index"

  get "/friends/:id" => "friends#show"

  post "/friends" => "friends#create"

  patch "/friends/:id" => "friends#update"

  delete "/friends/:id" => "friends#destroy"
end
