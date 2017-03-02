Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v2 do
      get "/cars", to:'cars#index'
      post "/new", to:'cars#create'
      get "/cars/:id", to:'cars#show'
      patch "/cars/:id", to:'cars#update'
      delete "/cars/:id", to:'cars#destroy'
    end
  end 
  get "/", to:'vehicles#index'
end
