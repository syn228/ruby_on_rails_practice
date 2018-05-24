Rails.application.routes.draw do

  get '/foods/newf', to: 'foods#newf', as:'newfood'

  resources :kitchens
  resources :users
  resources :fridges
  resources :foods

  get '/', to: 'foods#root'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
