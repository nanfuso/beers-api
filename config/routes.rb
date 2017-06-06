Rails.application.routes.draw do
  get '/beers' => 'beers#index'
  post '/beers' => 'beers#create'
  get '/beers/:id' => 'beers#show'
  patch '/beers/:id' => 'beers#update'
end
