Rails.application.routes.draw do
  get '/' => 'home#top'
  get '/login' => 'users#login'
  post '/login' => 'users#login'
  get '/new' => 'users#new'
  post '/new' => 'users#create'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
