Rails.application.routes.draw do
  get '/' => 'home#top'
  get '/terms_of_service' => 'home#terms'
  get '/privacy_policy' => 'home#privacy'
  get '/login' => 'users#login'
  post '/login' => 'users#login'
  get '/new' => 'users#new'
  get '/create' => 'users#create'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

