Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/" => "friends#index"

  namespace :api do

    namespace :v1 do

      get "/friends" => "friends#index"

      get "/friends/:id" => "friends#show"

      post "/friends" => "friends#create"

      patch "/friends/:id" => "friends#update"

      delete "/friends/:id" => "friends#destroy"

    end

    namespace :v2 do

      get "/friends" => "friends#index"

      get "/friends/:id" => "friends#show"

      post "/friends" => "friends#create"

      patch "/friends/:id" => "friends#update"

      delete "/friends/:id" => "friends#destroy"

    end

  end

end
