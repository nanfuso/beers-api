Rails.application.routes.draw do
  get '/' => 'beers#index'
  get '/beers' => 'beers#index'
  post '/beers' => 'beers#create'
  
    namespace :api do

        namespace  :v1 do
          get '/beers' => 'beers#index'
          post '/beers' => 'beers#create'
          get '/beers/:id' => 'beers#show'
          patch '/beers/:id' => 'beers#update'
        end

        namespace  :v2 do
            get '/beers' => 'beers#index'
            post '/beers' => 'beers#create'
            get '/beers/:id' => 'beers#show'
            patch '/beers/:id' => 'beers#update'
        end
    end
end
