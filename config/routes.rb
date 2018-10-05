Rails.application.routes.draw do
  get '/' => 'home#top'
  get '/new_acount' => 'home#new_acount'
  get 'login' => 'home#login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
