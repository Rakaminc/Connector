Rails.application.routes.draw do
  get '/new' => 'users#new'
  get '/' => 'home#top'
  get 'login' => 'home#login'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
