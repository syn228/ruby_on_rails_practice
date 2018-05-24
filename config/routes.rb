Rails.application.routes.draw do

  get '/foods/newf', to: 'foods#newf', as:'newfood'

  resources :kitchens
  resources :users
  resources :fridges
  resources :foods

  get '/', to: 'generals#root', as: "home"
  get '/contact', to: 'generals#contact', as: "contact"

  post '/generals', to: 'generals#email', as: 'email'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
